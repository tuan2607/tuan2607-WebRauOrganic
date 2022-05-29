﻿using BoNuong.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebRauTNT.Models;
using WebRauTNT.Models.LinQ;

namespace WebRauTNT.Controllers
{
    public class DonHangController : Controller
    {
        private WebRauTNTContext db = new WebRauTNTContext();
        private MyDataDataContext data = new MyDataDataContext();
        private ApplicationDbContext dataUser = new ApplicationDbContext();

        // GET: DonHangs
        public ActionResult Index(int? page)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            var all_donHang = data.DonHangs.ToList();
            int pageSize = 10;
            int pageNum = page ?? 1;
            return View(all_donHang.ToPagedList(pageNum, pageSize));
        }

        // GET: DonHangs/Details/5
        public ActionResult Details(int? id)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.LinQ.DonHang donHang = data.DonHangs.FirstOrDefault(d => d.MaDH == id);
            if (donHang == null)
            {
                return HttpNotFound();
            }
            List<Models.LinQ.ChiTietDonHang> ctdh = data.ChiTietDonHangs.Where(c => c.MaDH == donHang.MaDH).ToList();
            DonHangViewModel donHangViewModel = new DonHangViewModel()
            {
                DonHang = donHang,
                CTDH = ctdh
            };
            return View(donHangViewModel);
        }

        // GET: DonHangs/Create
        public ActionResult Create()
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            ViewBag.MaKH = new SelectList(data.AspNetUsers, "Id", "Email");
            return View();
        }

        // POST: DonHangs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDH,TrangThaiGiaoHang,NgayDat,NgayGiao,MaKH")] Models.DonHang donHang)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            if (ModelState.IsValid)
            {
                db.DonHang.Add(donHang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(donHang);
        }

        public ActionResult EditTT(int id, FormCollection collection)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            Models.DonHang donHang = db.DonHang.Find(id);
            if (donHang != null)
            {
                if (collection["item.TrangThaiGiaoHang"].ToString() == "true")
                    donHang.TrangThaiGiaoHang = true;
                else
                    donHang.TrangThaiGiaoHang = false;
                Edit(donHang);
            }
            return RedirectToAction("Index");
        }
        // GET: DonHangs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.DonHang donHang = db.DonHang.Find(id);
            if (donHang == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaKH = new SelectList(data.AspNetUsers, "Id", "Email");
            return View(donHang);
        }

        // POST: DonHangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDH,TrangThaiGiaoHang,NgayDat,NgayGiao,MaKH")] Models.DonHang donHang)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            if (ModelState.IsValid)
            {
                db.Entry(donHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(donHang);
        }

        // GET: DonHangs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.LinQ.DonHang donHang = data.DonHangs.FirstOrDefault(d => d.MaDH == id);
            if (donHang == null)
            {
                return HttpNotFound();
            }
            return View(donHang);
        }

        // POST: DonHangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            Models.DonHang donHang = db.DonHang.Find(id);
            db.DonHang.Remove(donHang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult DoanhThu(int? page)
        {
            if (!AuthAdmin())
                return RedirectToAction("Error401", "Admin");
            var ngayDat = data.DonHangs.Select(d => d.NgayDat).Distinct().ToArray();
            var thangNam = new List<DateTime>
            {
                ngayDat[0].Value
            };
            for (var i = 1; i < ngayDat.Length; i++)
            {
                for (var j = 0; j < thangNam.Count; j++)
                {
                    if (thangNam[j].Month != ngayDat[i].Value.Month || thangNam[j].Year != ngayDat[i].Value.Year)
                        thangNam.Add(ngayDat[i].Value);
                }
            }
            var result = new List<double>();
            double total = 0;
            for (var i = 0; i < thangNam.Count; i++)
            {
                var tienThang = data.DonHangs.Where(d => thangNam[i].Month == d.NgayDat.Value.Month && thangNam[i].Year == d.NgayDat.Value.Year).Select(d => d.TongTien).Sum();
                result.Add((double)tienThang);
                total += (double)tienThang;
            }
            int pageSize = 10;
            int pageNum = page ?? 1;
            var viewModel = new DoanhThuViewModel()
            {
                ThangNam = (PagedList<DateTime>)thangNam.ToPagedList(pageNum, pageSize),
                Result = result,
                Total = total
            };
            return View(viewModel);
        }

        public bool AuthAdmin()
        {
            var user = dataUser.Users.FirstOrDefault(u => u.UserName == User.Identity.Name);
            if (user == null)
                return false;
            var userExist = user.Roles.FirstOrDefault(r => r.UserId == user.Id);
            if (userExist == null)
                return false;
            if (userExist.RoleId != "1")
                return false;
            return true;
        }
    }
}