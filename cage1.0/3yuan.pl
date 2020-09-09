#! /usr/bin/perl
print "hello  ÈýÔªÆ´»· £¡\n";

sub findsangou {
	
	my $zhongxin = $_[0] ;
	my $ges = $_[1] ;
	
	if ( $ges == 3 ) {
		
		&chuli( $zhongxin , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
		
	}
	
	if ( $ges == 4 ) {
		
		&chuli( $zhongxin , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][1] ) ;
		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] ) ;
		
	}
#	if ( $ges == 5 ) {
#		
#		&chuli( $zhongxin , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][2] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][1] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][3] , $xinglin[$zhongxin][2] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][2] ) ;
#		&chuli( $zhongxin , $xinglin[$zhongxin][5] , $xinglin[$zhongxin][4] , $xinglin[$zhongxin][3] ) ;
#		
#	}
	
}

sub chuli {
	
	my $zone = $_[0] ;
	my $one = $_[1] ;
	my $two = $_[2] ;
	my $three = $_[3] ;
	my $pand1 = 0 ;
	my $jcp1 = 0 ;
	my $jcpp1 = 0 ;#
	my $pand2 = 0 ;
	my $jcp2 = 0 ;
	my $jcpp2 = 0 ;#
	my $pand3 = 0 ;
	my $jcp3 = 0 ;
	my $jcpp3 = 0 ;#
	my $four = 0 ;
	my $five = 0 ;
	my $six = 0 ;
	my $seven = 0 ;
	
	for ( $t0 = 1 ; $t0 <= $jsihu[$zone] ; $t0 ++ ) {
		
		$bidui0 = $fanxu[$zone][$t0] ;
		
	#12
		for ( $t1 = 1 ; $t1 <= $jsihu[$one] ; $t1 ++ ) {
			
			$bidui1 = $fanxu[$one][$t1] ;
			
			if ( $bidui0 == $bidui1 ) {
				
				for ( $t2 = 1 ; $t2 <= $jsihu[$two] ; $t2 ++ ) {
					
					$bidui2 = $fanxu[$two][$t2] ;
					
					if ( $bidui0 == $bidui2 ) {
						
						$jcpp1 ++ ;
						$pand1[$jcpp1] = $huanxing[$bidui0] ;
						$jcp1[$jcpp1] = $bidui2 ;
						
					}
					
				}
				
			}
			
		}
	#13
		for ( $t1 = 1 ; $t1 <= $jsihu[$one] ; $t1 ++ ) {
			
			$bidui1 = $fanxu[$one][$t1] ;
			
			if ( $bidui0 == $bidui1 ) {
				
				for ( $t3 = 1 ; $t3 <= $jsihu[$three] ; $t3 ++ ) {
					
					$bidui3 = $fanxu[$three][$t3] ;
					
					if ( $bidui0 == $bidui3 ) {
						
						$jcpp2 ++ ;
						$pand2[$jcpp2] = $huanxing[$bidui0] ;
						$jcp2[$jcpp2] = $bidui3 ;
						
					}
					
				}
				
			}
			
		}	
	#23
		for ( $t2 = 1 ; $t2 <= $jsihu[$two] ; $t2 ++ ) {
			
			$bidui2 = $fanxu[$two][$t2] ;
			
			if ( $bidui0 == $bidui2 ) {
				
				for ( $t3 = 1 ; $t3 <= $jsihu[$three] ; $t3 ++ ) {
					
					$bidui3 = $fanxu[$three][$t3] ;
					
					if ( $bidui0 == $bidui3 ) {
						
						$jcpp3 ++ ;
						$pand3[$jcpp3] = $huanxing[$bidui0] ;
						$jcp3[$jcpp3] = $bidui3 ;
						
					}
					
				}
				
			}
			
		}
		
	}
	
	if ( ( $jcpp1 * $jcpp2 * $jcpp3 ) > 0 ) {
		
		for ( $oo1 = 1 ; $oo1 <= $jcpp1 ; $oo1 ++ ) {
			
			for ( $oo2 = 1 ; $oo2 <= $jcpp2 ; $oo2 ++ ) {
				
				for ( $oo3 = 1 ; $oo3 <= $jcpp3 ; $oo3 ++ ) {
					
					print FP "$zone  $one $two $three " ;
					
					if ( $pand1[$oo1] == 4 ) {
			
		      	$four ++ ;
			
	      	}
		
	      	if ( $pand2[$oo2] == 4 ) {
			
	      		$four ++ ;
			
	      	}
		
      		if ( $pand3[$oo3] == 4 ) {
			
	      		$four ++ ;
			
      		}
		
	      	if ( $pand1[$oo1] == 5 ) {
			
      			$five ++ ;
			
	      	}
		
	      	if ( $pand2[$oo2] == 5 ) {
			
	      		$five ++ ;
			
	      	}
		
	       	if ( $pand3[$oo3] == 5 ) {
			
		      	$five ++ ;
			
	       	}
		
	      	if ( $pand1[$oo1] == 6 ) {
			
      			$six ++ ;
			
	      	}
		
	      	if ( $pand2[$oo2] == 6 ) {
			
		      	$six ++ ;
			
		      }
		
	      	if ( $pand3[$oo3] == 6 ) {
			
		      	$six ++ ;
			
	      	}
		
		      if ( $pand1[$oo1] == 7 ) {
			
		        $seven ++ ;
			
	        }
		
	      	if ( $pand2[$oo2] == 7 ) {
			
			      $seven ++ ;
			
	       	}
		
	       	if ( $pand3[$oo3] == 7 ) {
			
	      		$seven ++ ;
			
	      	}
		
	       	print FP " $four $five $six $seven  $jcp1[$oo1] $jcp2[$oo2] $jcp3[$oo3]\n" ;
	       	
	       	$four = 0 ;
	       	$five = 0 ;
	       	$six = 0 ;
	       	$seven = 0 ;
					
				}
				
			}
			
		}
		
	}
	
}

open (FH,"<ch2chuli.txt");
open (FHH,"<cj1.txt");
open FP,'+> sanping.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;

foreach my $a(@arry) {
	
#	print " $i " ;
	$i ++ ;
	$huanxing[$i] = $a -> [0] ;
	$huanxu[$i][1] = $a -> [1] ;
	$xingzhi[$huanxu[$i][1]] = 1 ;
	$jsihu[$huanxu[$i][1]] ++ ;
	$fanxu[$huanxu[$i][1]][$jsihu[$huanxu[$i][1]]] = $i ;
	$huanxu[$i][2] = $a -> [2] ;
	$xingzhi[$huanxu[$i][2]] = 1 ;
	$jsihu[$huanxu[$i][2]] ++ ;
	$fanxu[$huanxu[$i][2]][$jsihu[$huanxu[$i][2]]] = $i ;
	$huanxu[$i][3] = $a -> [3] ;
	$xingzhi[$huanxu[$i][3]] = 1 ;
	$jsihu[$huanxu[$i][3]] ++ ;
	$fanxu[$huanxu[$i][3]][$jsihu[$huanxu[$i][3]]] = $i ;
	$huanxu[$i][4] = $a -> [4] ;
	$xingzhi[$huanxu[$i][4]] = 1 ;
	$jsihu[$huanxu[$i][4]] ++ ;
	$fanxu[$huanxu[$i][4]][$jsihu[$huanxu[$i][4]]] = $i ;
	$huanxu[$i][5] = $a -> [5] ;
	if ( $huanxu[$i][5] != 0 ) {
		
		$xingzhi[$huanxu[$i][5]] = 1 ;
	  $jsihu[$huanxu[$i][5]] ++ ;
  	$fanxu[$huanxu[$i][5]][$jsihu[$huanxu[$i][5]]] = $i ;
		
	}
	$huanxu[$i][6] = $a -> [6] ;
	if ( $huanxu[$i][6] != 0 ) {
		
		$xingzhi[$huanxu[$i][6]] = 1 ;
	  $jsihu[$huanxu[$i][6]] ++ ;
  	$fanxu[$huanxu[$i][6]][$jsihu[$huanxu[$i][6]]] = $i ;
		
	}
	$huanxu[$i][7] = $a -> [7] ;
	if ( $huanxu[$i][7] != 0 ) {
		
		$xingzhi[$huanxu[$i][7]] = 1 ;
	  $jsihu[$huanxu[$i][7]] ++ ;
  	$fanxu[$huanxu[$i][7]][$jsihu[$huanxu[$i][7]]] = $i ;
		
	}
	
#	print FP "$i $huanxing[$i] $huanxu[$i][1] $jsihu[$huanxu[$i][1]] $fanxu[$huanxu[$i][1]][$jsihu[$huanxu[$i][1]]] || $huanxu[$i][2] $jsihu[$huanxu[$i][2]] $fanxu[$huanxu[$i][2]][$jsihu[$huanxu[$i][2]]] || $huanxu[$i][3] $jsihu[$huanxu[$i][3]] $fanxu[$huanxu[$i][3]][$jsihu[$huanxu[$i][3]]] || $huanxu[$i][4] $jsihu[$huanxu[$i][4]] $fanxu[$huanxu[$i][4]][$jsihu[$huanxu[$i][4]]] || $huanxu[$i][5] $jsihu[$huanxu[$i][5]] $fanxu[$huanxu[$i][5]][$jsihu[$huanxu[$i][5]]] || $huanxu[$i][6] $jsihu[$huanxu[$i][6]] $fanxu[$huanxu[$i][6]][$jsihu[$huanxu[$i][6]]] || $huanxu[$i][7] $jsihu[$huanxu[$i][7]] $fanxu[$huanxu[$i][7]][$jsihu[$huanxu[$i][7]]]\n" ;
	
}

while (<FHH>){

   push @arrry ,[split] ;
	
}

$ii = 0 ;

foreach my $b(@arrry) {
	
	$ii ++ ;
	$qinjshu[$ii] = $b -> [1] ;
	$xinglin[$ii][1] = $b -> [2] ;
	$xinglin[$ii][2] = $b -> [3] ;
	$xinglin[$ii][3] = $b -> [4] ;
	$xinglin[$ii][4] = $b -> [5] ;
	$xinglin[$ii][5] = $b -> [6] ;
	
}

for ( $j = 1 ; $j <= $ii ; $j ++ ) {
	
	if (  $qinjshu[$j] != 0  ) {
		
		&findsangou( $j , $qinjshu[$j] ) ;
		
	}
	
}

close FH ;
close FHH ;
close FP ;