


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
        /// Primary Key: ProductCollectionID
        /// </summary>

        public class ProductCollectionTable: DatabaseTable {
            
            public ProductCollectionTable(IDataProvider provider):base("ProductCollection",provider){
                ClassName = "ProductCollection";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductCollectionID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = true,
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
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CollectionID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Gender", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10
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

                Columns.Add(new DatabaseColumn("ModelName", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("MovementType", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Features", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = -1
                });

                Columns.Add(new DatabaseColumn("MovementDetails", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("DialDescription", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Bezel", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("CaseDetails", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Caseback", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Age", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 100
                });

                Columns.Add(new DatabaseColumn("Strap", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = -1
                });

                Columns.Add(new DatabaseColumn("ConditionDetails", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = -1
                });

                Columns.Add(new DatabaseColumn("Condition", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 20
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
           
            public IColumn ModelName{
                get{
                    return this.GetColumn("ModelName");
                }
            }
            				
   			public static string ModelNameColumn{
			      get{
        			return "ModelName";
      			}
		    }
           
            public IColumn MovementType{
                get{
                    return this.GetColumn("MovementType");
                }
            }
            				
   			public static string MovementTypeColumn{
			      get{
        			return "MovementType";
      			}
		    }
           
            public IColumn Features{
                get{
                    return this.GetColumn("Features");
                }
            }
            				
   			public static string FeaturesColumn{
			      get{
        			return "Features";
      			}
		    }
           
            public IColumn MovementDetails{
                get{
                    return this.GetColumn("MovementDetails");
                }
            }
            				
   			public static string MovementDetailsColumn{
			      get{
        			return "MovementDetails";
      			}
		    }
           
            public IColumn DialDescription{
                get{
                    return this.GetColumn("DialDescription");
                }
            }
            				
   			public static string DialDescriptionColumn{
			      get{
        			return "DialDescription";
      			}
		    }
           
            public IColumn Bezel{
                get{
                    return this.GetColumn("Bezel");
                }
            }
            				
   			public static string BezelColumn{
			      get{
        			return "Bezel";
      			}
		    }
           
            public IColumn CaseDetails{
                get{
                    return this.GetColumn("CaseDetails");
                }
            }
            				
   			public static string CaseDetailsColumn{
			      get{
        			return "CaseDetails";
      			}
		    }
           
            public IColumn Caseback{
                get{
                    return this.GetColumn("Caseback");
                }
            }
            				
   			public static string CasebackColumn{
			      get{
        			return "Caseback";
      			}
		    }
           
            public IColumn Age{
                get{
                    return this.GetColumn("Age");
                }
            }
            				
   			public static string AgeColumn{
			      get{
        			return "Age";
      			}
		    }
           
            public IColumn Strap{
                get{
                    return this.GetColumn("Strap");
                }
            }
            				
   			public static string StrapColumn{
			      get{
        			return "Strap";
      			}
		    }
           
            public IColumn ConditionDetails{
                get{
                    return this.GetColumn("ConditionDetails");
                }
            }
            				
   			public static string ConditionDetailsColumn{
			      get{
        			return "ConditionDetails";
      			}
		    }
           
            public IColumn Condition{
                get{
                    return this.GetColumn("Condition");
                }
            }
            				
   			public static string ConditionColumn{
			      get{
        			return "Condition";
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