**ExceptionReporting**
====================

###**About the Exception Reporting**

This tool is a web-based form that is intended for the Georgia Tech Parking & Transportation managers to report problems on Georgia Tech Stingers and Trolleys. This tool is written with PHP, HTML, MySQL for database, and Bootstrap.js for front-end UI.

###**Setting up**

Clone the repository
Setup localhost server on your machine with software such as WAMP/MAMP
Copy all the files from the cloned repo and paste them into localhost server directory
There is text file containing MySQL statements to create tables which will be used by Exception Reporting website. You can run the queries within phpmyadmin to create the database.
You can now access the webpage. If using WAMP/MAMP through localhost, you can access the webpage by typing in localhost/error_reporting.php in your browser (assuming the port number is the default 8080).

###**How it works**

This web tool is for the managers to report problems with Georgia Tech buses and trolleys. The webpage requires six fields, three of which are mandatory:

- Date (required)
- Time
- Bus Number (required)
- Driver Name
- Type of Tablet Problem (required)
- Problem Description

The values to populate the dropdowns (bus # and driver) are retrieved from tables in the nextbuzz database, which assumed to already be present. The values for the type of tablet problem are populated from "symptoms" table in the error_reporting database. This table also has an additional column called "sort_value", which is used to sort the values in the order in which they appear when displayed in the drop down; this allows the user to specify the order so that, for example, the user can place the most frequently reported problem in the top. The values for bus # are ordered from least to greatest, and the values for driver are ordered alphabetically; both these dropdowns also have a "N/A" option in case the user does not remember the bus # or the driver's name.

The webpage ensures that the mandatory fields are filled out and submits this data into the "errors" table of the database. The webpage also sends out an email notification to the list of addresses specified in the "emails" table.