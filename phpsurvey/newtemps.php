<?php
header('Content-disposition: attachment; filename=newtemps.txt');
header('Content-type: application/text');
readfile('newtemps.txt');
?>
