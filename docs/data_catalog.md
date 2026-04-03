Data dictionary for Gold layer 

The gold layer is the business level data representation, structure to support analytical and reporting use case.
It consist dimension tables and fact tables for specific business metrics. 


# 📊 Data Catalog


## 1. gold_dim_customers
store customer details enrich with geogrphic and demographic data

| Column Name     | Data Type     | Description                                                        | 
| -----------     | ------------- | -------------------------------------------------------------------|                                        | 
| Customer_key    | INT           | surrogate key uniquely identify customer record in dimension table | 
| Customer_id     | INT           | Uniquely numerical identifier assigned to each customer            | 
| Customer_number | INT           | Alphanumeric identifier represent to each customer                 | 
| First_name      | VARCHAR(50)   | Customer's first name as record in the system                      | 
| Last_name       | VARCHAR(50)   | Customer's last name or family name                                |
| Country         | VARCHAR(50)   | The country of residence for the customer eg:(Australia)           |
| Material_status | VARCHAR(50)   | The material status of the customer (eg: 'Married','Single')       |
| Gender          | VARCHAR(50)   | The gender of the customer (eg: 'Male' ,'Female','N/A')            |
| Birth_date      | DATE          | The birthdate of the customer format as YYYY-MM-DD (eg:1990-05-08 )|
| Create_date     | DATE          | The date and time when the customer record are created in system   |



## 2. gold_dim_products
provide information about product and their attribute

| Column Name     | Data Type     | Description                                                                         | 
| -----------     | ------------- | ------------------------------------------------------------------------------------|                                        | 
| Product_key     | INT           | surrogate key uniquely identify each product record in product dimension table      | 
| Product_id      | INT           | Uniquely numerical identifier assigned to each product                              | 
| Product_number  | VARCHAR(50)   | structure alphanumerical identifier represent to each product                       | 
| Product_name    | VARCHAR(50)   | Descriptive name of product, including key detail such as type,colour,size          | 
| Category_id     | VARCHAR(50)   | unique identifier for products categoty linking to its high level classification    |                          |
| Category        | VARCHAR(50)   | The border classification of the product (eg: bike,component) of group related item |
| Subcategory     | VARCHAR(50)   | The more details classification of product within category                          |
| Maintenance     | VARCHAR(50)   | Indicate wheather the product require the maintenance                               |
| Product_cost    | INT           | The cost or base price of product                                                   |
| Product_line    | DATE          | The specific product or series where the product belongs (eg:'road','mountain')     |
| Start_date      | VARCHAR(50)   | The price per unit of the product for the line item                                 |


 
## 3. gold_facts_sales
store transactinal sales data for analytical purpose

| Column Name     | Data Type     | Description                                                           | 
| -----------     | ------------- | ----------------------------------------------------------------------|                                        | 
| Order_number    | VARCHAR(50)   | A unique alphanumerical identifier for each sales order               | 
| Product_key     | INT           | surrogate key linking the order to the product dimension table        | 
| Customer_key    | INT           | surrogate key linking the order to the customer dimension table       | 
| Order_date      | DATE          | The date when the order was placed                                    | 
| Shipping_date   | DATE          | The date when the order was shipped to the customer                   |
| Due_date        | DATE          | The date when the order payment was due                               |
| Sales_amount    | INT           | The total monetary value of the sale for the line item                |
| Quantity        | INT           | The number of unit of the product order for the line item             |
| Price           | INT            | The price per unit of for the line item                              |

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


* Sales is calculated as: `quantity * price`
