using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("ChiTietDatTour")]
	public class ChiTietDatTour
	{
		[Key, Column("Maphieudat", Order = 0)]
		public int Maphieudat { get; set; }

		[Key, Column("Makhach", Order = 1)]
		public int Makhach { get; set; }

		[Key, Column("Mahanhkhach", Order = 2)]
		public int Mahanhkhach { get; set; }
        public decimal Giathanhtoan { get; set; }
		public string? Hoten { get; set; }
		public string? Email { get; set; }
		public string? Dienthoai { get; set; }
		public string? Diachi { get; set; }
	}
}
