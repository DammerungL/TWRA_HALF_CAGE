#! /usr/bin/perl
print "hello  half-cages !\n";

sub findhalf_cage {
	
	my $dimian = $_[0] ;
	my $biaoi = $_[1] ;
	my $targe = $_[2] ;
	my $panding = $_[3] ;
#	print FP "*$dimian $biaoi $targe $panding* " ; 
	if ( $biaoi <= $targe ) {
		
		for ( my $r = 1 ; $r <= $jishu[$dimian] ; $r ++ ) {
#			print FP "if ( ( $s_zhongxin[$fanxu[$dimian][$r]] == $dian_j[$biaoi] ) && ( $s_xing[$fanxu[$dimian][$r]] == 1 ) )¡¾*$dimian $biaoi $targe $panding*¡¿\n" ;
			if ( ( $s_zhongxin[$fanxu[$dimian][$r]] == $dian_j[$biaoi] ) && ( $s_xing[$fanxu[$dimian][$r]] == 1 ) ) {
				
				###
				my $pcnm = 0 ; 
#				print FP "[ ($fanxu[$dimian][$r]) " ;
				for ( my $cnm = 1 ; $cnm <= 3 ; $cnm ++ ) {
#					print FP " ($hu_i[$cnm][$fanxu[$dimian][$r]])== ( ( $panding == 0 )|| ( $hu_i[$cnm][$fanxu[$dimian][$r]] == $panding ) ) :\n" ;
					if ( ( $panding == 0 )|| ( $hu_i[$cnm][$fanxu[$dimian][$r]] == $panding ) ) {
						
						$pcnm = 1 ;
#						print FP " -($hu_i[$cnm][$fanxu[$dimian][$r]])- " ;
						
					}
					
				}
#				print FP "]\n";
				###
				if ( $panding == 0 ) {
					
					if ( ( $hu_i[1][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_xing[$hu_i[1][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[1][$fanxu[$dimian][$r]]] != 4 ) ) {  #######
						
						$lins[$biaoi] = $hu_i[1][$fanxu[$dimian][$r]] ;
						$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
						$s_xing[$fanxu[$dimian][$r]] = 0 ;
#						print FP " #1[$hu_i[1][$fanxu[$dimian][$r]]]&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[1][$fanxu[$dimian][$r]] ¡¾$hu_xing[$hu_i[1][$fanxu[$dimian][$r]]]¡¿) \n" ;
						&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[1][$fanxu[$dimian][$r]] ) ;
						
					}
					
					if ( ( $hu_i[2][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_xing[$hu_i[2][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[2][$fanxu[$dimian][$r]]] != 4 ) ) {  ######
						
						$lins[$biaoi] = $hu_i[2][$fanxu[$dimian][$r]] ;
						$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
						$s_xing[$fanxu[$dimian][$r]] = 0 ;
#						print FP " #1[$hu_i[2][$fanxu[$dimian][$r]]]&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[2][$fanxu[$dimian][$r]] ¡¾$hu_xing[$hu_i[2][$fanxu[$dimian][$r]]]¡¿) \n" ;
						&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[2][$fanxu[$dimian][$r]] ) ;
						
					}
					
					if ( ( $hu_i[3][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_xing[$hu_i[3][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[3][$fanxu[$dimian][$r]]] != 4 ) ) {  #######
						
						$lins[$biaoi] = $hu_i[3][$fanxu[$dimian][$r]] ;
						$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
						$s_xing[$fanxu[$dimian][$r]] = 0 ;
#						print FP " #1[$hu_i[3][$fanxu[$dimian][$r]]]&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[3][$fanxu[$dimian][$r]] ¡¾$hu_xing[$hu_i[3][$fanxu[$dimian][$r]]]¡¿) \n" ;
						&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[3][$fanxu[$dimian][$r]] ) ;
						
					}
					
				}
				###
#				print FP "% $hu_i[1][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_i[1][$fanxu[$dimian][$r]] != $panding ) && ( $pcnm == 1 % \n" ;
				if ( ( $hu_i[1][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_i[1][$fanxu[$dimian][$r]] != $panding ) && ( $pcnm == 1 ) && ( $panding != 0 ) && ( $hu_xing[$hu_i[1][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[1][$fanxu[$dimian][$r]]] != 4 ) ) {  #####
					
					#  &findhalf_cage( $j , 1 , $hu_xing[$j] , 0 ) ;
					$lins[$biaoi] = $hu_i[1][$fanxu[$dimian][$r]] ;
					$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
					$s_xing[$fanxu[$dimian][$r]] = 0 ;
#					print FP " #1[$hu_i[1][$fanxu[$dimian][$r]]]&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[1][$fanxu[$dimian][$r]] ) \n" ;
					&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[1][$fanxu[$dimian][$r]] ) ;
					
				}
				else { 
					
					if ( ( $hu_i[2][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_i[2][$fanxu[$dimian][$r]] != $panding ) && ( $pcnm == 1 ) && ( $panding != 0 ) && ( $hu_xing[$hu_i[2][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[2][$fanxu[$dimian][$r]]] != 4 ) ) {  ######
						
						#  &
						$lins[$biaoi] = $hu_i[2][$fanxu[$dimian][$r]] ;
						$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
						$s_xing[$fanxu[$dimian][$r]] = 0 ;
#						print FP " #2&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[2][$fanxu[$dimian][$r]] ) \n" ;
						&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[2][$fanxu[$dimian][$r]] ) ;
						
					}
					else {
						
						#  &
						if ( ( $hu_i[3][$fanxu[$dimian][$r]] != $dimian ) && ( $hu_i[3][$fanxu[$dimian][$r]] != $panding ) && ( $pcnm == 1 ) && ( $panding != 0 ) && ( $hu_xing[$hu_i[3][$fanxu[$dimian][$r]]] != 7 ) && ( $hu_xing[$hu_i[3][$fanxu[$dimian][$r]]] != 4 ) ) {  ######
							
							$lins[$biaoi] = $hu_i[3][$fanxu[$dimian][$r]] ;
							$lins_x[$biaoi] = $fanxu[$dimian][$r] ;
							$s_xing[$fanxu[$dimian][$r]] = 0 ;
#							print FP " #3&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[3][$fanxu[$dimian][$r]] ) \n" ;
							&findhalf_cage( $dimian , $biaoi + 1 , $targe , $hu_i[3][$fanxu[$dimian][$r]] ) ;
							
						}
						else {
							
#							$s_xing[$fanxu[$dimian][$r]] = 0 ;
#							print FP "::: $fanxu[$dimian][$r] = $s_xing[$fanxu[$dimian][$r]] \n" ;
							
						}
						
					}
					
				}
				
			}
		
		}
		
	}
	if ( $biaoi > $targe ) {
		
		#print
		
		#########
		my $zuihou = 0 ;
		for ( my $zuih_0 = 1 ; $zuih_0 <= 3 ; $zuih_0 ++ ) {
			
			if ( $panding == $hu_i[$zuih_0][$lins_x[1]] ) {
				
				$zuihou = 1 ;
				
			}
			
		}
		my $pan6_6_iii = 0 ;
		
		if ( $hu_xing[$lins[0]] == 6 ) {
			
			for ( my $fuj_0 = 1 ; $fuj_0 <= 6 ; $fuj_0 ++ ) {
			        if ( $hu_xing[$lins[$fuj_0]] == 6 ) {
					$pan6_6_iii ++ ; ####del	
				}	
				if ( ( $hu_xing[$lins[$fuj_0]] == 3 ) || ( $hu_xing[$lins[$fuj_0]] == 4 ) ) {
					
					$zuihou = 0 ;
					
				}
				
			}
			if ( $pan6_6_iii >= 1 ) { ######del
				$zuihou = 0 ;
			}
				
		}
		
		
		###
		
		my $pan5_6_i = 0 ;
		
		###
		
		if ( $hu_xing[$lins[0]] == 5 ) {
			
			for ( my $fuj_0 = 1 ; $fuj_0 <= 6 ; $fuj_0 ++ ) {
				
				if ( $hu_xing[$lins[$fuj_0]] == 6 ) {
					
					$pan5_6_i ++ ;
					
				}
				
				if ( ( $hu_xing[$lins[$fuj_0]] == 4 ) || ( $hu_xing[$lins[$fuj_0]] == 3 ) ) {
					
					$zuihou = 0 ;
					
				}
				
			}
			
			if ( $pan5_6_i > 1 ) { ######1
				
				$zuihou = 0 ;
				
			}
				
		}
		
		my @pand_linx = () ;
		my $pan_lin_x_z = 0 ;
		
		for ( my $TRE = 1 ; $TRE <= $targe ; $TRE ++ ) {
			
			$pand_linx[$lins_x[$TRE]] ++ ;
			if ( $pand_linx[$lins_x[$TRE]] == 1 ) {
				
				$pan_lin_x_z ++ ;
				
			}
			
		}
		
		if ( $pan_lin_x_z < $targe ) {
			
			$zuihou = 0 ;
			
		}
		
		
		#########
		if ( ( $zuihou == 1 ) && ( $targe != 7 ) && ( $targe != 3 ) ) {
			
			print FPP "  $targe " ;
			print FP " $targe " ;
			
		  for ( my $ER = 0 ; $ER <= $targe ; $ER ++ ) {
		  	
			  print FPP "  $lins[$ER] " ;
			  print FP " $lins_x[$ER] " ;
			
		  }
		  print FPP "\n";
		  print FP "\n" ;
#		  print FP "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc\n";
		
	  }
	}
	
}

open (FH,"<sanping.txt"); 
open (FHH,"<ch2chuli.txt");
open (TT,"<ch2chuli.txt");
open FP,'+> half-cage-fb.txt';
open FPP,'+> half-cages-mian.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;

foreach my $a(@arry){
	
	$i++;
	$s_xing[$i] = 0 ;
	$s_zhongxin[$i] = $a -> [0] ;
	$hu_i[1][$i] = $a -> [8] ;
	$jishu[$hu_i[1][$i]] ++ ;
	$fanxu[$hu_i[1][$i]][$jishu[$hu_i[1][$i]]] = $i ;
	$hu_i[2][$i] = $a -> [9] ;
	$jishu[$hu_i[2][$i]] ++ ;
	$fanxu[$hu_i[2][$i]][$jishu[$hu_i[2][$i]]] = $i ;
	$hu_i[3][$i] = $a -> [10] ;
	$jishu[$hu_i[3][$i]] ++ ;
	$fanxu[$hu_i[3][$i]][$jishu[$hu_i[3][$i]]] = $i ;
	
}

####

while (<TT>){

   push @tt ,[split] ;
	
}

$tq = 0 ; 

foreach my $b(@tt){
	
	$tq ++ ;
	$hu_xing[$tq] = $b -> [0] ;
	$dian_jt[$tq][1] = $b -> [1] ;
	$dian_jt[$tq][2] = $b -> [2] ;
	$dian_jt[$tq][3] = $b -> [3] ;
	$dian_jt[$tq][4] = $b -> [4] ;
	$dian_jt[$tq][5] = $b -> [5] ;
	$dian_jt[$tq][6] = $b -> [6] ;
	$dian_jt[$tq][7] = $b -> [7] ;
	
}

####

while (<FHH>){

   push @arrry ,[split] ;
	
}

$j = 0 ;

foreach my $a(@arrry){
	
	$j ++ ;
	$hu_xing[$j] = $a -> [0] ;
	$dian_j[1] = $a -> [1] ;
	$dian_j[2] = $a -> [2] ;
	$dian_j[3] = $a -> [3] ;
	$dian_j[4] = $a -> [4] ;
	$dian_j[5] = $a -> [5] ;
	$dian_j[6] = $a -> [6] ;
	$dian_j[7] = $a -> [7] ;
	@lins = () ;
	
#	print FP " - $j  $hu_xing[$j] $jishu[$j] --" ;
	for ( my $t = 1 ; $t <= $jishu[$j] ; $t ++ ) {
		
		$s_xing[$fanxu[$j][$t]] = 1 ;
#	print FP " $fanxu[$j][$t] ($s_xing[$fanxu[$j][$t]])[$s_zhongxin[$fanxu[$j][$t]]]" ;
		
	}
#  print FP "\n" ;
	if ( ( $jishu[$j] >= ( 2 * $s_xing[$fanxu[$j][$t]] ) ) && ( $hu_xing[$j] != 7 ) && ( $hu_xing[$j] != 4 ) ) {
		
		$lins[0] = $j ;
		&findhalf_cage( $j , 1 , $hu_xing[$j] , 0 ) ;
#		print FP "#########################################################\n";
		&findhalf_cage( $j , 1 , $hu_xing[$j] , 0 ) ;
		
	}
	
	if ( ( ( $jishu[$j] >= $s_xing[$fanxu[$j][$t]] ) && ( $jishu[$j] < ( 2 * $s_xing[$fanxu[$j][$t]] ) ) ) && ( $hu_xing[$j] != 7 ) && ( $hu_xing[$j] != 4 ) ) {
		
#		&findhalf_cage(  ) ;
    $lins[0] = $j ;
    &findhalf_cage( $j , 1 , $hu_xing[$j] , 0 ) ;
		
	}
#	print FP "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" ;
	
}

close FH ;
close FHH ;
close FP ;
close FPP ;
close TT ;


#####################################___________xiuzheng__________##################

open (XZY,"<half-cages-mian.txt");
open (XZE,"<half-cage-fb.txt");
open FPY,'+> half-cage-fb_0.txt';
open FPE,'+> half-cages-mian_0.txt';

while (<XZY>){

   push @xzy ,[split] ;
	
}

while (<XZE>){

   push @xze ,[split] ;
	
}

$i_xzy = 0 ;

foreach my $a(@xzy){
	
	$i_xzy ++ ;
	$biao_xing_xzy[$i_xzy] = $a -> [0] ;
	$mian_i_xzy[0] = $a -> [1] ;
	$mian_i_xzy[1] = $a -> [2] ;
	$mian_i_xzy[2] = $a -> [3] ;
	$mian_i_xzy[3] = $a -> [4] ;
	$mian_i_xzy[4] = $a -> [5] ;
	$mian_i_xzy[5] = $a -> [6] ;
	$mian_i_xzy[6] = $a -> [7] ;
	$pan_shifu_shuchu[$i_xzy] = 1 ;
#	print FPE " $biao_xing_xzy[$i_xzy] ";
	
	my @pd_dian = () ;
	my $pd_d_jishu = 0 ;
	
	for ( my $i_hhd = 0 ; $i_hhd <= $biao_xing_xzy[$i_xzy] ; $i_hhd ++ ) {
		
#		print FPE " $mian_i_xzy[$i_hhd] # $hu_xing[$mian_i_xzy[$i_hhd]] # [ " ;
		
		for ( my $j_hhd = 1 ; $j_hhd <= $hu_xing[$mian_i_xzy[$i_hhd]] ; $j_hhd ++ ) {
			
#			print FPE " $dian_jt[$mian_i_xzy[$i_hhd]][$j_hhd] , " ;
			
			$pd_dian[$dian_jt[$mian_i_xzy[$i_hhd]][$j_hhd]] ++ ;
			
			if ( $pd_dian[$dian_jt[$mian_i_xzy[$i_hhd]][$j_hhd]] == 1 ) {
				
				$pd_d_jishu ++ ;
				
			}
			
		}
		
#		print FPE " ] " ;
		
	}
	
#	print FPE "\n" ;

#  print FPE " $pd_d_jishu \n"; 
	
	if ( ( $biao_xing_xzy[$i_xzy] == 5 ) && ( $pd_d_jishu < 15 ) ) {
		
		$pan_shifu_shuchu[$i_xzy] = 0 ;
		
	}
	
	if ( ( $biao_xing_xzy[$i_xzy] == 6 ) && ( $pd_d_jishu != 18 ) ) {
		
		$pan_shifu_shuchu[$i_xzy] = 0 ;
		
	}
	
	if ( $pan_shifu_shuchu[$i_xzy] == 1 ) {
		
		print FPE " $biao_xing_xzy[$i_xzy] $mian_i_xzy[0] $mian_i_xzy[1] $mian_i_xzy[2] $mian_i_xzy[3] $mian_i_xzy[4] $mian_i_xzy[5] $mian_i_xzy[6] $mian_i_xzy[7]\n" ;
		
	}
	
}

$i_xze = 0 ;

foreach my $a(@xze){
	
	$i_xze ++ ;
	
	if ( $pan_shifu_shuchu[$i_xze] == 1 ) {
		
		print FPY " @$a \n" ;
		
	}
	
}

close XZY ;
close XZE ;
close FPE ;
close FPY ;
