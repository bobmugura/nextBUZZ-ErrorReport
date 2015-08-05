 <!doctype html>
<html>
<head>
	<title>Error Reporting</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="/includes/css/bootstrap.css" rel="stylesheet">
	<link href="/includes/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="/includes/css/bpLanding.css" rel="stylesheet">
	<link href="/includes/css/stylesheet.css" rel="stylesheet">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="/includes/js/bootstrap.js"></script>
</head>

<body>
<!--div class="background-image"> </div-->

<header id="header">
	<div class="container">
		<!--p align="right">iTrans-VIP</p-->
		<h1 align="center">NextBUZZ Error Report Page</h1>
	</div>
</header>

<section id="container">
<div class="container">
<div class="row highlights">
<div class="span12 use">

<div class="space"> </div>

<?php

    $servername = "localhost";
    $username = "root";
    $password = "root";
    $database = "error_reporting";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
        //die("Connection failed: " . $conn->connect_error);
        echo '<div class="alert alert-danger">Connection to error reporting database failed.</div>';
    } 
    //echo "Connected successfully";  

    if (isset($_POST['submit']))
    {
	    if (!empty($_POST['date'])&& !empty($_POST['busNumber']) && !empty($_POST['symptom_id'])) 
	    { //&& isset($_POST['time']) && isset($_POST['busNumber']) && isset($_POST['driver']) && isset($_POST['problem'])
	        //echo 'Got busNumber: '.$_POST['busNumber']. '!';

	        $query = "INSERT INTO errors VALUES (NULL, '".$_POST['date']."', '".$_POST['time']."', '".$_POST['busNumber']."', '".$_POST['driver']."', '".$_POST['problem']."', '".$_POST['symptom_id']."')";
	        
	        // Performing SQL query
	        if (!$conn->query($query))
	            echo '<div class="alert alert-danger">Query to errors table failed.</div>';
	            //echo 'Query failed: ' . $conn->error;
	        else
	        {
	    		echo '<div class="alert alert-success">Report submitted successfully!</div>';	        
		    	$date = $_POST['date'];
			    $time = $_POST['time'];
			    $busNumber = $_POST['busNumber'];
			    $driver = $_POST['driver'];
			    $symptom = $_POST['symptom_id'];
			    $problem = $_POST['problem'];

			    $email_from = 'bobmugura@gmail.com';
			    $email_subject = 'Georgia Tech Bus Error Report';
			    $email_body = "Date: $date  Time: $time\n Bus Number: $busNumber  Driver: $driver\n Symptom ID: $symptom\n Problem: $problem";
			    //$email_to = 'bobmugura@gmail.com';
			    $headers = "From: $email_from \r\n";

			    $query = "SELECT * FROM emails WHERE 1";
				$result = $conn->query($query);

				if (!$result)
		            echo 'Query failed: ' . $conn->error;
		        else
		        {
					$result->data_seek(0);
					$emails = array();

					while($row = $result->fetch_assoc())
					{
						$emails[] = $row['emailAddress'];
					}

				 	foreach ($emails as $email_to)
				 	{
					 	if (mail($email_to, $email_subject, $email_body, $headers)) 
						{ 
						    //echo 'Email notification sent.'; 
						} 
						else 
						{ 
						    echo '<div class="alert alert-danger">Unable to send email notification.</div>'; 
						}
				 	}
				}

		   		
			}

	    }
	    else {
	    	echo '<div class="alert alert-danger">Missing one or more required fields!</div>';
    	// if (empty($_POST['date'])) {
    	// 	echo '<h3 class="error">Date is missing</h3>';  		
     //   	}
    	// if (empty($_POST['busNumber'])) {
    	// 	echo '<h3 class="error">Bus number is missing</h3>';
    	// }
    	// if (empty($_POST['symptom_id'])) {
    	// 	echo '<h3 class="error">Problem type is missing</h3>';
    	// }
    }


	}

   
?>

<p><span class="error">Required fields in red</span></p>

<h2>Date &amp; Time</h2>

<form method="POST" action="/error_reporting.php">
		<span class = "error">Date:</span>
		<input type="date" name="date" id="date">

		<script>
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();

		if(dd<10) {
		dd='0'+dd;
		} 

		if(mm<10) {
		mm='0'+mm;
		} 

		today = yyyy+'-'+mm+'-'+dd;
		document.getElementById('date').value = today;
		</script>

		<span>Time:</span>
		<input type="time" name="time" id="time">
		<script>
		var today = new Date();
		var hour = today.getHours();
		var min = today.getMinutes();
		today = hour+':'+min;
		document.getElementById('time').value = today;
		</script><div></div>
	<h2>Bus Information</h2>
	<!--label for="number">Bus Number:</label>
		<input type="number" name="busNumber" id="number">
	<label for="textfield">Driver:</label>
		<input type="text" name="driver" id="textfield"-->
	 
	 	<?php

		$servername = "localhost";
		$username = "root";
		$password = "root";
		$database = "error_reporting";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $database);

		// Check connection
		if ($conn->connect_error) {
		    //die("Connection failed: " . $conn->connect_error);
		    echo '<div class="alert alert-danger">Connection to nextbuzz database failed.</div>';
		} 


		//*****auto-populate busNumber*****
		echo '<span class="error">Bus Number: </span>';
		echo '<select name = "busNumber">';

		$query = "SELECT * FROM buses WHERE 1 ORDER BY sortKey ASC";
		$result = $conn->query($query);

		if (!$result)
			echo '<div class="alert alert-danger">Query to buses table failed.</div>';
            //echo 'Query failed: ' . $conn->error;
        else
        {
			$result->data_seek(0);
			$busNums = array();

			while($row = $result->fetch_assoc())
			{
				$busNums[] = $row['name'];
			}

		 	foreach ($busNums as $value) {
		 		echo "<option value=\"$value\">$value</option>";
		 	}
		 	echo "<option value=\"N/A\">N/A</option>";
		}
		echo '</select>';
		//*****end auto-population of driver*****

		echo '<span>      </span>';

		//*****auto-populate driver*****
		echo '<span>Driver: </span>';
		echo '<select name = "driver">';

		$query = "SELECT * FROM drivers WHERE 1 ORDER BY sortKey ASC";
		$result = $conn->query($query);

		if (!$result)
			echo '<div class="alert alert-danger">Query to drivers table failed.</div>';
            //echo 'Query failed: ' . $conn->error;
        else
        {
			$result->data_seek(0);
			$drivers = array();

			while($row = $result->fetch_assoc())
			{
				$drivers[] = $row['surname'].', '.$row['firstname'];
			}

		 	foreach ($drivers as $value) {
		 		echo "<option value=\"$value\">$value</option>";
		 	}
		 	echo "<option value=\"N/A\">N/A</option>";
		}
		echo '</select>';
		//*****end auto-population of driver*****

		echo '<h2>Type of Tablet Problem</h2>';
		echo '<span class="error">Type: </span>';

	 	$servername = "localhost";
		$username = "root";
		$password = "root";
		$database = "error_reporting";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $database);

		// Check connection
		if ($conn->connect_error) {
		    //die("Connection failed: " . $conn->connect_error);
		    echo '<div class="alert alert-danger">Connection to error reporting database failed.</div>';
		} 

		//*****auto-populate symptom_id*****
		echo '<select name = "symptom_id">';

		$query = "SELECT * FROM symptoms WHERE 1 ORDER BY sort_value ASC";
		$result = $conn->query($query);

		if (!$result)
            echo '<div class="alert alert-danger">Query to symptoms table failed.</div>';
            //echo 'Query failed: ' . $conn->error;
        else
        {
			$result->data_seek(0);
			$symptoms = array();

			while($row = $result->fetch_assoc())
			{
				//echo $row['id'] . '' . $row['symptom']. '' . '<br>';
				$symptoms[$row['id']] = $row['symptom'];
			}

		 	//$symptoms = array('value' => 'name', 'value2' => 'name2');
		 	foreach ($symptoms as $value => $name) {
		 		echo "<option value=\"$value\">$name</option>";
		 	}
		}
		echo '</select>';
		//*****end auto-population of symptom_id*****
		?>		
	
	<h2> Problem Description </h2>
	<textarea name="problem" id="textarea" rows="3" cols="100"></textarea>
	<div class = "space"></div>
	<input type="submit" name="submit" id="submit" value="Submit">
</form>

</div>
</div>
</div>
</section>
</body>

</html>


