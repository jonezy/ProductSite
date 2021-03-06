﻿


using System;
using System.ComponentModel;
using System.Linq;

namespace ProductSite.Data
{
    
    
    
    
    /// <summary>
    /// A class which represents the ProductCondition table in the Products Database.
    /// This class is queryable through ProductsDB.ProductCondition 
    /// </summary>

	public partial class ProductCondition: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductCondition(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductConditionIDChanging(int value);
        partial void OnProductConditionIDChanged();
		
		private int _ProductConditionID;
		public int ProductConditionID { 
		    get{
		        return _ProductConditionID;
		    } 
		    set{
		        this.OnProductConditionIDChanging(value);
                this.SendPropertyChanging();
                this._ProductConditionID = value;
                this.SendPropertyChanged("ProductConditionID");
                this.OnProductConditionIDChanged();
		    }
		}
		
        partial void OnConditionDescriptionChanging(string value);
        partial void OnConditionDescriptionChanged();
		
		private string _ConditionDescription;
		public string ConditionDescription { 
		    get{
		        return _ConditionDescription;
		    } 
		    set{
		        this.OnConditionDescriptionChanging(value);
                this.SendPropertyChanging();
                this._ConditionDescription = value;
                this.SendPropertyChanged("ConditionDescription");
                this.OnConditionDescriptionChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<Product> Products
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.Products
                       where items.Condition == _ProductConditionID
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
        public IQueryable<Product> Products
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.Products
                       where items.CollectionID == _ProductCollectionID
                       select items;
            }
        }

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
    /// A class which represents the ProductImage table in the Products Database.
    /// This class is queryable through ProductsDB.ProductImage 
    /// </summary>

	public partial class ProductImage: INotifyPropertyChanging, INotifyPropertyChanged
	{
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
	    
	    public ProductImage(){
	        OnCreated();
	    }
	    
	    #region Properties
	    
        partial void OnProductImageIDChanging(int value);
        partial void OnProductImageIDChanged();
		
		private int _ProductImageID;
		public int ProductImageID { 
		    get{
		        return _ProductImageID;
		    } 
		    set{
		        this.OnProductImageIDChanging(value);
                this.SendPropertyChanging();
                this._ProductImageID = value;
                this.SendPropertyChanged("ProductImageID");
                this.OnProductImageIDChanged();
		    }
		}
		
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
		
        partial void OnPathChanging(string value);
        partial void OnPathChanged();
		
		private string _Path;
		public string Path { 
		    get{
		        return _Path;
		    } 
		    set{
		        this.OnPathChanging(value);
                this.SendPropertyChanging();
                this._Path = value;
                this.SendPropertyChanged("Path");
                this.OnPathChanged();
		    }
		}
		

        #endregion

        #region Foreign Keys
        public IQueryable<Product> Products
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.Products
                       where items.ProductID == _ProductID
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
		
        partial void OnCollectionIDChanging(int? value);
        partial void OnCollectionIDChanged();
		
		private int? _CollectionID;
		public int? CollectionID { 
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
		
        partial void OnModelNumberChanging(string value);
        partial void OnModelNumberChanged();
		
		private string _ModelNumber;
		public string ModelNumber { 
		    get{
		        return _ModelNumber;
		    } 
		    set{
		        this.OnModelNumberChanging(value);
                this.SendPropertyChanging();
                this._ModelNumber = value;
                this.SendPropertyChanged("ModelNumber");
                this.OnModelNumberChanged();
		    }
		}
		
        partial void OnSerialNumberChanging(string value);
        partial void OnSerialNumberChanged();
		
		private string _SerialNumber;
		public string SerialNumber { 
		    get{
		        return _SerialNumber;
		    } 
		    set{
		        this.OnSerialNumberChanging(value);
                this.SendPropertyChanging();
                this._SerialNumber = value;
                this.SendPropertyChanged("SerialNumber");
                this.OnSerialNumberChanged();
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
		
        partial void OnModelNameChanging(string value);
        partial void OnModelNameChanged();
		
		private string _ModelName;
		public string ModelName { 
		    get{
		        return _ModelName;
		    } 
		    set{
		        this.OnModelNameChanging(value);
                this.SendPropertyChanging();
                this._ModelName = value;
                this.SendPropertyChanged("ModelName");
                this.OnModelNameChanged();
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
		
        partial void OnCaseSizeChanging(string value);
        partial void OnCaseSizeChanged();
		
		private string _CaseSize;
		public string CaseSize { 
		    get{
		        return _CaseSize;
		    } 
		    set{
		        this.OnCaseSizeChanging(value);
                this.SendPropertyChanging();
                this._CaseSize = value;
                this.SendPropertyChanged("CaseSize");
                this.OnCaseSizeChanged();
		    }
		}
		
        partial void OnCaseMaterialChanging(string value);
        partial void OnCaseMaterialChanged();
		
		private string _CaseMaterial;
		public string CaseMaterial { 
		    get{
		        return _CaseMaterial;
		    } 
		    set{
		        this.OnCaseMaterialChanging(value);
                this.SendPropertyChanging();
                this._CaseMaterial = value;
                this.SendPropertyChanged("CaseMaterial");
                this.OnCaseMaterialChanged();
		    }
		}
		
        partial void OnBezelChanging(string value);
        partial void OnBezelChanged();
		
		private string _Bezel;
		public string Bezel { 
		    get{
		        return _Bezel;
		    } 
		    set{
		        this.OnBezelChanging(value);
                this.SendPropertyChanging();
                this._Bezel = value;
                this.SendPropertyChanged("Bezel");
                this.OnBezelChanged();
		    }
		}
		
        partial void OnCrystalChanging(string value);
        partial void OnCrystalChanged();
		
		private string _Crystal;
		public string Crystal { 
		    get{
		        return _Crystal;
		    } 
		    set{
		        this.OnCrystalChanging(value);
                this.SendPropertyChanging();
                this._Crystal = value;
                this.SendPropertyChanged("Crystal");
                this.OnCrystalChanged();
		    }
		}
		
        partial void OnDialColourChanging(string value);
        partial void OnDialColourChanged();
		
		private string _DialColour;
		public string DialColour { 
		    get{
		        return _DialColour;
		    } 
		    set{
		        this.OnDialColourChanging(value);
                this.SendPropertyChanging();
                this._DialColour = value;
                this.SendPropertyChanged("DialColour");
                this.OnDialColourChanged();
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
		
        partial void OnFunctionsChanging(string value);
        partial void OnFunctionsChanged();
		
		private string _Functions;
		public string Functions { 
		    get{
		        return _Functions;
		    } 
		    set{
		        this.OnFunctionsChanging(value);
                this.SendPropertyChanging();
                this._Functions = value;
                this.SendPropertyChanged("Functions");
                this.OnFunctionsChanged();
		    }
		}
		
        partial void OnStrapChanging(string value);
        partial void OnStrapChanged();
		
		private string _Strap;
		public string Strap { 
		    get{
		        return _Strap;
		    } 
		    set{
		        this.OnStrapChanging(value);
                this.SendPropertyChanging();
                this._Strap = value;
                this.SendPropertyChanged("Strap");
                this.OnStrapChanged();
		    }
		}
		
        partial void OnWaterResistantChanging(string value);
        partial void OnWaterResistantChanged();
		
		private string _WaterResistant;
		public string WaterResistant { 
		    get{
		        return _WaterResistant;
		    } 
		    set{
		        this.OnWaterResistantChanging(value);
                this.SendPropertyChanging();
                this._WaterResistant = value;
                this.SendPropertyChanged("WaterResistant");
                this.OnWaterResistantChanged();
		    }
		}
		
        partial void OnConditionChanging(int? value);
        partial void OnConditionChanged();
		
		private int? _Condition;
		public int? Condition { 
		    get{
		        return _Condition;
		    } 
		    set{
		        this.OnConditionChanging(value);
                this.SendPropertyChanging();
                this._Condition = value;
                this.SendPropertyChanged("Condition");
                this.OnConditionChanged();
		    }
		}
		
        partial void OnBoxPapersChanging(string value);
        partial void OnBoxPapersChanged();
		
		private string _BoxPapers;
		public string BoxPapers { 
		    get{
		        return _BoxPapers;
		    } 
		    set{
		        this.OnBoxPapersChanging(value);
                this.SendPropertyChanging();
                this._BoxPapers = value;
                this.SendPropertyChanged("BoxPapers");
                this.OnBoxPapersChanged();
		    }
		}
		
        partial void OnWarrantyChanging(string value);
        partial void OnWarrantyChanged();
		
		private string _Warranty;
		public string Warranty { 
		    get{
		        return _Warranty;
		    } 
		    set{
		        this.OnWarrantyChanging(value);
                this.SendPropertyChanging();
                this._Warranty = value;
                this.SendPropertyChanged("Warranty");
                this.OnWarrantyChanged();
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
		
        partial void OnSoldChanging(bool? value);
        partial void OnSoldChanged();
		
		private bool? _Sold;
		public bool? Sold { 
		    get{
		        return _Sold;
		    } 
		    set{
		        this.OnSoldChanging(value);
                this.SendPropertyChanging();
                this._Sold = value;
                this.SendPropertyChanged("Sold");
                this.OnSoldChanged();
		    }
		}
		
        partial void OnNewArrivalChanging(bool? value);
        partial void OnNewArrivalChanged();
		
		private bool? _NewArrival;
		public bool? NewArrival { 
		    get{
		        return _NewArrival;
		    } 
		    set{
		        this.OnNewArrivalChanging(value);
                this.SendPropertyChanging();
                this._NewArrival = value;
                this.SendPropertyChanged("NewArrival");
                this.OnNewArrivalChanged();
		    }
		}
		
        partial void OnHotDealChanging(bool? value);
        partial void OnHotDealChanged();
		
		private bool? _HotDeal;
		public bool? HotDeal { 
		    get{
		        return _HotDeal;
		    } 
		    set{
		        this.OnHotDealChanging(value);
                this.SendPropertyChanging();
                this._HotDeal = value;
                this.SendPropertyChanged("HotDeal");
                this.OnHotDealChanged();
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
        public IQueryable<ProductCollection> ProductCollections
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductCollections
                       where items.ProductCollectionID == _CollectionID
                       select items;
            }
        }

        public IQueryable<ProductBrand> ProductBrands
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductBrands
                       where items.ProductBrandID == _BrandID
                       select items;
            }
        }

        public IQueryable<ProductCondition> ProductConditions
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductConditions
                       where items.ProductConditionID == _Condition
                       select items;
            }
        }

        public IQueryable<ProductImage> ProductImages
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.ProductImages
                       where items.ProductID == _ProductID
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
        public IQueryable<Product> Products
        {
            get
            {
                  var db=new ProductSite.Data.ProductsDB();
                  return from items in db.Products
                       where items.BrandID == _ProductBrandID
                       select items;
            }
        }

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
	
}