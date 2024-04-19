using Microsoft.AspNetCore.Mvc;
using PagedList;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.ModelViews;
using TourDemo.Models.System;

namespace TourDemo.Controllers
{
	public class DatTourController : Controller
	{
		private ApplicationDbContext _db;
		public DatTourController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.datTours.ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.Maphieudat.ToString().Trim().ToLower().Contains(filter.Keyword.Trim().ToLower())).ToList();
			}

			return View(models.OrderByDescending(x => x.Ngaydattour).ToPagedList(filter.PageIndex, filter.PageSize));
		}

        public TourView GetTour(int id)
        {
            var model = (from tour in _db.tours
                         join nv in _db.nhanViens on tour.MaNV equals nv.MaNV
                         join km in _db.khuyenMais on tour.MaKM equals km.MaKM
                         join loai in _db.loaiTours on tour.Maloaitour equals loai.Maloaitour
                         where tour.Matour == id
                         select new TourView
                         {
                             Matour = tour.Matour,
                             Maloaitour = tour.Maloaitour,
                             Giatour = tour.Giatour,
                             Hinhanh = tour.Hinhanh,
                             MaKM = tour.MaKM,
                             MaNV = tour.MaNV,
                             Songaydi = tour.Songaydi,
                             Tentour = tour.Tentour,
                             Phantram = km.Phantram,
                             TenKM = km.TenKM,
                             Tenloaitour = loai.Tenloai,
                             TenNV = nv.Hoten,
                             Giagiam = tour.Giatour - (tour.Giatour * km.Phantram / 100),
                             Gioithieu = tour.Gioithieu
                         }).FirstOrDefault();

            if (model != null)
                return model;
            return new TourView();
        }

        public IActionResult Detail(int id)
		{
            ThanhToan model = new ThanhToan();
            var dattour = _db.datTours.Find(id);
            model.DatTour = dattour;
            var chitiet = _db.chiTietDatTours.Where(t => t.Maphieudat == id).ToList();
            var khach = _db.khachHangs.Find(chitiet.First().Makhach);
            model.KhachHang = khach;
            model.ChiTietDatTours = chitiet;
            ViewBag.Tour = GetTour(dattour.MaTour);

            return View(model);
        }

        public IActionResult Status(int id, int status)
        {
			var model = _db.datTours.Find(id);
			switch (status)
			{
				case -1:
					{
                        model.Trangthaithanhtoan = false;
						model.Trangthai = "Đã hủy";
                        break;
					}
				case 1:
					{
						model.Trangthaithanhtoan = true;
						model.Trangthai = "Đã khởi hành";
                        break;
					}
				case 2:
					{
                        model.Trangthai = "Đã hoàn thành";
                        break;
					}
			}

			_db.datTours.Update(model);
			_db.SaveChanges();

            return RedirectToAction("Index", "DatTour");
        }
    }
}
