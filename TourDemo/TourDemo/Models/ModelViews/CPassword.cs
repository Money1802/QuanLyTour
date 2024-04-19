using System.ComponentModel.DataAnnotations;

namespace TourDemo.Models.ModelViews
{
    public class CPassword
    {
        [Required(ErrorMessage = "Chưa nhập mật khẩu hiện tại")]
        [Display(Name = "Mật khẩu hiện tại")]
        public string? OldPassword { get; set; } = "";

        [Required(ErrorMessage = "Chưa nhập mật khẩu mới")]
		[Display(Name = "Mật khẩu mới")]
		public string? NewPassword { get; set; } = "";

		[Required(ErrorMessage ="Chưa nhập lại mật khẩu")]
		[Display(Name = "Nhập lại mật khẩu")]
		public string? ConfirmPassword { get; set; } = "";

	}
}
