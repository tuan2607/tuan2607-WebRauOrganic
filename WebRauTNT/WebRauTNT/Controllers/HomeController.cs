using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebRauTNT.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
namespace WebRauTNT.Controllers
{
    public class HomeController : Controller
    {
        /*        public ActionResult Index()
                {
                    return View();
                }

                public ActionResult About()
                {
                    ViewBag.Message = "Your application description page.";

                    return View();
                }

                public ActionResult Contact()
                {
                    ViewBag.Message = "Your contact page.";

                    return View();
                }*/

        private WebRauTNTContext db = new WebRauTNTContext();

        public ActionResult Index()
        {
            var sanpham = db.SanPham.Include(s => s.LoaiSP);
            return View(sanpham.ToList());
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Blog()
        {
            return View();
        }
        public ActionResult BlogDetails()
        {
            return View();
        }
        public ActionResult Checkout()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult ShopDetails()
        {
            return View();
        }
        public ActionResult ShopGrid()
        {
            return View();
        }
        public ActionResult ShopCart()
        {
            return View();
        }
    }
}