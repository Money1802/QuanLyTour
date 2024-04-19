using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("KhuyenMai")]
	public class KhuyenMai
	{
		[Key]
		public int MaKM { get; set; }
		[Required(ErrorMessage = "Phải nhập tên khuyến mãi")]
		[Display(Name = "Tên Khuyến mãi")]
		public string? TenKM { get; set; }

		[Required(ErrorMessage = "Phải phần trăm giảm giá")]
		[Display(Name = "Phần trăm")]
		public int Phantram { get; set; } = 0;

		[Required(ErrorMessage = "Phải chọn ngày bắt đầu")]
		[Display(Name = "Ngày bắt đầu")]
		public DateTime Ngaybatdau { get; set; } = DateTime.Now;

		[Required(ErrorMessage = "Phải chọn ngày kết thúc")]
		[Display(Name = "Ngày kết thúc")]
		public DateTime Ngayketthuc { get; set; } = DateTime.Now;
	}
}
