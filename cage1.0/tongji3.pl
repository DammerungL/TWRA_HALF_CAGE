#! /usr/bin/perl
print "hello  water chuli1fragment £¡\n";

open (FH,"<sanping.txt");
open FP,'+> 3pinglei.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;
$j = 0 ;

foreach my $a(@arry) {
	
	$i ++ ;
	$a1_1 = $a -> [4] ; 
	$a2_2 = $a -> [5] ; 
	$a3_3 = $a -> [6] ; 
	$a4_4 = $a -> [7] ; 
	$type = ( $a1_1 * 1000 ) + ( $a2_2 * 100 ) + ( $a3_3 * 10 ) + ( $a4_4 ) ;
	$panding = 1 ;
	for ( $jj = 1 ; $jj <= $j ; $jj ++ ) {
		
		if ( $type == $tongji[$jj] ) {
			
			$panding = 0 ;
			$shu[$tongji[$jj]] ++ ;
			
		}
		
	}
	
	if ( $panding == 1 ) {
		
		$j ++ ;
		$tongji[$j] = $type ;
		$shu[$tongji[$j]] ++ ;
		
	}
	
}

for ( $t = 0 ; $t <= 3 ; $t ++ ) {
	
	for ( $t1 = 0 ; $t1 <= ( 3 - $t ) ; $t1 ++ ) {
		
		for ( $t2 = 0 ; $t2 <= ( 3 - $t - $t1 ) ; $t2 ++ ) {
			
			for ( $t3 = 0 ; $t3 <= ( 3 - $t - $t1 - $t2 ) ; $t3 ++ ) {
				
				if ( ( $t + $t1 + $t2 + $t3 ) == 3 ) {
			  	
			  	$t0 = ( $t * 1000 ) + ( $t1 * 100 ) + ( $t2 *10 ) + ( $t3 ) ; 
				
				  if ( $shu[$t0] == 0 ) {
					
					  $shu[$t0] = 0 ;
					
				  }
				
				  print FP " $t$t1$t2$t3  $shu[$t0] ";
				
			  }
				
			}
			
		}
		
	}
	
}



print FP " _ $i \n";