using System.ComponentModel.DataAnnotations;

namespace TourDemo.Models.ModelViews
{
    public class ThanhToan
    {
        public KhachHang KhachHang { get; set; }
        public DatTour DatTour { get; set; }

        [Required(ErrorMessage = "Chưa đủ số lượng hành khách")]
        public List<ChiTietDatTour> ChiTietDatTours { get; set; }
    }
}
