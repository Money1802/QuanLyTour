using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("DatTour")]
	public class DatTour
	{
		[Key]
		public int Maphieudat { get; set; }
		public DateTime Ngaydattour { get; set; } = DateTime.Now;
		public DateTime Ngaykhoihanh { get; set; } = DateTime.Now;
		public int Soluongkhach { get; set; }
		public string? Trangthai { get; set; } = "Đã Đặt Tour";

        public int MaTour { get; set; }
		public decimal Tongtien { get; set; }
		public bool Loaithanhtoan { get; set; } = false;
		public bool Trangthaithanhtoan { get; set; } = false;
    }
}
