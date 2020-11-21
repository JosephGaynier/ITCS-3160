
# ITCS-3160
### Author
Joseph Gaynier
### Description
ITCS-3160 project with frontend, backend, and database 
### Introduction (Team, Project Description)
Team: Joseph Gaynier  
Project Description:  
The goal of this project is to take the Campus Eats Model database and add a ratings system to it.  
Customers will be able to rate drivers and restaurant.  
Customers will be able to view restaurant ratings.  
Admins will be able to view drivers and restaurant ratings.  
### Use Case for Rating System
![alt text](Images/UseCase.jpg)
### Business Rules
1. Customers can opt out of giving ratings
2. Customers can view restaurant ratings
### EERD (full database)
![alt text](Images/ERD.JPG)
### MySQL Queries
### Stored Procedure
### Web/App Implementation (Optional) or Description of Future Work
### MySQL dump
### Data Dictionary
<body>
<h1>Schema Report for database: campus_eats_fall2020</h1>
<a id="home">Table List </a><br /><ul>
<li><a href="#delivery">delivery </a></li>
<li><a href="#driver">driver </a></li>
<li><a href="#faculty">faculty </a></li>
<li><a href="#location">location </a></li>
<li><a href="#order">order </a></li>
<li><a href="#person">person </a></li>
<li><a href="#ratings">ratings </a></li>
<li><a href="#restaurant">restaurant </a></li>
<li><a href="#staff">staff </a></li>
<li><a href="#student">student </a></li>
<li><a href="#vehicle">vehicle </a></li>
</ul>
<a id="delivery"></a><table style="width:100%"><caption>Table: delivery </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>delivery_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>driver_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>vehicle_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>delivery_time</td><td>DATETIME</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="driver"></a><table style="width:100%"><caption>Table: driver </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>driver_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>student_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>license_number</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>date_hired</td><td>DATE</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>rating</td><td>FLOAT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="faculty"></a><table style="width:100%"><caption>Table: faculty </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>faculty_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>person_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>title</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>degree_college</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>highest_degree</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="location"></a><table style="width:100%"><caption>Table: location </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>location_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>location_name</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>location_address</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>latitude</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>longitude</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>drop_off_point</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="order"></a><table style="width:100%"><caption>Table: order </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>order_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>person_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>delivery_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>location_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>driver_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>restaurant_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>total_price</td><td>FLOAT</td><td>Yes</td><td>No</td><td>No</td><td></td><td></td></tr>
<tr><td>delivery_charge</td><td>FLOAT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="person"></a><table style="width:100%"><caption>Table: person </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>person_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>person_name</td><td>VARCHAR(300)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>person_email</td><td>VARCHAR(150)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>cell</td><td>BIGINT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="ratings"></a><table style="width:100%"><caption>Table: ratings </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>rating_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>driver1</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>driver2</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>driver3</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>restaurant1</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>restaurant2</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>restaurant3</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>comment</td><td>VARCHAR(120)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>order_id</td><td>INT</td><td>No</td><td>No</td><td>Yes</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="restaurant"></a><table style="width:100%"><caption>Table: restaurant </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>restaurant_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>location</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>restaurant_name</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>schedule</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>website</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="staff"></a><table style="width:100%"><caption>Table: staff </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>staff_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>person_id</td><td>INT</td><td>No</td><td>No</td><td>Yes</td><td>NULL</td><td></td></tr>
<tr><td>position</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>is_admin</td><td>VARCHAR(1)</td><td>No</td><td>No</td><td>No</td><td>'N'</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="student"></a><table style="width:100%"><caption>Table: student </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>student_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>person_id</td><td>INT</td><td>Yes</td><td>No</td><td>Yes</td><td></td><td></td></tr>
<tr><td>graduation_year</td><td>INT</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>major</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>type</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
<a id="vehicle"></a><table style="width:100%"><caption>Table: vehicle </caption>
<tr><td>Table Comments</td><td colspan="6"></td></tr>
<tr><td colspan="7">Columns</td></tr>
        <tr>
        <th>Name</th>
        <th>Data Type</th>
        <th>Nullable</th>
        <th>PK</th>
        <th>FK</th>
        <th>Default</th>
        <th>Comment</th>
        </tr>
<tr><td>vehicle_id</td><td>INT</td><td>Yes</td><td>Yes</td><td>No</td><td></td><td></td></tr>
<tr><td>vehicle_plate</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>model</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
<tr><td>make</td><td>VARCHAR(75)</td><td>No</td><td>No</td><td>No</td><td>NULL</td><td></td></tr>
</table><a href="#home">Table List </a></br>
</body></html>

### PPT Video (link)
