using DataManager.Models;
using Microsoft.AspNetCore.Mvc;
using PagedList;
using System.Linq;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.ModelViews;
using TourDemo.Models.System;

namespace TourDemo.Controllers
{
	public class TourController : Controller
	{
		private ApplicationDbContext _db;
		public TourController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models =  (from tour in _db.tours
						 join nv in _db.nhanViens on tour.MaNV equals nv.MaNV
						 join km in _db.khuyenMais on tour.MaKM equals km.MaKM
						 join loai in _db.loaiTours on tour.Maloaitour equals loai.Maloaitour
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
							 Giagiam = tour.Giatour - (tour.Giatour * km.Phantram / 100)
						 }).ToList();

			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.Tentour.ToLower().Trim().Contains(filter.Keyword.ToLower().Trim())).ToList();
			}

			if(filter.MoneyStart != 0 || filter.MoneyEnd != 0)
			{
				models = models.Where(t=> t.Giatour >= filter.MoneyStart && t.Giatour <= filter.MoneyEnd ).ToList();
			}	

			return View(models.OrderByDescending(x => x.Maloaitour).ToPagedList(filter.PageIndex, filter.PageSize));
		}

		[HttpGet]
		public IActionResult Create()
		{
			ViewBag.KMs = _db.khuyenMais.ToList();
			ViewBag.NVs = _db.nhanViens.Where(t=>t.Chucvu == "Hướng dẫn viên").ToList();
			ViewBag.Loais = _db.loaiTours.ToList();

			var model = new Tour();	
			return View(model);
		}

		[HttpPost]
		public IActionResult Create(Tour model)
		{	
			ViewBag.KMs = _db.khuyenMais.ToList();
			ViewBag.NVs = _db.nhanViens.Where(t => t.Chucvu == "Hướng dẫn viên").ToList();
			ViewBag.Loais = _db.loaiTours.ToList();

			if (ModelState.IsValid)
			{
				var models = _db.tours.ToList().Where(t => t.Tentour.ToLower().Trim() == model.Tentour.ToLower().Trim());
				if (models.Count() > 0)
				{
					ModelState.AddModelError("Tentour", "Tên tour đã tồn tại!!!");
					return View(model);
				}

				if(model.Songaydi <= 0)
				{
					ModelState.AddModelError("Songaydi", "Số ngày đi phải lớn hơn 0!!!");
					return View(model);
				}

				if (model.Giatour <= 0)
				{
					ModelState.AddModelError("Giatour", "Gía tour phải lớn hơn 0!!!");
					return View(model);
				}

				if (!string.IsNullOrEmpty(model.Upload.Base64))
				{
					UploadModel uploadModel = TourDemo.Module.Util.UploadFile(Directory.GetCurrentDirectory() + "\\wwwroot", model.Upload.Base64, model.Upload.Name);
					if (!uploadModel.Success)
					{
						ModelState.AddModelError("Hinhanh", "Lỗi thêm file!!!");
						return View(model);
					}
					model.Hinhanh = uploadModel.Path;
				}

				_db.tours.Add(model);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}

			return View(model);
		}


		[HttpGet]
		public IActionResult Edit(int id)
		{
			ViewBag.KMs = _db.khuyenMais.ToList();
			ViewBag.NVs = _db.nhanViens.Where(t => t.Chucvu == "Hướng dẫn viên").ToList();
			ViewBag.Loais = _db.loaiTours.ToList();

			var model = _db.tours.Find(id);
			return View(model);
		}

		[HttpPost]
		public IActionResult Edit(Tour model, int id)
		{
			ViewBag.KMs = _db.khuyenMais.ToList();
			ViewBag.NVs = _db.nhanViens.Where(t => t.Chucvu == "Hướng dẫn viên").ToList();
			ViewBag.Loais = _db.loaiTours.ToList();

			if (ModelState.IsValid)
			{
				var modelInit = _db.tours.Find(id);

				var models = _db.tours.ToList().Where(t => t.Tentour.ToLower().Trim() == model.Tentour.ToLower().Trim()).FirstOrDefault();
				if(modelInit.Tentour != model.Tentour)
				{
					if (models != null)
					{
						ModelState.AddModelError("Tentour", "Tên tour đã tồn tại!!!");
						return View(model);
					}
				}	

				if (model.Songaydi <= 0)
				{
					ModelState.AddModelError("Songaydi", "Số ngày đi phải lớn hơn 0!!!");
					return View(model);
				}

				if (model.Giatour <= 0)
				{
					ModelState.AddModelError("Giatour", "Gía tour phải lớn hơn 0!!!");
					return View(model);
				}

				if(modelInit.Hinhanh != model.Hinhanh)
				{
					if (!string.IsNullOrEmpty(model.Upload.Base64))
					{
						UploadModel uploadModel = TourDemo.Module.Util.UploadFile(Directory.GetCurrentDirectory() + "\\wwwroot", model.Upload.Base64, model.Upload.Name);
						if (!uploadModel.Success)
						{
							ModelState.AddModelError("Hinhanh", "Lỗi thêm file!!!");
							return View(model);
						}
						modelInit.Hinhanh = uploadModel.Path;
					}
				}

				modelInit.Tentour = model.Tentour;
				modelInit.Songaydi = model.Songaydi;
				modelInit.Giatour = model.Giatour;
				modelInit.MaNV = model.MaNV;
				modelInit.MaKM = model.MaKM;
				modelInit.Maloaitour = model.Maloaitour;
				modelInit.Gioithieu = model.Gioithieu;

				_db.tours.Update(modelInit);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}

			return View(model);
		}

		public IActionResult Delete(int id)
		{
			var model = _db.tours.Find(id);

			var dats = _db.datTours.Where(t => t.MaTour == model.Matour).ToList();
			var chitiets = _db.chiTietDatTours.Where(t => dats.Select(x=>x.Maphieudat).Contains(t.Maphieudat)).ToList();

			foreach (var chiet in chitiets)
			{
				_db.chiTietDatTours.Remove(chiet);
				_db.SaveChanges();
			}

			foreach (var dat in dats)
			{
				_db.datTours.Remove(dat);
				_db.SaveChanges();
			}

			_db.tours.Remove(model);
			_db.SaveChanges();

			return RedirectToAction("Index");
		}
	}
}
