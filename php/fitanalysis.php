<?php
include_once( 'phpFitfileanalysis.php' );

$start = microtime(true);

$file = $argv[1];

$fit = new adriangibbons\phpFITFileAnalysis( $file );
printf( 'record: %d messages'.PHP_EOL, count($fit->data_mesgs['record']['timestamp'] ) );
printf( 'lap: %d messages'.PHP_EOL, count($fit->data_mesgs['lap']['timestamp'] ) );

$end = microtime(true);

printf( 'time: fitanalysis.php %s %f seconds'.PHP_EOL, $file, $end-$start)

?>
