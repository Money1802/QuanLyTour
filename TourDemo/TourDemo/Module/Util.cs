using DataManager.Models;
using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace TourDemo.Module
{
	public class Util
	{
		public static UploadModel UploadFile(string rootPath, string base64, string fileName)
		{
			UploadModel uploadModel = new UploadModel();
			try
			{
				string[] arr = base64.Split("base64,");
				uploadModel.Extension = fileName.Split(".").Last();
				var bytes = Convert.FromBase64String(arr[1]);

				string folder = Path.Combine("Uploads", DateTime.Now.ToString("yyyy"), DateTime.Now.ToString("MM"));
				string uploadsFolder = Path.Combine(rootPath, folder);
				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}
				string ImagePath = Guid.NewGuid().ToString() + "." + uploadModel.Extension;
				string filePath = Path.Combine(uploadsFolder, ImagePath);
				System.IO.File.WriteAllBytes(filePath, bytes);

				uploadModel.Path = "/Uploads/" + DateTime.Now.ToString("yyyy") + '/' + DateTime.Now.ToString("MM") + '/' + ImagePath;
				uploadModel.Name = fileName;
				uploadModel.Success = true;
				return uploadModel;
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
				return uploadModel;
			}
		}

		public static List<object> ErrorOrValidate(ModelStateDictionary modelState)
		{
			List<object> errors = new List<object>();
			foreach (var item in modelState.Keys)
			{
				var value = modelState[item];
				if (value != null && value.Errors.Count > 0)
				{
					errors.Add(new { Name = item, Value = string.Join(". ", value.Errors.Select(s => s.ErrorMessage)) });
				}
			}
			return errors;
		}
	}
}
