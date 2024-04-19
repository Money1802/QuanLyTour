using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Drawing;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using static TourDemo.Controllers.API.ChartController;
using TourDemo.Data;
//using SelectPdf;
using Microsoft.AspNetCore.Mvc.ViewFeatures;

namespace TourDemo.Controllers
{
	public class DashboardController : Controller
	{
        private ApplicationDbContext _db;
        public DashboardController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
		{
			ViewBag.Years = LIST_YEARS;

			return View();
		}

        public IActionResult Number()
        {
            ViewBag.Years = LIST_YEARS;
            ViewBag.Months = LIST_MONTHS_VN;
            return View();
        }

        public IActionResult ExportFileMonth(int? year)
        {
            var listArtVn = _db.datTours.Where(t => t.Trangthai == "Đã hoàn thành").ToList();

            if (!year.HasValue)
            {
                year = DateTime.Now.Year;
            }

            var groupVn = listArtVn.Where(t => t.Ngaydattour.Year == year)
                .GroupBy(x => new { m = x.Ngaydattour.Month, y = x.Ngaydattour.Year })
                .Select(g => new { month = g.Key.m, tong = g.Sum(t => t.Tongtien) })
                .ToList();

            var grpMVN = new List<GroupMonth>();
            for (int i = 1; i <= 12; i++)
            {
                grpMVN.Add(new GroupMonth()
                {
                    MonthName = LIST_MONTHS_VN.First(x => int.Parse(x.Value) == i).Text,
                    Month = i,
                    TongTien = groupVn.FirstOrDefault(x => x.month == i) == null ? 0 : groupVn.FirstOrDefault(x => x.month == i).tong,
                });
            }

            ExcelPackage Ep = new ExcelPackage();
            ExcelWorksheet sheet = Ep.Workbook.Worksheets.Add("Report");

            sheet.Cells["A2"].Value = "Doanh thu 12 tháng trong năm " + year;
            sheet.Cells["A2"].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            sheet.Cells["A2"].Style.Font.Bold = true;
            sheet.Cells["A2"].Style.Font.Size = 16;
            sheet.Cells["A2"].Style.WrapText = true;
            sheet.Cells["A2:D2"].Merge = true;

            sheet.Cells["A3"].Value = "Tổng doanh thu: ";
            sheet.Cells["A3"].Style.Font.Bold = true;
            sheet.Cells["A3"].Style.Font.Size = 13;
            sheet.Cells["B3"].Value = grpMVN.Sum(t => t.TongTien);
            sheet.Cells["B3"].Style.Font.Size = 13;
            sheet.Cells["B3:D3"].Merge = true;

            sheet.Cells["A4"].Value = "Tháng";
            sheet.Cells["B4"].Value = "Doanh thu";
            sheet.Cells["A" + 4 + ":D" + 4].Style.Fill.PatternType = ExcelFillStyle.Solid;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml("#ddd"));
            sheet.Cells["A" + 4 + ":D" + 4].Style.Font.Bold = true;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Font.Size = 14;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.BorderAround(ExcelBorderStyle.Thin);
            sheet.Cells["B4:D4"].Merge = true;

            int row = 5;
            foreach (var item in grpMVN)
            {
                sheet.Cells[string.Format("A{0}", row)].Value = item.MonthName;
                sheet.Cells[string.Format("B{0}", row)].Value = item.TongTien;

                sheet.Cells["A" + row + ":D" + row].Style.Fill.PatternType = ExcelFillStyle.Solid;
                sheet.Cells["A" + row + ":D" + row].Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml("#FFF"));
                sheet.Cells["A" + row + ":D" + row].Style.Font.Size = 13;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Right.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Left.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.BorderAround(ExcelBorderStyle.Thin);
                sheet.Cells["B" + row + ":D" + row].Merge = true;

                row++;
            }

            sheet.Cells["A:AZ"].AutoFitColumns();

            return File(Ep.GetAsByteArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Doanh thu năm " + year + ".xlsx");
        }

        public IActionResult ExportFileDay(int? year, int? month)
        {
            var listArtVn = _db.datTours.Where(t => t.Trangthai == "Đã Đặt Tour").ToList();

            if (!year.HasValue)
            {
                year = DateTime.Now.Year;
            }

            if (!month.HasValue)
            {
                month = DateTime.Now.Month;
            }

            var groupVn = listArtVn.Where(t => t.Ngaydattour.Year == year && t.Ngaydattour.Month == month)
                .GroupBy(x => new { d = x.Ngaydattour.Day, m = x.Ngaydattour.Month, y = x.Ngaydattour.Year })
                .Select(g => new { day = g.Key.d, tong = g.Count() })
                .ToList();

            var grpMVN = new List<GroupDay>();
            for (int i = 1; i <= DateTime.DaysInMonth(year.Value, month.Value); i++)
            {
                grpMVN.Add(new GroupDay()
                {
                    Day = i,
                    Tong = groupVn.FirstOrDefault(x => x.day == i) == null ? 0 : groupVn.FirstOrDefault(x => x.day == i).tong,
                });
            }

            ExcelPackage Ep = new ExcelPackage();
            ExcelWorksheet sheet = Ep.Workbook.Worksheets.Add("Report");

            sheet.Cells["A2"].Value = "Số lượng đặt Tour tháng " + month + " trong năm " + year;
            sheet.Cells["A2"].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            sheet.Cells["A2"].Style.Font.Bold = true;
            sheet.Cells["A2"].Style.Font.Size = 16;
            sheet.Cells["A2"].Style.WrapText = true;
            sheet.Cells["A2:D2"].Merge = true;

            sheet.Cells["A3"].Value = "Tổng số lượng: ";
            sheet.Cells["A3"].Style.Font.Bold = true;
            sheet.Cells["A3"].Style.Font.Size = 13;
            sheet.Cells["B3"].Value = grpMVN.Sum(t => t.Tong);
            sheet.Cells["B3"].Style.Font.Size = 13;
            sheet.Cells["B3:D3"].Merge = true;

            sheet.Cells["A4"].Value = "Ngày";
            sheet.Cells["B4"].Value = "Số lượng đặt Tour";
            sheet.Cells["A" + 4 + ":D" + 4].Style.Fill.PatternType = ExcelFillStyle.Solid;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml("#ddd"));
            sheet.Cells["A" + 4 + ":D" + 4].Style.Font.Bold = true;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Font.Size = 14;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            sheet.Cells["A" + 4 + ":D" + 4].Style.Border.BorderAround(ExcelBorderStyle.Thin);
            sheet.Cells["B4:D4"].Merge = true;

            int row = 5;
            foreach (var item in grpMVN)
            {
                sheet.Cells[string.Format("A{0}", row)].Value = item.Day + "/" + month + "/" + year;
                sheet.Cells[string.Format("B{0}", row)].Value = item.Tong;

                sheet.Cells["A" + row + ":D" + row].Style.Fill.PatternType = ExcelFillStyle.Solid;
                sheet.Cells["A" + row + ":D" + row].Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml("#FFF"));
                sheet.Cells["A" + row + ":D" + row].Style.Font.Size = 13;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Right.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Left.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
                sheet.Cells["A" + row + ":D" + row].Style.Border.BorderAround(ExcelBorderStyle.Thin);
                sheet.Cells["B" + row + ":D" + row].Merge = true;

                row++;
            }

            sheet.Cells["A:AZ"].AutoFitColumns();

            return File(Ep.GetAsByteArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Doanh thu tháng "+ month +" năm " + year + ".xlsx");
        }

        public static readonly List<SelectListItem> LIST_YEARS = new List<SelectListItem>()
        {
            new SelectListItem { Text = "2019", Value = "2019" },
            new SelectListItem { Text = "2020", Value = "2020" },
            new SelectListItem { Text = "2021", Value = "2021" },
            new SelectListItem { Text = "2022", Value = "2022" },
            new SelectListItem { Text = "2023", Value = "2023" },
            new SelectListItem { Text = "2024", Value = "2024" },
            new SelectListItem { Text = "2025", Value = "2025" },
            new SelectListItem { Text = "2026", Value = "2026" },
            new SelectListItem { Text = "2027", Value = "2027" },
            new SelectListItem { Text = "2028", Value = "2028" },
            new SelectListItem { Text = "2029", Value = "2029" },
            new SelectListItem { Text = "2030", Value = "2030" },
        };

        public static readonly List<SelectListItem> LIST_MONTHS_VN = new List<SelectListItem>()
        {
            new SelectListItem { Text = "Tháng 1", Value = "1" },
            new SelectListItem { Text = "Tháng 2", Value = "2" },
            new SelectListItem { Text = "Tháng 3", Value = "3" },
            new SelectListItem { Text = "Tháng 4", Value = "4" },
            new SelectListItem { Text = "Tháng 5", Value = "5" },
            new SelectListItem { Text = "Tháng 6", Value = "6" },
            new SelectListItem { Text = "Tháng 7", Value = "7" },
            new SelectListItem { Text = "Tháng 8", Value = "8" },
            new SelectListItem { Text = "Tháng 9", Value = "9" },
            new SelectListItem { Text = "Tháng 10", Value = "10" },
            new SelectListItem { Text = "Tháng 11", Value = "11" },
            new SelectListItem { Text = "Tháng 12", Value = "12" },
        };
    }
}
