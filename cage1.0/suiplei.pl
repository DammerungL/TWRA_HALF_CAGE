#! /usr/bin/perl
print "hello  water chuli1fragment £¡\n";

open (FH,"<cl1suipian.txt");
open FP,'+> suilei.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;
$j = 0 ;

foreach my $a(@arry) {
	
	$i ++ ;
	$a1_1 = $a -> [0] ;
	$a2_2 = $a -> [1] ;
	$a3_3 = $a -> [2] ;
	
	$a4_4 = $a -> [4] ;
	$a5_5 = $a -> [5] ;
	$a6_6 = $a -> [6] ;
	$a7_7 = $a -> [7] ;
	
	$type = ( $a1_1 * 10000000 ) + ( $a2_2 * 100000 ) + ( $a3_3 * 10000 ) + ( $a4_4 * 1000 ) + ( $a5_5 * 100 ) + ( $a6_6 * 10 ) + ( $a7_7 ) ;
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

for ( $tt = 6 ; $tt <= 17 ; $tt ++ ) {
	
	for ( $tt1 = 6 ; $tt1 <= 18 ; $tt1 ++ ) {
		
		for ( $tt3 = 3 ; $tt3 <= 4 ; $tt3 ++ ) {
			
			if ( ( $tt - $tt1 + $tt3 ) == 2 ) {
				
				for ( $t = 0 ; $t <= $tt3 ; $t ++ ) {###
	
        	for ( $t1 = 0 ; $t1 <= ( $tt3 - $t ) ; $t1 ++ ) {
		
        		for ( $t2 = 0 ; $t2 <= ( $tt3 - $t - $t1 ) ; $t2 ++ ) {
			
		        	for ( $t3 = 0 ; $t3 <= ( $tt3 - $t - $t1 - $t2 ) ; $t3 ++ ) {
				
			        	if ( ( $t + $t1 + $t2 + $t3 ) == $tt3 ) {
			  	
			          	$t0 = ( $tt * 10000000 ) + ( $tt1 * 100000 ) + ( $tt3 * 10000 ) + ( $t * 1000 ) + ( $t1 * 100 ) + ( $t2 *10 ) + ( $t3 ) ; 
				
			         	  if ( $shu[$t0] == 0 ) {
					
				         	  $shu[$t0] = 0 ;
					
			        	  }
				
			        	  print FP " $tt$tt1$tt2$tt3$t$t1$t2$t3 $shu[$t0] ";
				
			          }
				
		        	}
			
	       	  }
		
        	}
	
        }
				
			}
			
		}
		
	}
	
	
}



print FP " _ $i \n";