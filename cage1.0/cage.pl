print "hello 512&51262 cages\n";
#If you use the TWRA_HALF_CAGE program, please cite the following refences: Unraveling nucleation pathway in methane clathrate formation
sub GONGM {
	my $mian_one = $_[0];
	my $mian_two = $_[1];
	my $mian_thr = $_[2];
	my $mian_fou = $_[3];
	my $hlaf_cage0 = $_[4];
	my $half_cageN = 0;  #out
	my @mian_AB; #out
#	print OUT "=================================\n";
	for ( my $jishu_one = 1 ; $jishu_one <= $jishu[$mian_one] ; $jishu_one ++ ) {
		for ( my $jishu_two = 1 ; $jishu_two <= $jishu[$mian_two] ; $jishu_two ++ ) {
			for ( my $jishu_thr = 1 ; $jishu_thr <= $jishu[$mian_thr] ; $jishu_thr++ ) {
				for ( my $jishu_fou = 1 ; $jishu_fou <= $jishu[$mian_fou] ; $jishu_fou++ ) {
					##
					if ( ( $fanxu[$mian_one][$jishu_one] == $fanxu[$mian_two][$jishu_two] ) && ( $fanxu[$mian_two][$jishu_two] == $fanxu[$mian_thr][$jishu_thr] ) && ( $fanxu[$mian_thr][$jishu_thr] == $fanxu[$mian_fou][$jishu_fou] ) && ( $fanxu[$mian_fou][$jishu_fou] != $hlaf_cage0 ) && ($Panding[$fanxu[$mian_fou][$jishu_fou]] == 1) ) {
#						print OUT "$mian_one  $mian_two $mian_thr $mian_fou : $fanxu[$mian_one][$jishu_one] { ";
						$half_cageN = $fanxu[$mian_one][$jishu_one];
						my $AB_jishu = 0;
						for ( my $jishu_new = 0 ; $jishu_new <= $lei[$half_cageN] ; $jishu_new++ ) {
							if ( ( $mian[$half_cageN][$jishu_new] != $mian_one ) && ( $mian[$half_cageN][$jishu_new] !=  $mian_two ) && ( $mian[$half_cageN][$jishu_new] != $mian_thr ) && ( $mian[$half_cageN][$jishu_new] != $mian_fou ) ) {
								$mian_AB[$AB_jishu] = $mian[$half_cageN][$jishu_new];
#								print OUT " $mian_AB[$AB_jishu] ";
								$AB_jishu ++;
							}
						}
#						print OUT "}\n";
						##
						my $linshi = $lei[$half_cageN] - 3;
						return ( $half_cageN , \@mian_AB , $linshi );
					}
					##
				}
			}
		}
	}
#	print OUT "==============================\n";
}

sub DUO_GONGM {
	my @mianmian = @_;
#	print "@mianmian\n";
	my $geshu = @mianmian;
#	print "$geshu\n";
	my $half_cageN = 0 ; #out
	my $mian_new00 = 0 ; #out
	if ( $geshu == 5 ) {
		#
		for ( my $jishumian_1 = 1 ; $jishumian_1 <= $jishu[$mianmian[0]] ; $jishumian_1++ ) {
			for ( my $jishumian_2 = 1 ; $jishumian_2 <= $jishu[$mianmian[1]] ; $jishumian_2++ ) {
				for ( my $jishumian_3 = 1 ; $jishumian_3 <= $jishu[$mianmian[2]] ; $jishumian_3++ ) {
					for ( my $jishumian_4 = 1 ; $jishumian_4 <= $jishu[$mianmian[3]] ; $jishumian_4++ ) {
						for ( my $jishumian_5 = 1 ; $jishumian_5 <= $jishu[$mianmian[4]] ; $jishumian_5++ ) {
							if ( ( $fanxu[$mianmian[0]][$jishumian_1] == $fanxu[$mianmian[1]][$jishumian_2] ) & ( $fanxu[$mianmian[1]][$jishumian_2] == $fanxu[$mianmian[2]][$jishumian_3] ) && ( $fanxu[$mianmian[2]][$jishumian_3] == $fanxu[$mianmian[3]][$jishumian_4] ) && ( $fanxu[$mianmian[3]][$jishumian_4] == $fanxu[$mianmian[4]][$jishumian_5] ) && ( $lei[$fanxu[$mianmian[4]][$jishumian_5]] == 5 ) ) {
								##
								$half_cageN = $fanxu[$mianmian[0]][$jishumian_1] ;
								for ( my $jishu_new = 0 ; $jishu_new <= $lei[$half_cageN] ; $jishu_new++ ) {
									if ( ( $mian[$half_cageN][$jishu_new] != $mianmian[0] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[1] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[2] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[3] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[4] ) ) {
										$mian_new00 = $mian[$half_cageN][$jishu_new] ;
										return ( $half_cageN , $mian_new00 );
									}
								}
								##
							}
						}
					}
				}
			}
		}
		#
	}
	if ( $geshu == 6 ) {
		#
		for ( my $jishumian_1 = 1 ; $jishumian_1 <= $jishu[$mianmian[0]] ; $jishumian_1++ ) {
			for ( my $jishumian_2 = 1 ; $jishumian_2 <= $jishu[$mianmian[1]] ; $jishumian_2++ ) {
				for ( my $jishumian_3 = 1 ; $jishumian_3 <= $jishu[$mianmian[2]] ; $jishumian_3++ ) {
					for ( my $jishumian_4 = 1 ; $jishumian_4 <= $jishu[$mianmian[3]] ; $jishumian_4++ ) {
						for ( my $jishumian_5 = 1 ; $jishumian_5 <= $jishu[$mianmian[4]] ; $jishumian_5++ ) {
							for ( my $jishumian_6 = 1 ; $jishumian_6 <= $jishu[$mianmian[5]] ; $jishumian_6++ ) {
								if ( ( $fanxu[$mianmian[0]][$jishumian_1] == $fanxu[$mianmian[1]][$jishumian_2] ) & ( $fanxu[$mianmian[1]][$jishumian_2] == $fanxu[$mianmian[2]][$jishumian_3] ) && ( $fanxu[$mianmian[2]][$jishumian_3] == $fanxu[$mianmian[3]][$jishumian_4] ) && ( $fanxu[$mianmian[3]][$jishumian_4] == $fanxu[$mianmian[4]][$jishumian_5] ) && ( $fanxu[$mianmian[4]][$jishumian_5] == $fanxu[$mianmian[5]][$jishumian_6] ) && ($lei[$fanxu[$mianmian[5]][$jishumian_6]] == 6) ) {
									##
									$half_cageN = $fanxu[$mianmian[0]][$jishumian_1] ;
									for ( my $jishu_new = 0 ; $jishu_new <= $lei[$half_cageN] ; $jishu_new++ ) {
									  if ( ( $mian[$half_cageN][$jishu_new] != $mianmian[0] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[1] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[2] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[3] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[4] ) && ( $mian[$half_cageN][$jishu_new] != $mianmian[5] )  ) {
								  		$mian_new00 = $mian[$half_cageN][$jishu_new] ;
								  		return ( $half_cageN , $mian_new00 );
								  	}
							  	}
								  ##
								}
							}
						}
					}
				}
			}
		}
		#
	}
}

open (INP,"<half-cages-mian_0.txt");
open OUT,'+> cage_out.txt';
open OUTO,'+> cage_512.txt';
open OUTT,'+> cage_51262.txt';

$cage512 = 0;
$cage51262 = 0;

while (<INP>) {
	push @inp,[split];
}
$i=0;
foreach my $a (@inp){
	$i ++;
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
	$Panding[$i] = 1;
	#print " $mian[$i][0]   $mian[$i][1]   $mian[$i][2]  $mian[$i][3]  $mian[$i][4]  $mian[$i][5]  $mian[$i][6]  \n" ;
}

for ( $j = 1 ; $j <= $i ; $j ++ ) {
	if ( $Panding[$j] == 1 ) {
		##
		@panding_half = ();
		@panding_mian = ();
		$zong_jishu00 = 0;
		#print "================\n";
		for ( $ti = 1 ; $ti <= $lei[$j] ; $ti ++ ) {
			##_mian_0_mian_ti
			$linshi1 = 0;
			$linshi2;
			$linshi3 = 0;
			for ( $mian_A = 1; $mian_A <= $lei[$j] ; $mian_A ++ ) {
				if ( $mian_A != $ti ) {
					for ( $mian_B = 1; $mian_B <= $lei[$j] ; $mian_B ++ ) {
						if ( ($mian_B != $ti) && ($mian_B != $mian_A) ) {
							##
							($linshi1,$linshi2,$linshi3) = &GONGM( $mian[$j][0] , $mian[$j][$ti] , $mian[$j][$mian_A] , $mian[$j][$mian_B] , $j );
							#
							if ( $linshi3 != 0 ) {
								##
								my $if_push = 1;
								foreach my $b (@panding_half) {
									if ( $b == $linshi1 ) {
										$if_push = 0;
									}
								}
								##
								if ( $if_push == 1 ) {
									push @panding_half, $linshi1;
									push @panding_mian, @$linshi2;
									$zong_jishu00 = $zong_jishu00 + $linshi3;
								#	print "($linshi1,@$linshi2,$linshi3)\n";
								}
							}
							##
						}
					}
				}
			}
			##
		}
		#print "================\n";
		##################################################512_&51262panding
		my $double_ring_jishu = 1 ;
		foreach my $c (@panding_mian) {
			my $jishu_daouble = 0;
			foreach my $d (@panding_mian) {
				if ( $c == $d ) {
					$jishu_daouble ++ ;
				}
			}
			if ( $jishu_daouble != 2 ) {
				$double_ring_jishu = 0 ;
			}
		}
		my $lilili = @panding_mian;
		if ( ($double_ring_jishu == 1) && ($lilili!=0) ) {
	#		print "( @panding_mian )\n";
			@panding_mian_del = ();
			$panding_mian_del[0] = $panding_mian[0] ;
			foreach my $e ( @panding_mian ) {
				#print " $e \n";
				my $push_panding = 1;
				foreach my $f ( @panding_mian_del ) {
					#print "($f) \n";
					if ( $e == $f ) { 
						$push_panding = 0;
				#		print "( $e != $f )\n";
					}
				}
				if ( $push_panding == 1 ) {
					push @panding_mian_del, $e ;
			#		print "@panding_mian_del\n";
				}
			}
			#print " @panding_mian_del \n";
			$linshiA =0 ;
			$linshiB =0 ;
			($linshiA,$linshiB) = &DUO_GONGM(@panding_mian_del);
			if ( $linshiB != 0 ) {
				#print "Y\n";
			  if ( ( $lei[$j] == 5 ) && ( $lei[$linshiA] == 5 ) ) {
			  	$cage512 ++;
			  #	print "E\n";
			  	print OUTO "$linshiB @panding_mian_del ";
			  	for ( $prit = 0; $prit<= $lei[$j] ; $prit++ ) {
			  		print OUTO "$mian[$j][$prit] ";
			  	}
			  	print OUTO "\n";
		  	}
			  if ( ( $lei[$j] == 6 ) && ( $lei[$linshiA] == 6 ) ) {
			  	$cage51262 ++;
			  	print OUTT "$linshiB @panding_mian_del ";
			  	for ( $prit = 0; $prit<= $lei[$j] ; $prit++ ) {
			  		print OUTT "$mian[$j][$prit] ";
			  	}
			  	print OUTT "\n";
			  }
			  $Panding[$j] = 0 ;
			  $Panding[$linshiA] = 0 ;
			  foreach $k(@panding_half) {
			  	$Panding[$k] = 0 ;
			  }
			  ##
		  }
		}	
		####
	}
}

print OUT "$cage512 $cage51262\n";
