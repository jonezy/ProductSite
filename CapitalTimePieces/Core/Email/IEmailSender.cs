using RichmondDay.Helpers;

namespace ProductSite.Web.Email {
    public interface IEmailSender {
        void Send(SmtpConfiguration smtpConfig, string toAddress, string fromAddress, string subject, string message);
    }
}
