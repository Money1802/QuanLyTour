using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourDemo.Models
{
	[Table("Quyen")]
	public class Quyen
	{
		[Key]
		public int Loaiquyen { get; set; }
		public string? Tenquyen { get; set; } 
	}
}
