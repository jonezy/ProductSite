using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using ProductSite.Data;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace CapitalTimePieces.Models {
    public class ContactUsViewModel {
        [DisplayName("First Name"), Required(ErrorMessage="Please enter your first name")]
        public string FirstName { get; set; }
        
        [DisplayName("Last Name"), Required(ErrorMessage = "Please enter your last name")]
        public string LastName { get; set; }

        [DisplayName("Email Address"), Required(ErrorMessage = "Please enter your email address")]
        public string EmailAddress { get; set; }

        [DisplayName("Phone number"), Required(ErrorMessage = "Please enter your phone number")]
        public string PhoneNumber { get; set; }

        [Required(ErrorMessage = "Please select your country")]
        public string Country { get; set; }

        [Required(ErrorMessage = "Please select your language")]
        public string Language { get; set; }

        [Required(ErrorMessage = "Please select the brand of the watch you would like to sell")]
        public string Brand { get; set; }

        [DisplayName("Watch Model"), Required(ErrorMessage = "Please enter the model of watch you would like to sell")]
        public string WatchModel { get; set; }

        [DisplayName("Dial Description"), Required(ErrorMessage = "Please enter a description of the dial on the watch you would like to sell")]
        public string DialDescription { get; set; }
        
        [DisplayName("Estimated Value"), Required(ErrorMessage = "Please enter the estimated value of the watch you would like to sell")]
        public string EstimatedValue { get; set; }

        public string Comments { get; set; }

        public IEnumerable<SelectListItem> Countries {
            get {
                List<SelectListItem> items = new List<SelectListItem>();
                items.Add(new SelectListItem { Text = "Canada", Value = "Canada" });
                items.Add(new SelectListItem { Text = "US", Value = "US" });

                return items.AsEnumerable();
            }
        }

        public IEnumerable<SelectListItem> Languages {
            get {
                List<SelectListItem> items = new List<SelectListItem>();
                items.Add(new SelectListItem { Text = "English", Value = "English" });
                items.Add(new SelectListItem { Text = "French", Value = "French" });

                return items.AsEnumerable();
            }
        }

        public IEnumerable<SelectListItem> ProductBrands {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductBrands.OrderBy(pb => pb.BrandName).Select(pb => new SelectListItem { Text = pb.BrandName, Value = pb.ProductBrandID.ToString() });
            }
        }

    }
}