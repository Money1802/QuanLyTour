using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using PagedList;
using System.Diagnostics;
using TourDemo.Data;
using TourDemo.Models;
using TourDemo.Models.ModelViews;
using TourDemo.Models.System;
using TourDemo.Module;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;

namespace TourDemo.Controllers
{
	public class HomeController : Controller
	{
		private readonly ILogger<HomeController> _logger;
        private ApplicationDbContext _db;
		private readonly IVnPayService _vnPayService;

		public HomeController(ILogger<HomeController> logger, ApplicationDbContext db, IVnPayService vnPayService)
		{
			_logger = logger;
            _db = db;
			_vnPayService = vnPayService;
		}

		public IActionResult Index()
		{
			ViewBag.Banner = new string[]
			{
                "https://saigontourist.net/uploads/destination/TrongNuoc/mienbac/Ha-giang/buckwheat-flower-hagiang.jpg",
                "https://saigontourist.net/uploads/destination/NuocNgoai/tay-ban-nha/Barcelona_407568172.jpg",
                "https://saigontourist.net/uploads/destination/TrongNuoc/Phuquoc/Phu-Quoc-island-in-Vietnam_300005888.jpg",
            };

			var tours = (from tour in _db.tours
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
			var model = tours.OrderByDescending(x=>x.Matour).ToPagedList(1,12);
			return View(model);
		}

		public IActionResult Privacy()
		{
			return View();
		}

        public IActionResult Category()
        {
            var cate = _db.loaiTours.ToList();
            return View(cate);
        }

        public IActionResult Search(Filter filter)
        {
			ViewBag.LTs = _db.loaiTours.ToList();
			ViewBag.Sorts = new List<SelectListItem>() { 
				new SelectListItem(){Value = "0", Text="Tour mới nhất"},
				new SelectListItem(){Value = "1", Text="Tour cũ nhất"},
				new SelectListItem(){Value = "2", Text="Từ Z - A"},
				new SelectListItem(){Value = "3", Text="Từ A - Z"},
			};
			
			ViewData["filter"] = filter;
			var tours = (from tour in _db.tours
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

			if (filter.Category != 0)
			{
				tours = tours.Where(t=>t.Maloaitour == filter.Category).ToList();
			}

            if (filter.MoneyStart != 0 || filter.MoneyEnd != 0)
            {
                tours = tours.Where(t => t.Giatour >= filter.MoneyStart && t.Giatour <= filter.MoneyEnd).ToList();
            }

            if (!string.IsNullOrEmpty(filter.Keyword))
			{
				tours = tours.Where(t => t.Tentour.Trim().ToLower().Contains(filter.Keyword.ToLower().Trim())).ToList();
			}

			switch (filter.Sort)
			{
				case 0:
					{
						tours = tours.OrderByDescending(x => x.Matour).ToList();
						break;
					}
				case 1:
					{
						tours = tours.OrderBy(x => x.Matour).ToList();
						break;
					}
				case 2:
					{
						tours = tours.OrderByDescending(x => x.Tentour).ToList();
						break;
					}
				case 3:
					{
						tours = tours.OrderBy(x => x.Tentour).ToList();
						break;
					}
			}	

			var models = tours.ToPagedList(filter.PageIndex, 20);
			return View(models);
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
            var model = GetTour(id);

			ViewBag.Sames = (from tour in _db.tours
                                         join nv in _db.nhanViens on tour.MaNV equals nv.MaNV
                                         join km in _db.khuyenMais on tour.MaKM equals km.MaKM
                                         join loai in _db.loaiTours on tour.Maloaitour equals loai.Maloaitour
                                         where tour.Matour != id && tour.Maloaitour == model.Maloaitour
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
                                         }).ToList().Take(4).ToList();
			return View(model);
        }

		[HttpGet]
        public IActionResult Cart(int id, int so = 0)
        {
			string role = HttpContext.Session.GetString("quyen");
			if(role == "admin" || role == "nhanvien")
			{
				HttpContext.Session.Remove("taikhoan");
				HttpContext.Session.Remove("quyen");
				return RedirectToAction("Login", "Account");
			}	
			string user = HttpContext.Session.GetString("taikhoan");
			KhachHang khachHang = new KhachHang();
			if(string.IsNullOrEmpty(user))
			{
				return RedirectToAction("Login", "Account");
			}

            var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();
            khachHang = _db.khachHangs.Find(taikhoan.Makhach);

			var model = new ThanhToan()
			{
                ChiTietDatTours = new List<ChiTietDatTour>(),
				DatTour = new DatTour()
				{
					Ngaydattour = DateTime.Now,
					Ngaykhoihanh = DateTime.Now.AddDays(3),
				},
				KhachHang = khachHang,
			};

			ViewBag.LoaiTTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text = "Tiền mặt", Value = false.ToString() },
				new SelectListItem() { Text = "Thanh toán bằng VNPay", Value = true.ToString() },
			};

			ViewData["so"] = so;
			ViewBag.Customer = khachHang;
			ViewBag.Tour = GetTour(id);
            return View(model);
        }

        [HttpPost]
        public IActionResult Cart(int id, int so = 0, ThanhToan model = null)
        {
            var list = new List<ChiTietDatTour>();

			string role = HttpContext.Session.GetString("quyen");
			if (role == "admin" || role == "nhanvien")
			{
				HttpContext.Session.Remove("taikhoan");
				HttpContext.Session.Remove("quyen");
				return RedirectToAction("Login", "Account");
			}
			string user = HttpContext.Session.GetString("taikhoan");
            KhachHang khachHang = new KhachHang();

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("Login", "Account");
            }

            var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();
            khachHang = _db.khachHangs.Find(taikhoan.Makhach);

            ViewBag.LoaiTTs = new List<SelectListItem>()
            {
                new SelectListItem() { Text = "Tiền mặt", Value = false.ToString() },
                new SelectListItem() { Text = "Thanh toán bằng VNPay", Value = true.ToString() },
            };

            var tours = GetTour(id);
            ViewBag.Customer = khachHang;
            ViewBag.Tour = tours;
            ViewData["so"] = so;

            if (string.IsNullOrEmpty(model.KhachHang.Dienthoai))
            {
                ModelState.AddModelError("", "Chưa nhập số điện thoại");
                return View(model);
            }
            if (string.IsNullOrEmpty(model.KhachHang.Diachi))
            {
                ModelState.AddModelError("", "Chưa nhập địa chỉ");
                return View(model);
            }

            if (model.DatTour.Ngaykhoihanh <= DateTime.Now)
            {
                ModelState.AddModelError("", "Ngày khởi hành phải lớn hơn ngày hiện tại");
                return View(model);
            }

            if (so > 0 && model.ChiTietDatTours == null)
			{
				for(int i = 1; i <= so; i++)
				{
					list.Add(new ChiTietDatTour());
				}	

				model.ChiTietDatTours = list;
				return View(model);
			}
			else if(so <= 0)
			{
				ModelState.AddModelError("", "Chưa nhập số lượng và số lượng lớn hơn hoặc bằng 1");
			}

            if (!ModelState.IsValid)
            {
                return View(model);
            }


			if(model.DatTour.Loaithanhtoan == true)
			{
				var vnPay = new PaymentInformationModel()
				{
					Amount = Convert.ToInt32(tours.Giagiam * so), 
					OrderDescription = "Thanh toán online tiền đặt tour: " + tours.Tentour,
					OrderType = "Du lịch",
					Name = khachHang.HoTen,
				};
				var url = _vnPayService.CreatePaymentUrl(vnPay, HttpContext);
				model.KhachHang.Makhach = khachHang.Makhach;
				model.DatTour.MaTour = tours.Matour;
				model.DatTour.Tongtien = tours.Giagiam * so;
				model.DatTour.Soluongkhach = so;
				var serializedUser = JsonConvert.SerializeObject(model);
				HttpContext.Session.SetString("cart", serializedUser);
				return Redirect(url);
			}
			else
			{
				if (ModelState.IsValid)
				{
					khachHang.HoTen = model.KhachHang.HoTen;
					khachHang.Email = model.KhachHang.Email;
					khachHang.Diachi = model.KhachHang.Diachi;
					khachHang.Dienthoai = model.KhachHang.Dienthoai;

					_db.khachHangs.Update(khachHang);
					_db.SaveChanges();

					model.DatTour.Trangthaithanhtoan = model.DatTour.Loaithanhtoan == false ? false : true;
					model.DatTour.MaTour = tours.Matour;
					model.DatTour.Tongtien = tours.Giagiam * so;
					model.DatTour.Soluongkhach = so;

					_db.datTours.Add(model.DatTour);
					_db.SaveChanges();

					for (int i = 0; i < so; i++)
					{
						model.ChiTietDatTours[i].Maphieudat = model.DatTour.Maphieudat;
						model.ChiTietDatTours[i].Makhach = khachHang.Makhach;
						model.ChiTietDatTours[i].Mahanhkhach = i;
						model.ChiTietDatTours[i].Giathanhtoan = tours.Giatour;
						_db.chiTietDatTours.Add(model.ChiTietDatTours[i]);
						_db.SaveChanges();
					}
				}
				return RedirectToAction("Index", "Home");
            }	
        }

		public IActionResult PaymentCallback()
		{
			var response = _vnPayService.PaymentExecute(Request.Query);

			if(response.Success == true)
			{
				var serializedUser = HttpContext.Session.GetString("cart");

				if (serializedUser != null)
				{
					var model = JsonConvert.DeserializeObject<ThanhToan>(serializedUser);
					var khachHang = _db.khachHangs.Find(model.KhachHang.Makhach);
					var tours = _db.tours.Find(model.DatTour.MaTour);

					khachHang.HoTen = model.KhachHang.HoTen;
					khachHang.Email = model.KhachHang.Email;
					khachHang.Diachi = model.KhachHang.Diachi;
					khachHang.Dienthoai = model.KhachHang.Dienthoai;

					_db.khachHangs.Update(khachHang);
					_db.SaveChanges();

					model.DatTour.Trangthaithanhtoan = model.DatTour.Loaithanhtoan == false ? false : true;

					_db.datTours.Add(model.DatTour);
					_db.SaveChanges();

					for (int i = 0; i < model.DatTour.Soluongkhach; i++)
					{
						model.ChiTietDatTours[i].Maphieudat = model.DatTour.Maphieudat;
						model.ChiTietDatTours[i].Makhach = khachHang.Makhach;
						model.ChiTietDatTours[i].Mahanhkhach = i;
						model.ChiTietDatTours[i].Giathanhtoan = tours.Giatour;
						_db.chiTietDatTours.Add(model.ChiTietDatTours[i]);
						_db.SaveChanges();
					}

					HttpContext.Session.Remove("cart");

                    TempData["SuccessMessage"] = "Thanh toán thành công!";
                    return RedirectToAction("Index", "Home");
				}
			}
            TempData["ErrorMessage"] = "Thanh toán thất bại!";
            return Json(response);
		}	

		public IActionResult History(Filter filter)
		{

            ViewData["Filter"] = filter;

            string user = HttpContext.Session.GetString("taikhoan");
            KhachHang khachHang = new KhachHang();

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("Login", "Account");
            }

            var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();
            khachHang = _db.khachHangs.Find(taikhoan.Makhach);

			var chitiet = _db.chiTietDatTours.Where(t=>t.Makhach == khachHang.Makhach).Select(t=>t.Maphieudat).ToList();

            var models = _db.datTours.Where(t=>chitiet.Contains(t.Maphieudat)).ToList();
            
            return View(models.OrderByDescending(x => x.Ngaydattour).ToPagedList(filter.PageIndex, filter.PageSize));
        }

		public IActionResult DetailCart(int id)
		{
			ThanhToan model = new ThanhToan();
			var dattour = _db.datTours.Find(id);
			model.DatTour = dattour;
			var chitiet = _db.chiTietDatTours.Where(t=>t.Maphieudat == id).ToList();
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

			return RedirectToAction("History", "Home");
		}

		[HttpGet]
		public IActionResult Profile()
		{
			string user = HttpContext.Session.GetString("taikhoan");
			KhachHang khachHang = new KhachHang();

			if (string.IsNullOrEmpty(user))
			{
				return RedirectToAction("Login", "Account");
			}

			var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();
			khachHang = _db.khachHangs.Find(taikhoan.Makhach);
			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};
			return View(khachHang);
		}

		[HttpPost]
		public IActionResult Profile(KhachHang model)
		{
			string user = HttpContext.Session.GetString("taikhoan");
			KhachHang khachHang = new KhachHang();

			if (string.IsNullOrEmpty(user))
			{
				return RedirectToAction("Login", "Account");
			}

			var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();
			khachHang = _db.khachHangs.Find(taikhoan.Makhach);

			ViewBag.GTs = new List<SelectListItem>()
			{
				new SelectListItem() { Text= "Nam", Value = "Nam" },
				new SelectListItem() { Text= "Nữ", Value = "Nữ" },
			};

			if (ModelState.IsValid)
			{
				if(model.Email != khachHang.Email)
				{
					var checkEmail = _db.khachHangs.Where(t=>t.Email == model.Email).FirstOrDefault();	

					if(checkEmail != null)
					{
						ModelState.AddModelError("Email", "Email này đã tồn tại");
						return View(model);
					}
				}

				khachHang.HoTen = model.HoTen;
				khachHang.CCCD = model.CCCD;
				khachHang.Diachi = model.Diachi;
				khachHang.Email = model.Email;
				khachHang.Dienthoai = model.Dienthoai;
				khachHang.Gioitinh = model.Gioitinh;

				_db.khachHangs.Update(khachHang);
				_db.SaveChanges();

				return RedirectToAction("Index", "Home");
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
            string user = HttpContext.Session.GetString("taikhoan");

            if (string.IsNullOrEmpty(user))
            {
                return RedirectToAction("Login", "Account");
            }

            var taikhoan = _db.taiKhoanKhachs.Where(t => t.TenDN == user).FirstOrDefault();

            if (ModelState.IsValid)
			{
				if(taikhoan.MatkhauDN.Trim() != model.OldPassword)
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

				_db.taiKhoanKhachs.Update(taikhoan);
				_db.SaveChanges();

                HttpContext.Session.Remove("taikhoan");
                HttpContext.Session.Remove("quyen");

                return RedirectToAction("Login", "Account");
			}
            return View(model);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}