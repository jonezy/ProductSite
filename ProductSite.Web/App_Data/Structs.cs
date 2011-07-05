


using System;
using SubSonic.Schema;
using System.Collections.Generic;
using SubSonic.DataProviders;
using System.Data;

namespace ProductSite.Data {
	
        /// <summary>
        /// Table: ProductBrand
        /// Primary Key: ProductBrandID
        /// </summary>

        public class ProductBrandTable: DatabaseTable {
            
            public ProductBrandTable(IDataProvider provider):base("ProductBrand",provider){
                ClassName = "ProductBrand";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductBrandID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("BrandName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductBrandID{
                get{
                    return this.GetColumn("ProductBrandID");
                }
            }
            				
   			public static string ProductBrandIDColumn{
			      get{
        			return "ProductBrandID";
      			}
		    }
           
            public IColumn BrandName{
                get{
                    return this.GetColumn("BrandName");
                }
            }
            				
   			public static string BrandNameColumn{
			      get{
        			return "BrandName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: ProductCollection
        /// Primary Key: 
        /// </summary>

        public class ProductCollectionTable: DatabaseTable {
            
            public ProductCollectionTable(IDataProvider provider):base("ProductCollection",provider){
                ClassName = "ProductCollection";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductCollectionID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ProductBrandID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CollectionName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductCollectionID{
                get{
                    return this.GetColumn("ProductCollectionID");
                }
            }
            				
   			public static string ProductCollectionIDColumn{
			      get{
        			return "ProductCollectionID";
      			}
		    }
           
            public IColumn ProductBrandID{
                get{
                    return this.GetColumn("ProductBrandID");
                }
            }
            				
   			public static string ProductBrandIDColumn{
			      get{
        			return "ProductBrandID";
      			}
		    }
           
            public IColumn CollectionName{
                get{
                    return this.GetColumn("CollectionName");
                }
            }
            				
   			public static string CollectionNameColumn{
			      get{
        			return "CollectionName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: ProductCaseStyle
        /// Primary Key: ProductCaseStyleID
        /// </summary>

        public class ProductCaseStyleTable: DatabaseTable {
            
            public ProductCaseStyleTable(IDataProvider provider):base("ProductCaseStyle",provider){
                ClassName = "ProductCaseStyle";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductCaseStyleID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CaseStyleName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductCaseStyleID{
                get{
                    return this.GetColumn("ProductCaseStyleID");
                }
            }
            				
   			public static string ProductCaseStyleIDColumn{
			      get{
        			return "ProductCaseStyleID";
      			}
		    }
           
            public IColumn CaseStyleName{
                get{
                    return this.GetColumn("CaseStyleName");
                }
            }
            				
   			public static string CaseStyleNameColumn{
			      get{
        			return "CaseStyleName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: ProductColour
        /// Primary Key: ProductColourID
        /// </summary>

        public class ProductColourTable: DatabaseTable {
            
            public ProductColourTable(IDataProvider provider):base("ProductColour",provider){
                ClassName = "ProductColour";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductColourID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ColourName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductColourID{
                get{
                    return this.GetColumn("ProductColourID");
                }
            }
            				
   			public static string ProductColourIDColumn{
			      get{
        			return "ProductColourID";
      			}
		    }
           
            public IColumn ColourName{
                get{
                    return this.GetColumn("ColourName");
                }
            }
            				
   			public static string ColourNameColumn{
			      get{
        			return "ColourName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: ProductBracelet
        /// Primary Key: ProductBraceletID
        /// </summary>

        public class ProductBraceletTable: DatabaseTable {
            
            public ProductBraceletTable(IDataProvider provider):base("ProductBracelet",provider){
                ClassName = "ProductBracelet";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductBraceletID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("BraceletName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductBraceletID{
                get{
                    return this.GetColumn("ProductBraceletID");
                }
            }
            				
   			public static string ProductBraceletIDColumn{
			      get{
        			return "ProductBraceletID";
      			}
		    }
           
            public IColumn BraceletName{
                get{
                    return this.GetColumn("BraceletName");
                }
            }
            				
   			public static string BraceletNameColumn{
			      get{
        			return "BraceletName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: Product
        /// Primary Key: ProductID
        /// </summary>

        public class ProductTable: DatabaseTable {
            
            public ProductTable(IDataProvider provider):base("Product",provider){
                ClassName = "Product";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("BrandID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CollectionID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CaseStyleID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ColourID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("BraceletID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("RetailPrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Currency,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("WholesalePrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Currency,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("SalePrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Currency,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Gender", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 1
                });

                Columns.Add(new DatabaseColumn("Model", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("RefNo", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("ProductName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Description", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = -1
                });

                Columns.Add(new DatabaseColumn("Diameter", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int16,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Movement", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("IncludesWarranty", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Boolean,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Created", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("IsActive", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Boolean,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });
                    
                
                
            }
            
            public IColumn ProductID{
                get{
                    return this.GetColumn("ProductID");
                }
            }
            				
   			public static string ProductIDColumn{
			      get{
        			return "ProductID";
      			}
		    }
           
            public IColumn BrandID{
                get{
                    return this.GetColumn("BrandID");
                }
            }
            				
   			public static string BrandIDColumn{
			      get{
        			return "BrandID";
      			}
		    }
           
            public IColumn CollectionID{
                get{
                    return this.GetColumn("CollectionID");
                }
            }
            				
   			public static string CollectionIDColumn{
			      get{
        			return "CollectionID";
      			}
		    }
           
            public IColumn CaseStyleID{
                get{
                    return this.GetColumn("CaseStyleID");
                }
            }
            				
   			public static string CaseStyleIDColumn{
			      get{
        			return "CaseStyleID";
      			}
		    }
           
            public IColumn ColourID{
                get{
                    return this.GetColumn("ColourID");
                }
            }
            				
   			public static string ColourIDColumn{
			      get{
        			return "ColourID";
      			}
		    }
           
            public IColumn BraceletID{
                get{
                    return this.GetColumn("BraceletID");
                }
            }
            				
   			public static string BraceletIDColumn{
			      get{
        			return "BraceletID";
      			}
		    }
           
            public IColumn RetailPrice{
                get{
                    return this.GetColumn("RetailPrice");
                }
            }
            				
   			public static string RetailPriceColumn{
			      get{
        			return "RetailPrice";
      			}
		    }
           
            public IColumn WholesalePrice{
                get{
                    return this.GetColumn("WholesalePrice");
                }
            }
            				
   			public static string WholesalePriceColumn{
			      get{
        			return "WholesalePrice";
      			}
		    }
           
            public IColumn SalePrice{
                get{
                    return this.GetColumn("SalePrice");
                }
            }
            				
   			public static string SalePriceColumn{
			      get{
        			return "SalePrice";
      			}
		    }
           
            public IColumn Gender{
                get{
                    return this.GetColumn("Gender");
                }
            }
            				
   			public static string GenderColumn{
			      get{
        			return "Gender";
      			}
		    }
           
            public IColumn Model{
                get{
                    return this.GetColumn("Model");
                }
            }
            				
   			public static string ModelColumn{
			      get{
        			return "Model";
      			}
		    }
           
            public IColumn RefNo{
                get{
                    return this.GetColumn("RefNo");
                }
            }
            				
   			public static string RefNoColumn{
			      get{
        			return "RefNo";
      			}
		    }
           
            public IColumn ProductName{
                get{
                    return this.GetColumn("ProductName");
                }
            }
            				
   			public static string ProductNameColumn{
			      get{
        			return "ProductName";
      			}
		    }
           
            public IColumn Description{
                get{
                    return this.GetColumn("Description");
                }
            }
            				
   			public static string DescriptionColumn{
			      get{
        			return "Description";
      			}
		    }
           
            public IColumn Diameter{
                get{
                    return this.GetColumn("Diameter");
                }
            }
            				
   			public static string DiameterColumn{
			      get{
        			return "Diameter";
      			}
		    }
           
            public IColumn Movement{
                get{
                    return this.GetColumn("Movement");
                }
            }
            				
   			public static string MovementColumn{
			      get{
        			return "Movement";
      			}
		    }
           
            public IColumn IncludesWarranty{
                get{
                    return this.GetColumn("IncludesWarranty");
                }
            }
            				
   			public static string IncludesWarrantyColumn{
			      get{
        			return "IncludesWarranty";
      			}
		    }
           
            public IColumn Created{
                get{
                    return this.GetColumn("Created");
                }
            }
            				
   			public static string CreatedColumn{
			      get{
        			return "Created";
      			}
		    }
           
            public IColumn IsActive{
                get{
                    return this.GetColumn("IsActive");
                }
            }
            				
   			public static string IsActiveColumn{
			      get{
        			return "IsActive";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: UserRole
        /// Primary Key: UserRoleID
        /// </summary>

        public class UserRoleTable: DatabaseTable {
            
            public UserRoleTable(IDataProvider provider):base("UserRole",provider){
                ClassName = "UserRole";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("UserRoleID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("RoleName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });
                    
                
                
            }
            
            public IColumn UserRoleID{
                get{
                    return this.GetColumn("UserRoleID");
                }
            }
            				
   			public static string UserRoleIDColumn{
			      get{
        			return "UserRoleID";
      			}
		    }
           
            public IColumn RoleName{
                get{
                    return this.GetColumn("RoleName");
                }
            }
            				
   			public static string RoleNameColumn{
			      get{
        			return "RoleName";
      			}
		    }
           
                    
        }
        
        /// <summary>
        /// Table: User
        /// Primary Key: UserID
        /// </summary>

        public class UserTable: DatabaseTable {
            
            public UserTable(IDataProvider provider):base("User",provider){
                ClassName = "User";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("UserID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("UserRoleID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Email", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Username", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Password", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("CreationDate", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("IsActive", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Boolean,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });
                    
                
                
            }
            
            public IColumn UserID{
                get{
                    return this.GetColumn("UserID");
                }
            }
            				
   			public static string UserIDColumn{
			      get{
        			return "UserID";
      			}
		    }
           
            public IColumn UserRoleID{
                get{
                    return this.GetColumn("UserRoleID");
                }
            }
            				
   			public static string UserRoleIDColumn{
			      get{
        			return "UserRoleID";
      			}
		    }
           
            public IColumn Email{
                get{
                    return this.GetColumn("Email");
                }
            }
            				
   			public static string EmailColumn{
			      get{
        			return "Email";
      			}
		    }
           
            public IColumn Username{
                get{
                    return this.GetColumn("Username");
                }
            }
            				
   			public static string UsernameColumn{
			      get{
        			return "Username";
      			}
		    }
           
            public IColumn Password{
                get{
                    return this.GetColumn("Password");
                }
            }
            				
   			public static string PasswordColumn{
			      get{
        			return "Password";
      			}
		    }
           
            public IColumn CreationDate{
                get{
                    return this.GetColumn("CreationDate");
                }
            }
            				
   			public static string CreationDateColumn{
			      get{
        			return "CreationDate";
      			}
		    }
           
            public IColumn IsActive{
                get{
                    return this.GetColumn("IsActive");
                }
            }
            				
   			public static string IsActiveColumn{
			      get{
        			return "IsActive";
      			}
		    }
           
                    
        }
        
}