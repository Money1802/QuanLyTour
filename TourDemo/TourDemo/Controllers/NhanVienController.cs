using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using PagedList;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.ModelViews;
using TourDemo.Models.System;
using TourDemo.Module;

namespace TourDemo.Controllers
{
	public class NhanVienController : Controller
	{
		private ApplicationDbContext _db;
		public NhanVienController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.nhanViens.Where(t=>t.Chucvu != "Quản trị viên").ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.Hoten.Trim().ToLower().Contains(filter.Keyword.Trim().ToLower())).ToList();
			}

			return View(models.OrderByDescending(x => x.Hoten).ToPagedList(filter.PageIndex, filter.PageSize));
		}

		[HttpGet]
		public IActionResult Create()
		{
			ViewBag.CVs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
				new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
				new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
			};

			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};

			return View(new NhanVien());
		}

		[HttpPost]
		public IActionResult Create(NhanVien model)
		{
			ViewBag.CVs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
				new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
				new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
			};

			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};

			if (ModelState.IsValid)
			{
				var model1s = _db.nhanViens.ToList().Where(t => t.CCCD.ToLower().Trim() == model.CCCD.ToLower().Trim());
				if (model1s.Count() > 0)
				{
					ModelState.AddModelError("CCCD", "CCCD đã tồn tại!!!");
					return View(model);
				}

				var model2s = _db.nhanViens.ToList().Where(t => t.Email.ToLower().Trim() == model.Email.ToLower().Trim());
				if (model2s.Count() > 0)
				{
					ModelState.AddModelError("Email", "Email đã tồn tại!!!");
					return View(model);
				}

				if (model.NgaySinh.Year < 1975)
				{
					ModelState.AddModelError("NgaySinh", "Ngày sinh phải lớn hơn 1975!!!");
					return View(model);
				}
				if ((DateTime.Now.Year - model.NgaySinh.Year) < 18)
				{
					ModelState.AddModelError("NgaySinh", "Ngày sinh phải lớn hơn 18 tuổi!!!");
					return View(model);
				}

				_db.nhanViens.Add(model);
				_db.SaveChanges();

                Random rnd = new Random();
                int pass = rnd.Next(100000, 999999);

                TaiKhoan newTK = new TaiKhoan()
				{
					TenDN = model.Email,
					MaNV = model.MaNV,
					MatkhauDN = pass.ToString(),
					Loaiquyen = 2,
                };

                var body = "<p>Kính chào anh chị;<p> <br>"
                + " <span> TourDemo xin cấp tài khoản và mật khẩu </span> <br> "
                + " <span> Tài khoản: " + newTK.TenDN + " </span> <br>"
                + "<span> Mật khẩu: " + pass + " </span> <br>"
                + "<span> Trân trọng. </span>";

                SendEmail.systemSendEmail(model.Email, "Cấp mật khẩu đăng nhập", body);

                _db.taiKhoans.Add(newTK);
                _db.SaveChanges();

                return RedirectToAction("Index");
			}

			return View(model);
		}

		[HttpGet]
		public IActionResult Edit(int id)
		{
			ViewBag.CVs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
				new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
				new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
			};

			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};

			var model = _db.nhanViens.Find(id);
			return View(model);
		}

		[HttpPost]
		public IActionResult Edit(NhanVien model, int id)
		{
			ViewBag.CVs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
				new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
				new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
			};

			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};

			var modelInit = _db.nhanViens.Find(id);

			if (ModelState.IsValid)
			{
				if(modelInit.CCCD != model.CCCD)
				{
					var model1s = _db.nhanViens.ToList().Where(t => t.CCCD.ToLower().Trim() == model.CCCD.ToLower().Trim());
					if (model1s.Count() > 0)
					{
						ModelState.AddModelError("CCCD", "CCCD đã tồn tại!!!");
						return View(model);
					}
				}

				if(modelInit.Email != model.Email)
				{
					var model2s = _db.nhanViens.ToList().Where(t => t.Email.ToLower().Trim() == model.Email.ToLower().Trim());
					if (model2s.Count() > 0)
					{
						ModelState.AddModelError("Email", "Email đã tồn tại!!!");
						return View(model);
					}
				}
				if (model.NgaySinh.Year < 1975)
				{
					ModelState.AddModelError("NgaySinh", "Ngày sinh phải lớn hơn 1975!!!");
					return View(model);
				}

				if(modelInit.Email != model.Email)
				{ 
					var tk = _db.taiKhoans.Where(t=>t.MaNV == modelInit.MaNV).FirstOrDefault();

					if(tk != null)
					{
						tk.TenDN = model.Email;

						_db.taiKhoans.Update(tk);
						_db.SaveChanges();
					}	
					else
					{
                        Random rnd = new Random();
                        int pass = rnd.Next(100000, 999999);

                        TaiKhoan newTK = new TaiKhoan()
                        {
                            TenDN = model.Email,
                            MaNV = model.MaNV,
                            MatkhauDN = pass.ToString(),
                            Loaiquyen = 2,
                        };

                        var body = "<p>Kính chào anh chị;<p> <br>"
                        + " <span> TourDemo xin cấp tài khoản và mật khẩu </span> <br> "
                        + " <span> Tài khoản: " + newTK.TenDN + " </span> <br>"
                        + "<span> Mật khẩu: " + pass + " </span> <br>"
                        + "<span> Trân trọng. </span>";

                        SendEmail.systemSendEmail(model.Email, "Cấp mật khẩu đăng nhập", body);

                        _db.taiKhoans.Add(newTK);
                        _db.SaveChanges();
                    }	
				}	

				modelInit.Hoten = model.Hoten;
				modelInit.CCCD = model.CCCD;
				modelInit.Email = model.Email;
				modelInit.NgaySinh = model.NgaySinh;
				modelInit.Chucvu = model.Chucvu;
				modelInit.Diachi = model.Diachi;
				modelInit.Dienthoai = model.Dienthoai;
				modelInit.Gioitinh = model.Gioitinh;

				_db.nhanViens.Update(modelInit);
				_db.SaveChanges();

				return RedirectToAction("Index");
			}

			return View(model);
		}

		public IActionResult Delete(int id)
		{
			var modelInit = _db.nhanViens.Find(id);
			if (modelInit == null)
			{
				return RedirectToAction("Index");
			}

			var tours = _db.tours.Where(t=>t.MaNV == modelInit.MaNV).ToList();
			var dats = _db.datTours.Where(t => tours.Select(t=>t.Matour).Contains(t.MaTour)).ToList();
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

			_db.nhanViens.Remove(modelInit);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}

        [HttpGet]
        public IActionResult Profile()
        {
            string user = HttpContext.Session.GetString("taikhoan");
            NhanVien nhanvien = new NhanVien();

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("LoginAdmin", "Account");
            }

            var taikhoan = _db.taiKhoans.Where(t => t.TenDN == user).FirstOrDefault();
            nhanvien = _db.nhanViens.Find(taikhoan.MaNV);
            ViewBag.GTs = new List<SelectListItem>()
            {
                new SelectListItem() { Text= "Nam", Value = "Nam" },
                new SelectListItem() { Text= "Nữ", Value = "Nữ" },
            };
            ViewBag.CVs = new List<SelectListItem>()
            {
                new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
                new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
                new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
            };
            return View(nhanvien);
        }

        [HttpPost]
        public IActionResult Profile(NhanVien model)
        {
            string user = HttpContext.Session.GetString("taikhoan");
            NhanVien nhanvien = new NhanVien();

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("LoginAdmin", "Account");
            }

            var taikhoan = _db.taiKhoans.Where(t => t.TenDN == user).FirstOrDefault();
            nhanvien = _db.nhanViens.Find(taikhoan.MaNV);

            ViewBag.GTs = new List<SelectListItem>()
            {
                new SelectListItem() { Text= "Nam", Value = "Nam" },
                new SelectListItem() { Text= "Nữ", Value = "Nữ" },
            };
            ViewBag.CVs = new List<SelectListItem>()
            {
                new SelectListItem() { Text= "Hướng dẫn viên", Value ="Hướng dẫn viên" },
                new SelectListItem() { Text= "Phó phòng", Value ="Phó phòng" },
                new SelectListItem() { Text= "Trưởng phòng", Value ="Trưởng phòng" },
            };

            if (ModelState.IsValid)
            {
                if (model.Email != nhanvien.Email)
                {
                    var checkEmail = _db.nhanViens.Where(t => t.Email == model.Email).FirstOrDefault();

                    if (checkEmail != null)
                    {
                        ModelState.AddModelError("Email", "Email này đã tồn tại");
                        return View(model);
                    }
                }

                nhanvien.Hoten = model.Hoten;
                nhanvien.CCCD = model.CCCD;
                nhanvien.Diachi = model.Diachi;
                nhanvien.Email = model.Email;
                nhanvien.Dienthoai = model.Dienthoai;
                nhanvien.Gioitinh = model.Gioitinh;

                _db.nhanViens.Update(nhanvien);
                _db.SaveChanges();

                return RedirectToAction("Index", "Dashboard");
            }

            return View(model);
        }

        [HttpGet]
        public IActionResult ChangePassword()
        {

            return View(new CPassword());
        }

        [HttpPost]
        public IActionResult ChangePassword(CPassword model)
        {
            string role = HttpContext.Session.GetString("quyen");
            string user = HttpContext.Session.GetString("taikhoan");
            NhanVien nhanvien = new NhanVien();

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("LoginAdmin", "Account");
            }

			if(role == "khachhang")
			{
                return RedirectToAction("LoginAdmin", "Account");
            }	

            var taikhoan = _db.taiKhoans.Where(t => t.TenDN == user).FirstOrDefault();

            if (ModelState.IsValid)
            {
                if (taikhoan.MatkhauDN.Trim() != model.OldPassword)
                {
                    ModelState.AddModelError("OldPassword", "Mật khẩu hiện tại không đúng");
                    return View(model);
                }

                if (model.NewPassword == model.OldPassword)
                {
                    ModelState.AddModelError("NewPassword", "Mật khẩu mới không được trùng với mật khẩu cũ");
                    return View(model);
                }

                if (model.NewPassword != model.ConfirmPassword)
                {
                    ModelState.AddModelError("ConfirmPassword", "Mật khẩu không khớp");
                    return View(model);
                }

                taikhoan.MatkhauDN = model.NewPassword;

                _db.taiKhoans.Update(taikhoan);
                _db.SaveChanges();

                HttpContext.Session.Remove("taikhoan");
                HttpContext.Session.Remove("quyen");

                return RedirectToAction("LoginAdmin", "Account");
            }
            return View(model);
        }

        public IActionResult ResetPassword(int id)
        {
            var model = _db.nhanViens.Find(id);
            if (model == null)
            {
                return RedirectToAction("Index");
            }

            Random rnd = new Random();
            int pass = rnd.Next(100000, 999999);

            var taikhoan = _db.taiKhoans.Where(t => t.MaNV == model.MaNV).FirstOrDefault();
            if (taikhoan == null)
            {
				TaiKhoan newTK = new TaiKhoan()
				{
					MaNV = model.MaNV,
					Loaiquyen = 2,
					TenDN = model.Email,
					MatkhauDN = pass.ToString(),
				};
				_db.taiKhoans.Add(newTK);
				_db.SaveChanges();

                taikhoan = _db.taiKhoans.Where(t => t.MaNV == model.MaNV).FirstOrDefault();
            }

            var body = "<p>Kính chào anh chị;<p> <br>"
                + " <span> TourDemo xin cấp tài khoản và mật khẩu </span> <br> "
                + " <span> Tài khoản: " + taikhoan.TenDN + " </span> <br>"
                + "<span> Mật khẩu: " + pass + " </span> <br>"
                + "<span> Trân trọng. </span>";

            SendEmail.systemSendEmail(model.Email, "Cấp lại mật khẩu", body);

            taikhoan.MatkhauDN = pass.ToString();

            _db.taiKhoans.Update(taikhoan);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
