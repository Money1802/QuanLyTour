using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
//using SelectPdf;
using TourDemo.Data;

namespace TourDemo.Controllers.API
{
    [Route("api/[controller]/[Action]")]
    [ApiController]
    public class ChartController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        public ChartController(ApplicationDbContext _context)
        {
            context = _context;
        }

        [HttpGet]
        public IActionResult GetChartArticleByMonthYear(int ? year)
        {
                var listArtVn = context.datTours.Where(t=>t.Trangthai == "Đã hoàn thành").ToList();

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

            return new JsonResult(grpMVN);
        }

        [HttpGet]
        public IActionResult GetChartByMonthYear(int? year, int? month)
        {
            var listArtVn = context.datTours.Where(t => t.Trangthai == "Đã Đặt Tour").ToList();

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

            return new JsonResult(grpMVN);
        }

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

        public class GroupMonth
        {
            public string MonthName { get; set; }
            public int Month { get; set; }
            public decimal TongTien { get; set; } = 0;

        }

        public class GroupDay
        {
            public int Day { get; set; }
            public decimal Tong { get; set; } = 0;

        }

        //public IActionResult ExportMonthPDF(int? year)
        //{
        //    var listArtVn = context.datTours.Where(t => t.Trangthai == "Đã hoàn thành").ToList();

        //    if (!year.HasValue)
        //    {
        //        year = DateTime.Now.Year;
        //    }

        //    var groupVn = listArtVn.Where(t => t.Ngaydattour.Year == year)
        //        .GroupBy(x => new { m = x.Ngaydattour.Month, y = x.Ngaydattour.Year })
        //        .Select(g => new { month = g.Key.m, tong = g.Sum(t => t.Tongtien) })
        //        .ToList();

        //    var grpMVN = new List<GroupMonth>();
        //    for (int i = 1; i <= 12; i++)
        //    {
        //        grpMVN.Add(new GroupMonth()
        //        {
        //            MonthName = LIST_MONTHS_VN.First(x => int.Parse(x.Value) == i).Text,
        //            Month = i,
        //            TongTien = groupVn.FirstOrDefault(x => x.month == i) == null ? 0 : groupVn.FirstOrDefault(x => x.month == i).tong,
        //        });
        //    }

        //    string trtd = " ";

        //    foreach (var group in grpMVN)
        //    {
        //        trtd += " <tr><td>"+ group.MonthName + "</td><td>"+ group.TongTien +"</td></tr> ";
        //    }

        //    HtmlToPdf converter = new HtmlToPdf();

        //    converter.Options.PdfPageSize = PdfPageSize.A1;
        //    converter.Options.PdfPageOrientation = PdfPageOrientation.Portrait;
        //    converter.Options.MarginRight = 10;
        //    converter.Options.MarginLeft = 10;
        //    converter.Options.MarginTop = 20;
        //    converter.Options.MarginBottom = 20;

        //    string html = @"<style>
        //                        table, th, td {
        //                          border: 1px solid;
        //                        }

        //                        table {
        //                          width: 100%;
        //                          border-collapse: collapse;
        //                        }

        //                        th {
        //                          font-size: 22px
        //                        }
        //                          </style>
        //                          <body>
	       //                         <div style = 'display: flex; flex-direction: column; witdh: 100%; padding: 50px'>
		      //                          <div style='text-align: center;
        //                            font-size: 29px;
        //                            font-weight: 600;
        //                            background: red;
        //                            padding: 10px;
        //                            color: white;'>
			     //                           Doanh thu 12 tháng năm " + year + @" 
		      //                          </div>
		      //                          <div>
			     //                           <table>
				    //                            <tr>
					   //                             <th> Tháng </th>
					   //                             <th> Doanh thu </th>
				    //                            </tr> " + trtd  
			     //                           + "</table></div></div></body>";

        //    PdfDocument pdf = converter.ConvertHtmlString(html);

        //    string fileName = string.Format("{0}.pdf", "Doanh thu năm " + year);
        //    string pathFile = string.Format("{0}/{1}", Directory.GetCurrentDirectory() + "\\Uploads\\PDF", fileName);

        //    pdf.Save(pathFile); ;
        //    pdf.Close();

        //    return new JsonResult(fileName);
        //}

        [HttpGet]
        public IActionResult ExportDayPDF()
        {
            return new JsonResult("");
        }
    }
}
