﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("Taikhoan")]
	public class TaiKhoan
	{
		[Key]
		[Required(ErrorMessage = "Phải nhập tên đăng nhập!!!")]
		public string? TenDN { get; set; }
        [Required(ErrorMessage = "Phải nhập mật khẩu!!!")]
        public string? MatkhauDN { get; set;}
		public int MaNV { get; set; }
		public int Loaiquyen { get; set; }

        [NotMapped]
        public string? NhapLaiMK { get; set; }
    }
}
