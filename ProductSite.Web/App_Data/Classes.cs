


using System;
using System.ComponentModel;
using System.Linq;

namespace ProductSite.Data
{
    
    
    
    
    /// <summary>
    /// A class which represents the ProductBrand table in the Products Database.
    /// This class is queryable through ProductsDB.ProductBrand 
    /// </summary>

	public partial class ProductBrand: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductBrand(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductBrandIDChanging(int value);
        partial void OnProductBrandIDChanged();
		
		private int _ProductBrandID;
		public int ProductBrandID { 
		    get{
		        return _ProductBrandID;
		    } 
		    set{
		        this.OnProductBrandIDChanging(value);
                this.SendPropertyChanging();
                this._ProductBrandID = value;
                this.SendPropertyChanged("ProductBrandID");
                this.OnProductBrandIDChanged();
		    }
		}
		
        partial void OnBrandNameChanging(string value);
        partial void OnBrandNameChanged();
		
		private string _BrandName;
		public string BrandName { 
		    get{
		        return _BrandName;
		    } 
		    set{
		        this.OnBrandNameChanging(value);
                this.SendPropertyChanging();
                this._BrandName = value;
                this.SendPropertyChanged("BrandName");
                this.OnBrandNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<ProductBrand> ProductBrands
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductBrands
                       where items.ProductBrandID == _ProductBrandID
                       select items;
            }
        }

        public IQueryable<ProductCollection> ProductCollections
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductCollections
                       where items.ProductBrandID == _ProductBrandID
                       select items;
            }
        }

        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the ProductCollection table in the Products Database.
    /// This class is queryable through ProductsDB.ProductCollection 
    /// </summary>

	public partial class ProductCollection: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductCollection(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductCollectionIDChanging(int value);
        partial void OnProductCollectionIDChanged();
		
		private int _ProductCollectionID;
		public int ProductCollectionID { 
		    get{
		        return _ProductCollectionID;
		    } 
		    set{
		        this.OnProductCollectionIDChanging(value);
                this.SendPropertyChanging();
                this._ProductCollectionID = value;
                this.SendPropertyChanged("ProductCollectionID");
                this.OnProductCollectionIDChanged();
		    }
		}
		
        partial void OnProductBrandIDChanging(int value);
        partial void OnProductBrandIDChanged();
		
		private int _ProductBrandID;
		public int ProductBrandID { 
		    get{
		        return _ProductBrandID;
		    } 
		    set{
		        this.OnProductBrandIDChanging(value);
                this.SendPropertyChanging();
                this._ProductBrandID = value;
                this.SendPropertyChanged("ProductBrandID");
                this.OnProductBrandIDChanged();
		    }
		}
		
        partial void OnCollectionNameChanging(string value);
        partial void OnCollectionNameChanged();
		
		private string _CollectionName;
		public string CollectionName { 
		    get{
		        return _CollectionName;
		    } 
		    set{
		        this.OnCollectionNameChanging(value);
                this.SendPropertyChanging();
                this._CollectionName = value;
                this.SendPropertyChanged("CollectionName");
                this.OnCollectionNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<ProductBrand> ProductBrands
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductBrands
                       where items.ProductBrandID == _ProductBrandID
                       select items;
            }
        }

        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the ProductCaseStyle table in the Products Database.
    /// This class is queryable through ProductsDB.ProductCaseStyle 
    /// </summary>

	public partial class ProductCaseStyle: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductCaseStyle(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductCaseStyleIDChanging(int value);
        partial void OnProductCaseStyleIDChanged();
		
		private int _ProductCaseStyleID;
		public int ProductCaseStyleID { 
		    get{
		        return _ProductCaseStyleID;
		    } 
		    set{
		        this.OnProductCaseStyleIDChanging(value);
                this.SendPropertyChanging();
                this._ProductCaseStyleID = value;
                this.SendPropertyChanged("ProductCaseStyleID");
                this.OnProductCaseStyleIDChanged();
		    }
		}
		
        partial void OnCaseStyleNameChanging(string value);
        partial void OnCaseStyleNameChanged();
		
		private string _CaseStyleName;
		public string CaseStyleName { 
		    get{
		        return _CaseStyleName;
		    } 
		    set{
		        this.OnCaseStyleNameChanging(value);
                this.SendPropertyChanging();
                this._CaseStyleName = value;
                this.SendPropertyChanged("CaseStyleName");
                this.OnCaseStyleNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the ProductColour table in the Products Database.
    /// This class is queryable through ProductsDB.ProductColour 
    /// </summary>

	public partial class ProductColour: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductColour(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductColourIDChanging(int value);
        partial void OnProductColourIDChanged();
		
		private int _ProductColourID;
		public int ProductColourID { 
		    get{
		        return _ProductColourID;
		    } 
		    set{
		        this.OnProductColourIDChanging(value);
                this.SendPropertyChanging();
                this._ProductColourID = value;
                this.SendPropertyChanged("ProductColourID");
                this.OnProductColourIDChanged();
		    }
		}
		
        partial void OnColourNameChanging(string value);
        partial void OnColourNameChanged();
		
		private string _ColourName;
		public string ColourName { 
		    get{
		        return _ColourName;
		    } 
		    set{
		        this.OnColourNameChanging(value);
                this.SendPropertyChanging();
                this._ColourName = value;
                this.SendPropertyChanged("ColourName");
                this.OnColourNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the ProductBracelet table in the Products Database.
    /// This class is queryable through ProductsDB.ProductBracelet 
    /// </summary>

	public partial class ProductBracelet: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductBracelet(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductBraceletIDChanging(int value);
        partial void OnProductBraceletIDChanged();
		
		private int _ProductBraceletID;
		public int ProductBraceletID { 
		    get{
		        return _ProductBraceletID;
		    } 
		    set{
		        this.OnProductBraceletIDChanging(value);
                this.SendPropertyChanging();
                this._ProductBraceletID = value;
                this.SendPropertyChanged("ProductBraceletID");
                this.OnProductBraceletIDChanged();
		    }
		}
		
        partial void OnBraceletNameChanging(string value);
        partial void OnBraceletNameChanged();
		
		private string _BraceletName;
		public string BraceletName { 
		    get{
		        return _BraceletName;
		    } 
		    set{
		        this.OnBraceletNameChanging(value);
                this.SendPropertyChanging();
                this._BraceletName = value;
                this.SendPropertyChanged("BraceletName");
                this.OnBraceletNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the Product table in the Products Database.
    /// This class is queryable through ProductsDB.Product 
    /// </summary>

	public partial class Product: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public Product(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductIDChanging(int value);
        partial void OnProductIDChanged();
		
		private int _ProductID;
		public int ProductID { 
		    get{
		        return _ProductID;
		    } 
		    set{
		        this.OnProductIDChanging(value);
                this.SendPropertyChanging();
                this._ProductID = value;
                this.SendPropertyChanged("ProductID");
                this.OnProductIDChanged();
		    }
		}
		
        partial void OnBrandIDChanging(int value);
        partial void OnBrandIDChanged();
		
		private int _BrandID;
		public int BrandID { 
		    get{
		        return _BrandID;
		    } 
		    set{
		        this.OnBrandIDChanging(value);
                this.SendPropertyChanging();
                this._BrandID = value;
                this.SendPropertyChanged("BrandID");
                this.OnBrandIDChanged();
		    }
		}
		
        partial void OnCollectionIDChanging(int value);
        partial void OnCollectionIDChanged();
		
		private int _CollectionID;
		public int CollectionID { 
		    get{
		        return _CollectionID;
		    } 
		    set{
		        this.OnCollectionIDChanging(value);
                this.SendPropertyChanging();
                this._CollectionID = value;
                this.SendPropertyChanged("CollectionID");
                this.OnCollectionIDChanged();
		    }
		}
		
        partial void OnCaseStyleIDChanging(int value);
        partial void OnCaseStyleIDChanged();
		
		private int _CaseStyleID;
		public int CaseStyleID { 
		    get{
		        return _CaseStyleID;
		    } 
		    set{
		        this.OnCaseStyleIDChanging(value);
                this.SendPropertyChanging();
                this._CaseStyleID = value;
                this.SendPropertyChanged("CaseStyleID");
                this.OnCaseStyleIDChanged();
		    }
		}
		
        partial void OnColourIDChanging(int value);
        partial void OnColourIDChanged();
		
		private int _ColourID;
		public int ColourID { 
		    get{
		        return _ColourID;
		    } 
		    set{
		        this.OnColourIDChanging(value);
                this.SendPropertyChanging();
                this._ColourID = value;
                this.SendPropertyChanged("ColourID");
                this.OnColourIDChanged();
		    }
		}
		
        partial void OnBraceletIDChanging(int value);
        partial void OnBraceletIDChanged();
		
		private int _BraceletID;
		public int BraceletID { 
		    get{
		        return _BraceletID;
		    } 
		    set{
		        this.OnBraceletIDChanging(value);
                this.SendPropertyChanging();
                this._BraceletID = value;
                this.SendPropertyChanged("BraceletID");
                this.OnBraceletIDChanged();
		    }
		}
		
        partial void OnRetailPriceChanging(decimal value);
        partial void OnRetailPriceChanged();
		
		private decimal _RetailPrice;
		public decimal RetailPrice { 
		    get{
		        return _RetailPrice;
		    } 
		    set{
		        this.OnRetailPriceChanging(value);
                this.SendPropertyChanging();
                this._RetailPrice = value;
                this.SendPropertyChanged("RetailPrice");
                this.OnRetailPriceChanged();
		    }
		}
		
        partial void OnWholesalePriceChanging(decimal value);
        partial void OnWholesalePriceChanged();
		
		private decimal _WholesalePrice;
		public decimal WholesalePrice { 
		    get{
		        return _WholesalePrice;
		    } 
		    set{
		        this.OnWholesalePriceChanging(value);
                this.SendPropertyChanging();
                this._WholesalePrice = value;
                this.SendPropertyChanged("WholesalePrice");
                this.OnWholesalePriceChanged();
		    }
		}
		
        partial void OnSalePriceChanging(decimal value);
        partial void OnSalePriceChanged();
		
		private decimal _SalePrice;
		public decimal SalePrice { 
		    get{
		        return _SalePrice;
		    } 
		    set{
		        this.OnSalePriceChanging(value);
                this.SendPropertyChanging();
                this._SalePrice = value;
                this.SendPropertyChanged("SalePrice");
                this.OnSalePriceChanged();
		    }
		}
		
        partial void OnGenderChanging(string value);
        partial void OnGenderChanged();
		
		private string _Gender;
		public string Gender { 
		    get{
		        return _Gender;
		    } 
		    set{
		        this.OnGenderChanging(value);
                this.SendPropertyChanging();
                this._Gender = value;
                this.SendPropertyChanged("Gender");
                this.OnGenderChanged();
		    }
		}
		
        partial void OnModelChanging(string value);
        partial void OnModelChanged();
		
		private string _Model;
		public string Model { 
		    get{
		        return _Model;
		    } 
		    set{
		        this.OnModelChanging(value);
                this.SendPropertyChanging();
                this._Model = value;
                this.SendPropertyChanged("Model");
                this.OnModelChanged();
		    }
		}
		
        partial void OnRefNoChanging(string value);
        partial void OnRefNoChanged();
		
		private string _RefNo;
		public string RefNo { 
		    get{
		        return _RefNo;
		    } 
		    set{
		        this.OnRefNoChanging(value);
                this.SendPropertyChanging();
                this._RefNo = value;
                this.SendPropertyChanged("RefNo");
                this.OnRefNoChanged();
		    }
		}
		
        partial void OnProductNameChanging(string value);
        partial void OnProductNameChanged();
		
		private string _ProductName;
		public string ProductName { 
		    get{
		        return _ProductName;
		    } 
		    set{
		        this.OnProductNameChanging(value);
                this.SendPropertyChanging();
                this._ProductName = value;
                this.SendPropertyChanged("ProductName");
                this.OnProductNameChanged();
		    }
		}
		
        partial void OnDescriptionChanging(string value);
        partial void OnDescriptionChanged();
		
		private string _Description;
		public string Description { 
		    get{
		        return _Description;
		    } 
		    set{
		        this.OnDescriptionChanging(value);
                this.SendPropertyChanging();
                this._Description = value;
                this.SendPropertyChanged("Description");
                this.OnDescriptionChanged();
		    }
		}
		
        partial void OnDiameterChanging(short? value);
        partial void OnDiameterChanged();
		
		private short? _Diameter;
		public short? Diameter { 
		    get{
		        return _Diameter;
		    } 
		    set{
		        this.OnDiameterChanging(value);
                this.SendPropertyChanging();
                this._Diameter = value;
                this.SendPropertyChanged("Diameter");
                this.OnDiameterChanged();
		    }
		}
		
        partial void OnMovementChanging(string value);
        partial void OnMovementChanged();
		
		private string _Movement;
		public string Movement { 
		    get{
		        return _Movement;
		    } 
		    set{
		        this.OnMovementChanging(value);
                this.SendPropertyChanging();
                this._Movement = value;
                this.SendPropertyChanged("Movement");
                this.OnMovementChanged();
		    }
		}
		
        partial void OnIncludesWarrantyChanging(bool value);
        partial void OnIncludesWarrantyChanged();
		
		private bool _IncludesWarranty;
		public bool IncludesWarranty { 
		    get{
		        return _IncludesWarranty;
		    } 
		    set{
		        this.OnIncludesWarrantyChanging(value);
                this.SendPropertyChanging();
                this._IncludesWarranty = value;
                this.SendPropertyChanged("IncludesWarranty");
                this.OnIncludesWarrantyChanged();
		    }
		}
		
        partial void OnCreatedChanging(DateTime value);
        partial void OnCreatedChanged();
		
		private DateTime _Created;
		public DateTime Created { 
		    get{
		        return _Created;
		    } 
		    set{
		        this.OnCreatedChanging(value);
                this.SendPropertyChanging();
                this._Created = value;
                this.SendPropertyChanged("Created");
                this.OnCreatedChanged();
		    }
		}
		
        partial void OnIsActiveChanging(bool value);
        partial void OnIsActiveChanged();
		
		private bool _IsActive;
		public bool IsActive { 
		    get{
		        return _IsActive;
		    } 
		    set{
		        this.OnIsActiveChanging(value);
                this.SendPropertyChanging();
                this._IsActive = value;
                this.SendPropertyChanged("IsActive");
                this.OnIsActiveChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the UserRole table in the Products Database.
    /// This class is queryable through ProductsDB.UserRole 
    /// </summary>

	public partial class UserRole: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public UserRole(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnUserRoleIDChanging(int value);
        partial void OnUserRoleIDChanged();
		
		private int _UserRoleID;
		public int UserRoleID { 
		    get{
		        return _UserRoleID;
		    } 
		    set{
		        this.OnUserRoleIDChanging(value);
                this.SendPropertyChanging();
                this._UserRoleID = value;
                this.SendPropertyChanged("UserRoleID");
                this.OnUserRoleIDChanged();
		    }
		}
		
        partial void OnRoleNameChanging(string value);
        partial void OnRoleNameChanged();
		
		private string _RoleName;
		public string RoleName { 
		    get{
		        return _RoleName;
		    } 
		    set{
		        this.OnRoleNameChanging(value);
                this.SendPropertyChanging();
                this._RoleName = value;
                this.SendPropertyChanged("RoleName");
                this.OnRoleNameChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<User> Users
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.Users
                       where items.UserRoleID == _UserRoleID
                       select items;
            }
        }

        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
    
    
    /// <summary>
    /// A class which represents the User table in the Products Database.
    /// This class is queryable through ProductsDB.User 
    /// </summary>

	public partial class User: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public User(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnUserIDChanging(int value);
        partial void OnUserIDChanged();
		
		private int _UserID;
		public int UserID { 
		    get{
		        return _UserID;
		    } 
		    set{
		        this.OnUserIDChanging(value);
                this.SendPropertyChanging();
                this._UserID = value;
                this.SendPropertyChanged("UserID");
                this.OnUserIDChanged();
		    }
		}
		
        partial void OnUserRoleIDChanging(int value);
        partial void OnUserRoleIDChanged();
		
		private int _UserRoleID;
		public int UserRoleID { 
		    get{
		        return _UserRoleID;
		    } 
		    set{
		        this.OnUserRoleIDChanging(value);
                this.SendPropertyChanging();
                this._UserRoleID = value;
                this.SendPropertyChanged("UserRoleID");
                this.OnUserRoleIDChanged();
		    }
		}
		
        partial void OnEmailChanging(string value);
        partial void OnEmailChanged();
		
		private string _Email;
		public string Email { 
		    get{
		        return _Email;
		    } 
		    set{
		        this.OnEmailChanging(value);
                this.SendPropertyChanging();
                this._Email = value;
                this.SendPropertyChanged("Email");
                this.OnEmailChanged();
		    }
		}
		
        partial void OnUsernameChanging(string value);
        partial void OnUsernameChanged();
		
		private string _Username;
		public string Username { 
		    get{
		        return _Username;
		    } 
		    set{
		        this.OnUsernameChanging(value);
                this.SendPropertyChanging();
                this._Username = value;
                this.SendPropertyChanged("Username");
                this.OnUsernameChanged();
		    }
		}
		
        partial void OnPasswordChanging(string value);
        partial void OnPasswordChanged();
		
		private string _Password;
		public string Password { 
		    get{
		        return _Password;
		    } 
		    set{
		        this.OnPasswordChanging(value);
                this.SendPropertyChanging();
                this._Password = value;
                this.SendPropertyChanged("Password");
                this.OnPasswordChanged();
		    }
		}
		
        partial void OnCreationDateChanging(DateTime value);
        partial void OnCreationDateChanged();
		
		private DateTime _CreationDate;
		public DateTime CreationDate { 
		    get{
		        return _CreationDate;
		    } 
		    set{
		        this.OnCreationDateChanging(value);
                this.SendPropertyChanging();
                this._CreationDate = value;
                this.SendPropertyChanged("CreationDate");
                this.OnCreationDateChanged();
		    }
		}
		
        partial void OnIsActiveChanging(bool value);
        partial void OnIsActiveChanged();
		
		private bool _IsActive;
		public bool IsActive { 
		    get{
		        return _IsActive;
		    } 
		    set{
		        this.OnIsActiveChanging(value);
                this.SendPropertyChanging();
                this._IsActive = value;
                this.SendPropertyChanged("IsActive");
                this.OnIsActiveChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<UserRole> UserRoles
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.UserRoles
                       where items.UserRoleID == _UserRoleID
                       select items;
            }
        }

        #endregion


        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
        public event PropertyChangingEventHandler PropertyChanging;
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void SendPropertyChanging()
        {
            var handler = PropertyChanging;
            if (handler != null)
               handler(this, emptyChangingEventArgs);
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

	}
	
}