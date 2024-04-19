using DataManager.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("Tour")]
	public class Tour
	{
		[Key]
		public int Matour { get; set; }

		[Required(ErrorMessage = "Phải nhập tên Tour")]
		[Display(Name = "Tên Tour")]
		public string? Tentour { get; set; }

		[Display(Name = "Số ngày đi")]
		public int Songaydi { get; set; }

		[Required(ErrorMessage = "Phải chọn hình ảnh")]
		[Display(Name = "Hình ảnh")]
		public string? Hinhanh { get; set; }

		[Display(Name = "Giới thiệu")]
		public string? Gioithieu { get; set; }

		[Required(ErrorMessage = "Phải nhập giá Tour")]
		[Display(Name = "Giá Tour")]
		public decimal Giatour { get; set; }

		[Required(ErrorMessage = "Phải chọn Loại tour")]
		[Display(Name = "Loại Tour")]
		public int Maloaitour { get; set; }

		[Required(ErrorMessage = "Phải chọn Nhân viên hướng dẫn")]
		[Display(Name = "Nhân viên hướng dẫn")]
		public int MaNV { get; set; }

		[Display(Name = "Khuyễn mãi")]
		public int MaKM { get; set; }

		[NotMapped]
		public UploadModel Upload { get; set; }
	}
}
