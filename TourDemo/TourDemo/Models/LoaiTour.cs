using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("LoaiTour")]
	public class LoaiTour
	{
		[Key]
		[Display(Name = "Mã loại")]
		public int Maloaitour { get; set; }
		[Required(ErrorMessage = "Phải nhập tên loại")]
		[Display(Name = "Tên loại")]
		public string? Tenloai { get; set; }
	}
}

