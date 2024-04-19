using Microsoft.AspNetCore.Mvc;
using PagedList;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.System;

namespace TourDemo.Controllers
{
	public class KhuyenMaiController : Controller
	{
		private ApplicationDbContext _db;
		public KhuyenMaiController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.khuyenMais.ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.TenKM.Trim().ToLower().Contains(filter.Keyword.Trim().ToLower())).ToList();
			}

			return View(models.OrderByDescending(x => x.TenKM).ToPagedList(filter.PageIndex, filter.PageSize));
		}

		[HttpGet]
		public IActionResult Create()
		{
			var model = new KhuyenMai();
			return View(model);
		}

		[HttpPost]
		public IActionResult Create(KhuyenMai model)
		{
			if (ModelState.IsValid)
			{
				var check = _db.khuyenMais.Where(t=>t.TenKM.ToLower().Trim() == model.TenKM.ToLower().Trim()).FirstOrDefault();
				if(check != null)
				{
					ModelState.AddModelError("TenKM", "Tên khuyến mãi đã tồn tại!!!");
					return View(model);
				}	

				if(model.Phantram < 0 || model.Phantram > 100)
				{
					ModelState.AddModelError("Phantram", "Phần trăm phải lớn hơn 0 và bé hơn 100!!!");
					return View(model);
				}

				if (model.Ngaybatdau.Year < DateTime.Now.Year)
				{
					ModelState.AddModelError("Ngaybatdau", "Ngày bắt đầu phải lớn hơn hoặc bằng năm hiện tại!!");
					return View(model);
				}

				if (model.Ngayketthuc.Year < DateTime.Now.Year)
				{
					ModelState.AddModelError("Ngayketthuc", "Ngày kết thúc phải lớn hơn hoặc bằng năm hiện tại!!");
					return View(model);
				}

				if(model.Ngaybatdau >= model.Ngayketthuc)
				{
					ModelState.AddModelError("Ngaybatdau", "Ngày kết thúc phải lớn hơn ngày bắt đầu!!");
					return View(model);
				}	

				_db.khuyenMais.Add(model);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}
			return View(model);
		}

		[HttpGet]
		public IActionResult Edit(int id)
		{
			var model = _db.khuyenMais.Find(id);
			return View(model);
		}

		[HttpPost]
		public IActionResult Edit(KhuyenMai model, int id)
		{
			if (ModelState.IsValid)
			{
				var modelInit = _db.khuyenMais.Find(id);

				if (model.TenKM != modelInit.TenKM)
				{
					var check = _db.khuyenMais.Where(t => t.TenKM.ToLower().Trim() == model.TenKM.ToLower().Trim()).FirstOrDefault();
					if (check != null)
					{
						ModelState.AddModelError("TenKM", "Tên khuyến mãi đã tồn tại!!!");
						return View(model);
					}
				}

				if (model.Phantram < 0 || model.Phantram > 100)
				{
					ModelState.AddModelError("Phantram", "Phần trăm phải lớn hơn 0 và bé hơn 100!!!");
					return View(model);
				}

				if (model.Ngaybatdau.Year < DateTime.Now.Year)
				{
					ModelState.AddModelError("Ngaybatdau", "Ngày bắt đầu phải lớn hơn hoặc bằng năm hiện tại!!");
					return View(model);
				}

				if (model.Ngayketthuc.Year < DateTime.Now.Year)
				{
					ModelState.AddModelError("Ngayketthuc", "Ngày kết thúc phải lớn hơn hoặc bằng năm hiện tại!!");
					return View(model);
				}

				if (model.Ngaybatdau >= model.Ngayketthuc)
				{
					ModelState.AddModelError("Ngaybatdau", "Ngày kết thúc phải lớn hơn ngày bắt đầu!!");
					return View(model);
				}

				modelInit.TenKM = model.TenKM;
				modelInit.Phantram = model.Phantram;
				modelInit.Ngayketthuc = model.Ngayketthuc;
				modelInit.Ngaybatdau = model.Ngaybatdau;

				_db.khuyenMais.Update(modelInit);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}
			return View(model);
		}

		public IActionResult Delete(int id)
		{
			var modelInit = _db.khuyenMais.Find(id);
			if (modelInit == null)
			{
				return RedirectToAction("Index");
			}

			var tours = _db.tours.Where(t => t.MaKM == modelInit.MaKM).ToList();
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

			_db.khuyenMais.Remove(modelInit);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}
	}
}
