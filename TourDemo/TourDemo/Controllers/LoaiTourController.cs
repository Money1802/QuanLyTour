using Microsoft.AspNetCore.Mvc;
using TourDemo.Data;
using PagedList;
using TourDemo.Models.System;
using TourDemo.Models;

namespace TourDemo.Controllers
{
	public class LoaiTourController : Controller
	{
		private ApplicationDbContext _db;
		public LoaiTourController (ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.loaiTours.ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.Tenloai.Trim().ToLower().Contains(filter.Keyword.Trim().ToLower())).ToList();
			}

			return View(models.OrderByDescending(x => x.Maloaitour).ToPagedList(filter.PageIndex, filter.PageSize));
		}

		public IActionResult Create()
		{
			return View();
		}

		[HttpPost]
		public IActionResult Create(LoaiTour model) {
			if (ModelState.IsValid)
			{
				var models = _db.loaiTours.ToList().Where(t=>t.Tenloai.ToLower().Trim() == model.Tenloai.ToLower().Trim());
				if(models.Count() > 0)
				{
					ModelState.AddModelError("Tenloai", "Tên loại đã tồn tại!!!");
					return View(model);
				}

				_db.loaiTours.Add(model);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}

			return View(model);
		}

		public IActionResult Edit(int id)
		{
			var model = _db.loaiTours.Find(id);
			if (model == null)
			{
				return RedirectToAction("Index");
			}

			return View(model);
		}

		[HttpPost]
		public IActionResult Edit(LoaiTour model, int id)
		{
			var modelInit = _db.loaiTours.Find(id);
			if (ModelState.IsValid)
			{
				if(modelInit.Tenloai != model.Tenloai)
				{
					var models = _db.loaiTours.ToList().Where(t => t.Tenloai.ToLower().Trim() == model.Tenloai.ToLower().Trim());
					if (models.Count() > 0)
					{
						ModelState.AddModelError("Tenloai", "Tên loại đã tồn tại!!!");
						return View(model);
					}
				}

				modelInit.Tenloai = model.Tenloai;

				_db.loaiTours.Update(modelInit);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}
			return View(model);
		}

		public IActionResult Delete(int id)
		{
			var modelInit = _db.loaiTours.Find(id);
			if (modelInit == null)
			{
				return RedirectToAction("Index");
			}

			var tours = _db.tours.Where(t => t.Maloaitour == modelInit.Maloaitour).ToList();
			var dats = _db.datTours.Where(t => tours.Select(t => t.Matour).Contains(t.MaTour)).ToList();
			var chitiets = _db.chiTietDatTours.Where(t => dats.Select(x => x.Maphieudat).Contains(t.Maphieudat)).ToList();

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

			foreach (var t in tours)
			{
				_db.tours.Remove(t);
				_db.SaveChanges();
			}

			_db.loaiTours.Remove(modelInit);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}
	}
}
