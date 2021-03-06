<?php

//function definitions

//converts temps from F to C
//returns converted temp
function conv_from_f($value) {
    $newtemp = (5.0/9.0)*($value-32);
    return $newtemp;
}

//converts temps from C to F
//returns converted temp
function conv_from_c($value) {
    $newtemp = (((9.0/5.0)*$value)+32);
    return $newtemp;
}

//open a file for later writing
//will allow user to download converted temps
$OUTFILE = fopen("newtemps.txt",'w') or die ("Can't open file");

if ($_FILES['file']['error'] > 0) {
    echo "Error: " . $_FILES['file']['error'] . "</br>";
    die();
}
else {
    $temp = $_FILES["file"]["tmp_name"];
    $input = file_get_contents($temp);

    //converted inputted string to array
    //makes it easier to parse later
    $input = explode("\n", $input);
    echo "Your data was: </br>";
    foreach ($input as $data) {
	echo $data . "</br>";
    }
}
$line = 0; //for debugging
echo "Your converted temperatures are: </br>";
foreach($input as $data) {
    $line++;
    //pull out temp and unit separately
    $newdata = explode("|",$data);
    if(isset($newdata[0], $newdata[1])) {
	$value = $newdata[0];
	$unit = $newdata[1];
	if(is_numeric($value)) {
	    $value = intval($value);
	}
    }
    else {
	echo "<a href='newtemps.php'>Download this file</a>";
	die();
    }
    if(isset($value, $unit)) {
	if(is_int($value) && ($unit == 'F' || $unit == 'f')) {
	    $newvalue = conv_from_f($value);
	    $output = $newvalue . "|C\n";
	    fwrite($OUTFILE, $output);
	    echo $output . "</br>";
	}
	else if (is_int($value) && ($unit == 'C' || $unit == 'c')) {
	    $newvalue = conv_from_c($value);
	    $output =  $newvalue . "|F\n";
	    fwrite($OUTFILE, $output);
	    echo $output . "</br>";
	}
	else {
	    $output =  "Invalid input data line " . $line . "\n";
	    fwrite($OUTFILE, $output);
	    echo $output . "</br>";
	}
    }
}
fclose($OUTFILE);

?>
