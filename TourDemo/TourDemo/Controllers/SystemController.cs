using Microsoft.AspNetCore.Mvc;
using TourDemo.Module;

namespace TourDemo.Controllers
{
	public class SystemController : Controller
	{
		private static string connectString = "";
		public SystemController(IConfiguration configuration) {
			connectString = configuration.GetConnectionString("DefaultConnection");
		}
		private BackupService backupService = new BackupService(connectString, Directory.GetCurrentDirectory() + "\\Backup");
		public IActionResult Index()
		{
			return View();
		}

		public IActionResult Backup()
		{
			try
			{
				backupService.BackupDatabase("QuanLyTour");
				TempData["Alert"] = "Backup thành công";
			}
			catch (Exception ex)
			{
				TempData["Alert"] = "Backup thất bại";
			}
			
			return RedirectToAction("Index");
		}

		public IActionResult Restore(string bk)
		{
			try
			{
				var path = Path.Combine(Directory.GetCurrentDirectory(),"\\" + bk);
				backupService.Restore("QuanLyTour", path);
				TempData["Alert"] = "Restore thành công";
			}
			catch (Exception ex)
			{
				TempData["Alert"] = "Restore thất bại";
			}
			return RedirectToAction("Index");
		}
	}
}
