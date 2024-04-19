using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("NhanVien")]
	public class NhanVien
	{
		[Key]
		public int MaNV { get; set; }

		[Required(ErrorMessage = "Phải nhập họ tên")]
		[Display(Name = "Họ và tên")]
		public string? Hoten { get; set; }

		[Display(Name = "Giới tính")]
		public string? Gioitinh { get; set; }

		[Display(Name = "Ngày sinh")]
		public DateTime NgaySinh { get; set; } = DateTime.Now;

		[Display(Name = "Địa chỉ")]
		public string? Diachi { get; set; }

		[Display(Name = "Số điện thoại")]
		public string? Dienthoai { get; set; }

		[EmailAddress(ErrorMessage = "Cấu trúc Email không đúng")]
		[Required(ErrorMessage = "Phải nhập Email")]
		public string? Email { get; set; }

		[Required(ErrorMessage = "Phải nhập CCCD")]
		public string? CCCD { get; set;}

		[Required(ErrorMessage = "Phải chọn chức vụ")]
		[Display(Name = "Chức vụ")]
		public string? Chucvu { get; set; }
	}
}
