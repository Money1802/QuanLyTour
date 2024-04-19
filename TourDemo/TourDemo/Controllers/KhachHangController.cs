using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using PagedList;
using TourDemo.Data;
using TourDemo.Models.System;
using TourDemo.Module;

namespace TourDemo.Controllers
{
	public class KhachHangController : Controller
	{
		private ApplicationDbContext _db;
		public KhachHangController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.khachHangs.ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.HoTen.Trim().ToLower().Contains(filter.Keyword.Trim().ToLower()) || t.Email.Trim().ToLower().Contains(filter.Keyword.Trim().ToLower())).ToList();
			}

			return View(models.OrderByDescending(x => x.HoTen).ToPagedList(filter.PageIndex, filter.PageSize));
		}

		public IActionResult Detail(int id)
		{
			var model = _db.khachHangs.Find(id);
			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};
			return View(model);
		}

		public IActionResult ResetPassword(int id)
		{
			var model = _db.khachHangs.Find(id);
			if (model == null)
			{
				return RedirectToAction("Index");
			}

			var taikhoan = _db.taiKhoanKhachs.Where(t=>t.Makhach == model.Makhach).FirstOrDefault();
			if (taikhoan == null)
			{
				return RedirectToAction("Index");
			}

			Random rnd = new Random();
			int pass = rnd.Next(100000, 999999);

			var body = "<p>Kính chào anh chị;<p> <br>" 
				+ " <span> TourDemo xin cấp lại tài khoản và mật khẩu </span> <br> " 
				+ " <span> Tài khoản: " + taikhoan.TenDN + " </span> <br>"
				+ "<span> Mật khẩu mới: " + pass + " </span> <br>"
				+ "<span> Trân trọng. </span>";

			SendEmail.systemSendEmail(model.Email, "Cấp lại mật khẩu", body);

			taikhoan.MatkhauDN = pass.ToString();

			_db.taiKhoanKhachs.Update(taikhoan);
			_db.SaveChanges();

			return RedirectToAction("Index");
		}
	}
}
