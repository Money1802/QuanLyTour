using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using TourDemo.Models;

namespace TourDemo.Data
{
	public class ApplicationDbContext : IdentityDbContext
	{
		public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
			: base(options)
		{
		}

		public DbSet<LoaiTour> loaiTours { get; set; }
		public DbSet<Tour> tours { get; set; }
		public DbSet<NhanVien> nhanViens { get; set; }
		public DbSet<TaiKhoan> taiKhoans { get; set; }
		public DbSet<KhachHang> khachHangs { get; set; }
		public DbSet<TaiKhoanKhach> taiKhoanKhachs { get; set; }
		public DbSet<KhuyenMai> khuyenMais { get; set; }
		public DbSet<Quyen> quyens { get; set; }
		public DbSet<DatTour> datTours { get; set; }
		public DbSet<ChiTietDatTour> chiTietDatTours { get; set; }

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);
			modelBuilder.Entity<ChiTietDatTour>()
				  .HasKey(m => new { m.Maphieudat, m.Makhach, m.Mahanhkhach });
		}
	}
}