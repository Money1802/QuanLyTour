using Microsoft.AspNetCore.Mvc;
using PagedList;
using TourDemo.Data;
using TourDemo.Models.System;

namespace TourDemo.Controllers
{
	public class QuyenController : Controller
	{
		private ApplicationDbContext _db;
		public QuyenController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(Filter filter)
		{
			ViewData["Filter"] = filter;
			var models = _db.quyens.ToList();
			if (!string.IsNullOrEmpty(filter.Keyword))
			{
				models = models.Where(t => t.Tenquyen.Contains(filter.Keyword)).ToList();
			}

			return View(models.OrderByDescending(x => x.Tenquyen).ToPagedList(filter.PageIndex, filter.PageSize));
		}
	}
}
