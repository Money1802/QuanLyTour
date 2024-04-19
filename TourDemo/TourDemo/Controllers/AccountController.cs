	using Microsoft.AspNetCore.Mvc;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.ModelViews;

namespace TourDemo.Controllers
{
	public class AccountController : Controller
	{
        private ApplicationDbContext _db;
        public AccountController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
		{
			return View();
		}

        public IActionResult LogOut()
        {
            HttpContext.Session.Remove("taikhoan");
            HttpContext.Session.Remove("quyen");
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
		public IActionResult Login()
		{
			var model = new TaiKhoanKhach();
			return View(model);
		}

		[HttpPost]
		public IActionResult Login(TaiKhoanKhach model)
		{
			if (ModelState.IsValid)
			{
                var models = _db.taiKhoanKhachs.Where(t => t.TenDN == model.TenDN && t.MatkhauDN == model.MatkhauDN).FirstOrDefault();
				if(models != null)
				{
                    HttpContext.Session.SetString("quyen", "khachhang");
                    HttpContext.Session.SetString("taikhoan", models.TenDN);
                    return RedirectToAction("Index", "Home");
				}	
				
			}

            ModelState.AddModelError("MatkhauDN", "Tài khoản và mật khẩu không đúng!!!");
            return View(model);
		}

		[HttpGet]
		public IActionResult Register()
		{
			var model = new CreateTaiKhoanKhach();
			return View(model);
		}

		[HttpPost]
		public IActionResult Register(CreateTaiKhoanKhach model)
		{
			if(ModelState.IsValid)
			{
			    var checkEmail = _db.khachHangs.Where(t=>t.Email == model.KhachHang.Email).FirstOrDefault();
				if(checkEmail != null)
				{
                    ModelState.AddModelError("KhachHang.Email", "Email đã tồn tại!!!");
                    return View(model);
                }

				var checlTenDN = _db.taiKhoanKhachs.Where(t=>t.TenDN == model.TaiKhoanKhach.TenDN).FirstOrDefault();
				if(checlTenDN != null)
				{
                    ModelState.AddModelError("TaiKhoanKhach.TenDN", "Tên đăng nhập đã tồn tại đã tồn tại!!!");
                    return View(model);
                }

				if(model.TaiKhoanKhach.MatkhauDN != model.TaiKhoanKhach.NhapLaiMK)
				{
                    ModelState.AddModelError("TaiKhoanKhach.NhapLaiMK", "Mật khẩu không khớp!!!");
                    return View(model);
                }

				_db.khachHangs.Add(model.KhachHang);
				_db.SaveChanges();

                model.TaiKhoanKhach.Makhach = model.KhachHang.Makhach;

                _db.taiKhoanKhachs.Add(model.TaiKhoanKhach);
                _db.SaveChanges();

                return RedirectToAction("Login", "Account");
            }	

			return View(model);
		}


		[HttpGet]
		public IActionResult LoginAdmin()
		{
			var model = new TaiKhoan();

			return View(model);
		}

		[HttpPost]
		public IActionResult LoginAdmin(TaiKhoan model)
		{
            if (ModelState.IsValid)
			{
                var checkQuyenAdmin = _db.quyens.Where(T => T.Tenquyen == "admin").FirstOrDefault();
                if (checkQuyenAdmin != null)
                {
                    var checkAdmin = _db.taiKhoans.Where(t => t.TenDN.Trim().ToLower() == model.TenDN.Trim().ToLower() && t.MatkhauDN == model.MatkhauDN).FirstOrDefault();
                    if (checkAdmin != null)
                    {
                        if (checkAdmin.Loaiquyen == checkQuyenAdmin.Loaiquyen)
                        {
                            HttpContext.Session.SetString("quyen", "admin");
                            HttpContext.Session.SetString("taikhoan", checkAdmin.TenDN);
                            return RedirectToAction("Index", "Dashboard");
                        }
						else
						{
                            HttpContext.Session.SetString("quyen", "nhanvien");
                            HttpContext.Session.SetString("taikhoan", checkAdmin.TenDN);
                            return RedirectToAction("Index", "Dashboard");
                        }	
                    }
                }
            }

            ModelState.AddModelError("MatkhauDN", "Tài khoản và mật khẩu không đúng!!!");
            return View(model);
		}


	}	
}
