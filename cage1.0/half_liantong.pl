#! /usr/bin/perl
print "hello  half-cages_liantong !\n";

sub LYT_0 {
	
	my $FIRST = $_[0] ;
	my $TIMES = $_[1] ;
	my $TYPES = $_[2] ;
	
	my $linshi_P = 1 ;
	
#	print FP " $FIRST  $TIMES  $TYPES  #" ;
	
	for ( my $xun_L_P = 1 ; $xun_L_P <= $TIMES ; $xun_L_P ++ ) {
		
		$linshi_P = $linshi_P * $jinhes_i[$c_liantong_s[$FIRST][$xun_L_P]] ;
#		print FP " $linshi_P * " ;
		
	}
#	print FP " $linshi_P \n" ;
	if ( $linshi_P == 0 ) {
		
		for ( my $xun_L_P = 1 ; $xun_L_P <= $TIMES ; $xun_L_P ++ ) {
			
			if ( $jinhes_i[$c_liantong_s[$FIRST][$xun_L_P]] == 0 ) {
				
				$jinhes_i[$c_liantong_s[$FIRST][$xun_L_P]] = $TYPES ;
				&LYT_0( $c_liantong_s[$FIRST][$xun_L_P] , $c_jshu[$c_liantong_s[$FIRST][$xun_L_P]] , $jinhes_i[$c_liantong_s[$FIRST][$xun_L_P]] ) ;
				
			}
			
		}
		
	}
	
}

open (HCM,"<half-cages-mian_0.txt") ; 
open (HCF,"<half-cage-fb_0.txt") ;
open FP,'+> TheLagrestOne.txt';
open FPP,'+> AllofThem.txt';

while (<HCM>){

   push @hcm ,[split] ;
	
}

$i = 0 ; 

foreach my $a(@hcm){
	
	$i ++ ;
	$lei[$i] = $a -> [0] ;
	$mian[$i][0] = $a -> [1] ;
	$jishu[$mian[$i][0]] ++ ;
	$fanxu[$mian[$i][0]][$jishu[$mian[$i][0]]] = $i ;
	$mian[$i][1] = $a -> [2] ;
	$jishu[$mian[$i][1]] ++ ;
	$fanxu[$mian[$i][1]][$jishu[$mian[$i][1]]] = $i ;
	$mian[$i][2] = $a -> [3] ;
	$jishu[$mian[$i][2]] ++ ;
	$fanxu[$mian[$i][2]][$jishu[$mian[$i][2]]] = $i ;
	$mian[$i][3] = $a -> [4] ;
	$jishu[$mian[$i][3]] ++ ;
	$fanxu[$mian[$i][3]][$jishu[$mian[$i][3]]] = $i ;
	$mian[$i][4] = $a -> [5] ;
	$jishu[$mian[$i][4]] ++ ;
	$fanxu[$mian[$i][4]][$jishu[$mian[$i][4]]] = $i ;
	$mian[$i][5] = $a -> [6] ;
	$jishu[$mian[$i][5]] ++ ;
	$fanxu[$mian[$i][5]][$jishu[$mian[$i][5]]] = $i ;
	$mian[$i][6] = $a -> [7] ;
	$jishu[$mian[$i][6]] ++ ;
	$fanxu[$mian[$i][6]][$jishu[$mian[$i][6]]] = $i ;
#	print FP " $mian[$i][0]   $mian[$i][1]   $mian[$i][2]  $mian[$i][3]  $mian[$i][4]  $mian[$i][5]  $mian[$i][6]  \n" ;
#	$liantong[$i][0] = 0 ;
#	$liantongshu[$i] = 0 ;
	
}

for ( $j = 1 ; $j <= $i ; $j ++ ) {
	
	@liantong_p = () ;
	@liantong_s = () ;
	$js_0 = 0 ;
	$jinhes_i[$j] = 0 ;
#	print FP " $j ($jinhes_i[$j]) " ;
	for ( $t = 0 ; $t <= $lei[$j] ; $t ++ ) {
#		print FP "# $mian[$j][$t] #" ;
		for ( $k = 1 ; $k <= $jishu[$mian[$j][$t]] ; $k ++ ) {
			
			$liantong_p[$fanxu[$mian[$j][$t]][$k]] ++ ;
			if ( ( $liantong_p[$fanxu[$mian[$j][$t]][$k]] == 1 ) && ( $fanxu[$mian[$j][$t]][$k] != 0 ) ) {
				
				$js_0 ++ ;
				$liantong_s[$js_0] = $fanxu[$mian[$j][$t]][$k] ;
#				print FP " $liantong_s[$js_0] " ;
				$c_liantong_s[$j][$js_0] = $liantong_s[$js_0] ; 
				
			}
			
		}
		
	}
#	print FP "# $js_0 \n" ;
	$c_jshu[$j] = $js_0 ;
#	print FP " $c_jshu[$j]  | " ;
	for ( $yyy = 1 ; $yyy <= $c_jshu[$j] ; $yyy ++ ) {
		
#		print FP " $c_liantong_s[$j][$yyy] " ;
		
	}
#	print FP "\n";
	
}

$TheOne = 1 ;

for ( $i_i = 1 ; $i_i <= $i ; $i_i ++ ) {
	
	if ( $jinhes_i[$i_i] == 0 ) {
		
		$jinhes_i[$i_i] = $TheOne ;
		&LYT_0( $i_i , $c_jshu[$i_i] , $jinhes_i[$i_i] ) ;
		
		$TheOne ++ ;
		
	}
	
}

$TheOne = $TheOne - 1 ;
@TheOne_j = () ;

for ( $i_i = 1 ; $i_i <= $i ; $i_i ++ ) {
	
#	print FP " $i_i  ( $jinhes_i[$i_i] / $TheOne ) \n" ;
	$TheOne_j[$jinhes_i[$i_i]] ++ ;
	$TheOne_j_j[$jinhes_i[$i_i]][$TheOne_j[$jinhes_i[$i_i]]] = $i_i ;
	
}

##
#+read_ch2chuli.txt_dianshu

open (RHD,"<ch2chuli.txt") ; 

while (<RHD>) {
	
	push @rhd ,[split] ;
	
}

$g = 0 ;

foreach my $a(@rhd){
	
	$g ++ ;
	$Huanxin_g[$g] = $a -> [0] ;
	$huan_g_d[$g][1] = $a -> [1] ;
	$huan_g_d[$g][2] = $a -> [2] ;
	$huan_g_d[$g][3] = $a -> [3] ;
	$huan_g_d[$g][4] = $a -> [4] ;
	if ( $Huanxin_g[$g] > 4 ) {
		
		$huan_g_d[$g][5] = $a -> [5] ;
		
		if ( $Huanxin_g[$g] > 5 ) {
			
			$huan_g_d[$g][6] = $a -> [6] ;
			
			if ( $Huanxin_g[$g] > 6 ) {
				
				$huan_g_d[$g][7] = $a -> [7] ;
				
			}
			
		}
		
	}
	
}

###############################################################################read_fuben####################

while (<HCF>){

   push @hcf ,[split] ;
	
}

$nb = 0 ;

foreach my $c(@hcf){
	
	$nb ++ ;
	$sanping[$nb][1] = $c -> [1] ;
	$sanping[$nb][2] = $c -> [2] ;
	$sanping[$nb][3] = $c -> [3] ;
	$sanping[$nb][4] = $c -> [4] ;
	$sanping[$nb][5] = $c -> [5] ;
	$sanping[$nb][6] = $c -> [6] ;
	
}

#############################################################################################################read_3ping.txt

open (RSP,"<sanping.txt") ; 

while (<RSP>){

   push @rsp ,[split] ;
	
}

$sp_i = 0 ; 

foreach my $c(@rsp){
	
	$sp_i ++ ;
	$sanping_types_5[$sp_i] = $c -> [5] ;
	$sanping_types_6[$sp_i] = $c -> [6] ;
	$sanping_types[$sp_i] = ( 100 * $sanping_types_5[$sp_i] ) + ( 10 * $sanping_types_6[$sp_i] ) ;
	
}

##############################################################################################################

#
##

for ( $j_j = 1 ; $j_j <= $TheOne ; $j_j ++ ) {
	
	print FPP " $j_j " ;
	
#	$mian_shu = 0 ;
	@mian_shu_P = () ;
	@dian_shu_p = () ;
	@sanping_shu_P = () ;
	$five[$j_j] = 0 ;
	$six[$j_j] = 0 ;
	$swo[$j_j] = 0 ;
	$ewl[$j_j] = 0 ;
	
	for ( $j_j_0 = 1 ; $j_j_0 <= $TheOne_j[$j_j] ; $j_j_0 ++ ) {
		
#		print FP " $TheOne_j_j[$j_j][$j_j_0] #" ; #
		###########################################################################################The_number_of_rings_##################
		
		for ( $j_j_mian = 0 ; $j_j_mian <= $lei[$TheOne_j_j[$j_j][$j_j_0]] ; $j_j_mian ++ ) {
			
			$mian_shu_P[$mian[$TheOne_j_j[$j_j][$j_j_0]][$j_j_mian]] ++ ;
			
			if ( $mian_shu_P[$mian[$TheOne_j_j[$j_j][$j_j_0]][$j_j_mian]] == 1 ) {
				
				$mian_shu[$j_j] ++ ;
				$mian_0[$j_j][$mian_shu[$j_j]] = $mian[$TheOne_j_j[$j_j][$j_j_0]][$j_j_mian] ;
				if ( $Huanxin_g[$mian_0[$j_j][$mian_shu[$j_j]]] == 5 ) {
					
					$five[$j_j] ++ ;
					
				}
				if ( $Huanxin_g[$mian_0[$j_j][$mian_shu[$j_j]]] == 6 ) {
					
					$six[$j_j] ++ ;
					
				}
#				print FP " $mian_shu[$j_j] : $mian_0[$j_j][$mian_shu[$j_j]] ; " ;
				for ( my $cnm_gd = 1 ; $cnm_gd <= $Huanxin_g[$mian_0[$j_j][$mian_shu[$j_j]]] ; $cnm_gd ++ ) {
					
					my $lindiancc = $huan_g_d[$mian_0[$j_j][$mian_shu[$j_j]]][$cnm_gd] - 1 ;  ################################___________VMD____________中显示，若无需去掉 - 1 ##################
					$dian_shu_p[$lindiancc] ++ ;
					
					if ( $dian_shu_p[$lindiancc] == 1 ) {
						
						$dian_shu[$j_j] ++ ;
						$dian_0[$j_j][$dian_shu[$j_j]] = $lindiancc ;
#						print FP "  $dian_0[$j_j][$dian_shu[$j_j]] " ;
						
					}
					
				}
				
			}
			
		}
		
#		print FP "#" ;
		#########################################################################################The_number_of_3ping#####################	
		
		for ( $j_j_sanping = 1 ; $j_j_sanping <= $lei[$TheOne_j_j[$j_j][$j_j_0]] ; $j_j_sanping ++ ) {
			
			$sanping_shu_P[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] ++ ;
			
			if ( $sanping_shu_P[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] == 1 ) {
				
				if ( $sanping_types[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] == 300 ) {
					
					$swo[$j_j] ++ ;
					
				}
				
				if ( $sanping_types[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] == 210 ) {
					
					$ewl[$j_j] ++ ;
					
				}

				if ( $sanping_types[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] == 201  ) {
					$tzoo[$j_j] ++ ;
				}

				if ( $sanping_types[$sanping[$TheOne_j_j[$j_j][$j_j_0]][$j_j_sanping]] == 120 )  {
					$otzz[$j_j] ++;
				}
				
			}
			
		}
		
		#################################################################################################################################
		
	}
	
	
###################################################################################################################	ce
	print FPP "  $dian_shu[$j_j] # 120: $otzz[$j_j] 201: $tzoo[$j_j]  #  300: $swo[$j_j]  210: $ewl[$j_j]  # 5: $five[$j_j] 6: $six[$j_j] " ;      ######### shi
	                                                                                                        ######### print
	for ( my $dddd = 1 ; $dddd <= $dian_shu[$j_j] ; $dddd ++ ) {                                            ######### zu
		                                                                                                      #########
		print FPP "  $dian_0[$j_j][$dddd] " ;                                                                  #########
		                                                                                                      #########
	}                                                                                                       #########
	                                                                                                        #########
	print FPP "\n" ;                                                                                         #########
###################################################################################################################
}                                                                                                        
 
my $maxOne = 0 ;
my $maxOneP = 0 ;

for ( $mxO = 1 ; $mxO <= $TheOne ; $mxO ++ ) {
	
	if ( $dian_shu[$mxO] > $maxOneP ) {
		
		$maxOne = $mxO ;
		$maxOneP = $dian_shu[$mxO] ;
		
	}
	
}

print FP "$maxOneP  | " ;

for ( my $dddd = 1 ; $dddd <= $dian_shu[$maxOne] ; $dddd ++ ) {
		
	print FP "  $dian_0[$maxOne][$dddd] " ;
		
}
	
print FP "\n" ;

close HCM ;
close HCF ;
close RHD ;
close RSP ;
