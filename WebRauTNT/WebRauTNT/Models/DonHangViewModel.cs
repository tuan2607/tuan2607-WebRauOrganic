using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BoNuong.Models
{
    public class DonHangViewModel
    {
        public WebRauTNT.Models.LinQ.DonHang DonHang { get; set; }
        public List<WebRauTNT.Models.LinQ.ChiTietDonHang> CTDH { get; set; }
    }
}