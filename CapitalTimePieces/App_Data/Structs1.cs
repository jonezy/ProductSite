


using System;
using SubSonic.Schema;
using System.Collections.Generic;
using SubSonic.DataProviders;
using System.Data;

namespace ProductSite.Data {
	
        /// <summary>
        /// Table: ProductCondition
        /// Primary Key: ProductConditionID
        /// </summary>

        public class ProductConditionTable: DatabaseTable {
            
            public ProductConditionTable(IDataProvider provider):base("ProductCondition",provider){
                ClassName = "ProductCondition";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductConditionID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ConditionDescription", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });
                    
                
                
            }
            
            public IColumn ProductConditionID{
                get{
                    return this.GetColumn("ProductConditionID");
                }
            }
            				
   			public static string ProductConditionIDColumn{
			      get{
        			return "ProductConditionID";
      			}
		    }
           
            public IColumn ConditionDescription{
                get{
                    return this.GetColumn("ConditionDescription");
                }
            }
            				
   			public static string ConditionDescriptionColumn{
			      get{
        			return "ConditionDescription";
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
        /// Table: ProductImage
        /// Primary Key: ProductImageID
        /// </summary>

        public class ProductImageTable: DatabaseTable {
            
            public ProductImageTable(IDataProvider provider):base("ProductImage",provider){
                ClassName = "ProductImage";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("ProductImageID", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ProductID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("Path", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });
                    
                
                
            }
            
            public IColumn ProductImageID{
                get{
                    return this.GetColumn("ProductImageID");
                }
            }
            				
   			public static string ProductImageIDColumn{
			      get{
        			return "ProductImageID";
      			}
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
           
            public IColumn Path{
                get{
                    return this.GetColumn("Path");
                }
            }
            				
   			public static string PathColumn{
			      get{
        			return "Path";
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
	                IsForeignKey = true,
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
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("ModelNumber", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("SerialNumber", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 150
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

                Columns.Add(new DatabaseColumn("RetailPrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Decimal,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("WholesalePrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Decimal,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("SalePrice", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Decimal,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("CaseSize", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("CaseMaterial", this)
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

                Columns.Add(new DatabaseColumn("Crystal", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("DialColour", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Movement", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Functions", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Strap", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("WaterResistant", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 50
                });

                Columns.Add(new DatabaseColumn("Condition", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = true,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("BoxPapers", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
                });

                Columns.Add(new DatabaseColumn("Warranty", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.String,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 500
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

                Columns.Add(new DatabaseColumn("HotDeal", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Boolean,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0
                });

                Columns.Add(new DatabaseColumn("NewArrival", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Boolean,
	                IsNullable = true,
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
           
            public IColumn ModelNumber{
                get{
                    return this.GetColumn("ModelNumber");
                }
            }
            				
   			public static string ModelNumberColumn{
			      get{
        			return "ModelNumber";
      			}
		    }
           
            public IColumn SerialNumber{
                get{
                    return this.GetColumn("SerialNumber");
                }
            }
            				
   			public static string SerialNumberColumn{
			      get{
        			return "SerialNumber";
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
           
            public IColumn CaseSize{
                get{
                    return this.GetColumn("CaseSize");
                }
            }
            				
   			public static string CaseSizeColumn{
			      get{
        			return "CaseSize";
      			}
		    }
           
            public IColumn CaseMaterial{
                get{
                    return this.GetColumn("CaseMaterial");
                }
            }
            				
   			public static string CaseMaterialColumn{
			      get{
        			return "CaseMaterial";
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
           
            public IColumn Crystal{
                get{
                    return this.GetColumn("Crystal");
                }
            }
            				
   			public static string CrystalColumn{
			      get{
        			return "Crystal";
      			}
		    }
           
            public IColumn DialColour{
                get{
                    return this.GetColumn("DialColour");
                }
            }
            				
   			public static string DialColourColumn{
			      get{
        			return "DialColour";
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
           
            public IColumn Functions{
                get{
                    return this.GetColumn("Functions");
                }
            }
            				
   			public static string FunctionsColumn{
			      get{
        			return "Functions";
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
           
            public IColumn WaterResistant{
                get{
                    return this.GetColumn("WaterResistant");
                }
            }
            				
   			public static string WaterResistantColumn{
			      get{
        			return "WaterResistant";
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
           
            public IColumn BoxPapers{
                get{
                    return this.GetColumn("BoxPapers");
                }
            }
            				
   			public static string BoxPapersColumn{
			      get{
        			return "BoxPapers";
      			}
		    }
           
            public IColumn Warranty{
                get{
                    return this.GetColumn("Warranty");
                }
            }
            				
   			public static string WarrantyColumn{
			      get{
        			return "Warranty";
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
           
            public IColumn HotDeal{
                get{
                    return this.GetColumn("HotDeal");
                }
            }
            				
   			public static string HotDealColumn{
			      get{
        			return "HotDeal";
      			}
		    }
           
            public IColumn NewArrival{
                get{
                    return this.GetColumn("NewArrival");
                }
            }
            				
   			public static string NewArrivalColumn{
			      get{
        			return "NewArrival";
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
	                IsForeignKey = false,
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
        
}