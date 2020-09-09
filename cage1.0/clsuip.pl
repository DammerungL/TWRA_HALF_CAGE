#! /usr/bin/perl
print "hello  water chuli1fragment £¡\n";

open (FH,"<suipian.txt");
open FP,'+> cl1suipian.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;

foreach my $a(@arry) {
	
	$i ++ ;
	$xing[$i] = 1 ;
	$a1[$i] = $a -> [0] ;
	$a2[$i] = $a -> [2] ;
	$Rshu[$i] = $a -> [4] ;
	$a4[$i] = $a -> [7] ;
	$a5[$i] = $a -> [8] ;
	$a6[$i] = $a -> [9] ;
	$a7[$i] = $a -> [10] ;
	$mi[$i][1] = $a -> [12] ;
	$mi[$i][2] = $a -> [13] ;
	$mi[$i][3] = $a -> [14] ;
	$mi[$i][4] = $a -> [15] ;
	$mi[$i][5] = $a -> [16] ;
	$a8[$i] = $a -> [17] ;
	$a9[$i] = $a -> [18] ;
	$a10[$i] = $a -> [19] ;
	$a11[$i] = $a -> [20] ;
	$a12[$i] = $a -> [21] ;
	$a13[$i] = $a -> [22] ;
	$a14[$i] = $a -> [23] ;
	$a15[$i] = $a -> [24] ;
	$a16[$i] = $a -> [25] ;
	$a17[$i] = $a -> [26] ;
	$a18[$i] = $a -> [27] ;
	$a19[$i] = $a -> [28] ;
	$a20[$i] = $a -> [29] ;
	$a21[$i] = $a -> [30] ;
	$a22[$i] = $a -> [31] ;
	$a23[$i] = $a -> [32] ;
	$a24[$i] = $a -> [33] ;
	$a25[$i] = $a -> [34] ;
	$a26[$i] = $a -> [35] ;
	$a27[$i] = $a -> [36] ;
	
	if ( $Rshu[$i] == 3 ) {
		
		$shu[$mi[$i][1]] ++ ;
		$fanxu[$mi[$i][1]][$shu[$mi[$i][1]]] = $i ;
		$shu[$mi[$i][2]] ++ ;
		$fanxu[$mi[$i][2]][$shu[$mi[$i][2]]] = $i ;
		$shu[$mi[$i][3]] ++ ;
		$fanxu[$mi[$i][3]][$shu[$mi[$i][3]]] = $i ;
		
	}
	if ( $Rshu[$i] == 4 ) {
		
		$shu[$mi[$i][1]] ++ ;
		$fanxu[$mi[$i][1]][$shu[$mi[$i][1]]] = $i ;
		$shu[$mi[$i][2]] ++ ;
		$fanxu[$mi[$i][2]][$shu[$mi[$i][2]]] = $i ;
		$shu[$mi[$i][3]] ++ ;
		$fanxu[$mi[$i][3]][$shu[$mi[$i][3]]] = $i ;
		$shu[$mi[$i][4]] ++ ;
		$fanxu[$mi[$i][4]][$shu[$mi[$i][4]]] = $i ;
		
	}
	if ( $Rshu[$i] == 5 ) {
		
		$shu[$mi[$i][1]] ++ ;
		$fanxu[$mi[$i][1]][$shu[$mi[$i][1]]] = $i ;
		$shu[$mi[$i][2]] ++ ;
		$fanxu[$mi[$i][2]][$shu[$mi[$i][2]]] = $i ;
		$shu[$mi[$i][3]] ++ ;
		$fanxu[$mi[$i][3]][$shu[$mi[$i][3]]] = $i ;
		$shu[$mi[$i][4]] ++ ;
		$fanxu[$mi[$i][4]][$shu[$mi[$i][4]]] = $i ;
		$shu[$mi[$i][5]] ++ ;
		$fanxu[$mi[$i][5]][$shu[$mi[$i][5]]] = $i ;
		
	}
	
#	print FP "$i -  $Rshu[$i] " ;
#	for ( $t = 1 ; $t <= $Rshu[$i] ; $t ++ ) {
		
#		print FP " $mi[$i][$t] ";
		
#	}
#	print FP " \n" ;
	
}

for ( $ii = 1 ; $ii <= $i ; $ii ++ ) {
	
	if ( $xing[$ii] == 1 ) {
	
	  for ( $j = 1 ; $j <= $shu[$mi[$ii][1]] ; $j ++ ) {
		
		  if ( ( $Rshu[$ii] == $Rshu[$fanxu[$mi[$ii][1]][$j]] ) && ( $ii != $fanxu[$mi[$ii][1]][$j] ) ) {
#			  print FP "$ii KK $fanxu[$mi[$ii][1]][$j] +$Rshu[$ii]+\n";
			  $panding = 0 ;
			  for ( $jj = 1 ; $jj <= $Rshu[$ii] ; $jj ++ ) {
				
				  for ( $jj_0 = 1 ; $jj_0 <= $Rshu[$ii] ; $jj_0 ++ ) {
					
					  if ( $mi[$ii][$jj] == $mi[$fanxu[$mi[$ii][1]][$j]][$jj_0] ) {
						
						  $panding ++ ;
						
					  }
					
				  }
				
			  }
#			  print FP " -$panding- ";
			  if ( $panding == $Rshu[$ii] ) {
			  	
			  	$xing[$fanxu[$mi[$ii][1]][$j]] = 0 ;
#			  	print FP "$ii DD $fanxu[$mi[$ii][1]][$j]\n";
			  	
			  }
			
		  }
		
	  }
	  
	  print FP "$a1[$ii] $a2[$ii] $Rshu[$ii] | $a4[$ii] $a5[$ii] $a6[$ii] $a7[$ii] | $mi[$ii][1] $mi[$ii][2] $mi[$ii][3] $mi[$ii][4] $mi[$ii][5] $a8[$ii] $a9[$ii] $a10[$ii] $a11[$ii] $a12[$ii] $a13[$ii] $a14[$ii] $a15[$ii] $a16[$ii] $a17[$ii] $a18[$ii] $a19[$ii] $a20[$ii] $a21[$ii] $a22[$ii] $a23[$ii] $a24[$ii] $a25[$ii] $a26[$ii] $a27[$ii]\n" ;
	
  }
	
}

close FH ;
close FP ;