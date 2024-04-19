using System.Net.Mail;
using System.Net;

namespace TourDemo.Module
{
    public class SendEmail
    {
        public static string systemSendEmail(string toEmail, string title, string body)
        {
            string fromEmail = "noithatnoithat914@gmail.com";
            string fromPassword = "migqfazsqqwcwbec";

            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromEmail);
            message.To.Add(new MailAddress(toEmail));
            message.Subject = title;
            message.Body = "<html><body>" +
                body +
                "</body></html>";
            message.IsBodyHtml = true;

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromEmail, fromPassword),
                EnableSsl = true
            };

            smtpClient.Send(message);

            return "OK";
        }
    }
}
