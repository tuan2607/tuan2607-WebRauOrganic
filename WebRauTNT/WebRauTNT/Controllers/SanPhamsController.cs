using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.VisualStudio.Services.WebApi;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebRauTNT.Models;

namespace WebRauTNT.Controllers
{
    public class SanPhamsController : Controller
    {
        private WebRauTNTContext db = new WebRauTNTContext();
        private ApplicationDbContext data = new ApplicationDbContext();
        // GET: SanPhams
/*        public ActionResult Index()
        {
            return View();
        }*/

        // GET: SanPhams
        public ActionResult Index(int? page, string searchString)
        {
            ViewBag.Keyword = searchString;
            var loaiSP = db.LoaiSP.ToList();
            //if (page == null) page = 1;
            //var all_sanPham = (from s in db.SanPham select s).OrderBy(m => m.MaSP);
            int pageSize = 12;
            int pageNum = page ?? 1;
            SanPhamViewModel sp = new SanPhamViewModel
            {

                LoaiSPs = loaiSP,
                //SanPhams = (PagedList<SanPham>)all_sanPham.ToPagedList(pageNum, pageSize)
                // SanPhams = (PagedList<SanPham>)SanPham.getAll(searchString).ToPagedList(pageNum, pageSize)
                SanPhams = (PagedList.PagedList<SanPham>)SanPham.getAll(searchString).ToPagedList(pageNum, pageSize)
            };

            //ViewBag.AllProduct = all_sanPham.ToPagedList(pageNum, pageSize);

            return View(sp);
        }


        // GET: SanPhams/Details/5
        public ActionResult Details(int? id, int? page)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            foreach (var i in sanPham.BinhLuan)
            {
                ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(i.MaKH);
                i.Name = user.UserName;
            }
            int pageSize = 5;
            int pageNum = page ?? 1;
            SanPhamDetailModel sp = new SanPhamDetailModel
            {
                SanPham = sanPham,
                //BinhLuans = (PagedList<BinhLuan>)sanPham.BinhLuan.ToPagedList(pageNum, pageSize)
                BinhLuans = (PagedList.PagedList<BinhLuan>)sanPham.BinhLuan.ToPagedList(pageNum, pageSize)
            };
            return View(sp);
        }
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(int id)
        {
            BinhLuansController addbinhluan = new BinhLuansController();
            BinhLuan binhLuan = new BinhLuan();
            string content = Request["txtContent"].ToString() + " ";
            if (content == " ")
            {
                return RedirectToAction("Details");
            }
            //addbinhluan.Create(content, id, binhLuan);
            return RedirectToAction("Details");
        }
    }
}