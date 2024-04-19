namespace DataManager.Models
{
    public class UploadModel
    {
        public bool Success { get; set; }
        public string? Name { get; set; }
        public string? Extension { get; set; }
        public string? Path { get; set; }
        public string? Base64 { get; set; }
    }
}
