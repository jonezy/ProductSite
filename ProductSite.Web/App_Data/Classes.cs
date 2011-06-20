


using System;
using System.ComponentModel;
using System.Linq;

namespace ProductSite.Data
{
    
    
    
    
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