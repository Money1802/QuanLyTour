using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("KhachHang")]
	public class KhachHang
	{
		[Key]
		public int Makhach { get; set; }
		public string? HoTen { get; set; }
		public string? Gioitinh { get; set; }
		public DateTime NgaySinh { get; set; } = DateTime.Now;
		public string? Diachi { get; set; }
		public string? Dienthoai { get; set;  }

        [Required(ErrorMessage = "Phải nhập Email để nhận thông báo")]
        [EmailAddress(ErrorMessage = "Không đúng cấu trúc Email")]
        public string? Email { get; set; }
		public string? CCCD { get; set;}
	}
}
