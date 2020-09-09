#! /usr/bin/perl
print "hello  成环 ！\n";

sub zhaohuan {
	
	my $qishi1 = $_[0] ; #zhongxu
	my $panding = $_[1] ; #1
	my $xuhanc = $_[2] ; #个数
	my $px = 1 ;
#	print FP " $qishi1  $panding  my $xuhanc " ;
	
	while ( $px <= $xuhanc ) {

#	  print FP " $qishi1  $panding   $xuhanc ;" ;
		
		$_linjizhi[$panding] = $qishi1 ;
		my $lin_0 = 10 ;
		
		if ( $shiyong[$_linjizhi[$panding]] == 0 ) {
			
			$lin_0 = 0 ;
			
		}
		
		for ( $ill = 1 ; $ill < $panding ; $ill ++ ) {
			
			if ( $_linjizhi[$ill] == $qishi1 ) {
				
				$lin_0 = $ill ;
				last ;
				
			}
			
		}
		
		#######7元环
		
		if ( ( $panding == 8 ) && ( $lin_0 == 1 ) ) {
			
			#输出7元环
			
			print FP "7  " ;
			
			for ( $hxs7 = 1 ; $hxs7 <= 7 ; $hxs7 ++ ) {
				
				print FP " $_linjizhi[$hxs7]" ;
				
			}
			
			print FP "\n" ;
			return ( 6 ) ;
			last ;
			
		}
		
		##########
		
		if ( ( $panding == 7 ) && ( $lin_0 == 1 ) ) {
			
			#输出6元环
			
			print FP "6  " ;
			
			for ( $hxs6 = 1 ; $hxs6 <= 6 ; $hxs6 ++ ) {
				
				print FP " $_linjizhi[$hxs6]" ;
				
			}
			
			print FP "\n" ;
			return ( 6 ) ;
			last ;
			
		}
		
		if ( ( $panding == 6 ) && ( $lin_0 == 1 ) ) {
			
			#输出5元环
			print FP "5  " ;
			
			for ( $hxs5 = 1 ; $hxs5 <= 5 ; $hxs5 ++ ) {
				
				print FP " $_linjizhi[$hxs5]" ;
				
			}
			
			print FP "\n" ;
			return ( 6 ) ;
			last ;
			
		}
		
		if ( ( $panding == 5 ) && ( $lin_0 == 1 ) ) {
			
			#输出4元环
			print FP "4  " ;
			
			for ( $hxs4 = 1 ; $hxs4 <= 4 ; $hxs4 ++ ) {
				
				print FP " $_linjizhi[$hxs4]" ;
				
			}
			
			print FP "\n" ;
			return ( 6 ) ;
			last ;
			
		}
		
		if ( ( $panding == 4 ) && ( $lin_0 == 1 ) ) {
			
			#输出3元环
			print FP "3  " ;
			
			for ( $hxs3 = 1 ; $hxs3 <= 3 ; $hxs3 ++ ) {
				
				print FP " $_linjizhi[$hxs3]" ;
				
			}
			
			print FP "\n" ;
			return ( 6 ) ;
			last ;
			
		}
		
####6->7		
		if ( ( $panding <= 7 ) && ( $lin_0 == 10 ) ) {
			
			my $panding2 = 0 ;
			$panding2 = $panding + 1 ;
			$tianjia = &zhaohuan( $lianj[$qishi1][$px] , $panding2 , $zxg[$lianj[$qishi1][$px]] ) ;
			
			#
			if ( $tianjia == 6 ) {
				
				$px = 10 ;
				
			}
			#
			
		}
		
		$px ++ ;
		
	}
	
#	print FP ";;;;====;;;;;;" ;
	
}

open (FH,"<cj1.txt");   #计算甲烷水壳层时改为cj2.txt; 否则cj1.txt.
open FP,'+> ch1.txt';

while (<FH>){

   push @arry ,[split] ;
	
}

$i = 0 ;

foreach my $a(@arry){
	
	$i++;
  $zhongxu[$i] = $a -> [0] ;
  $zxg[$zhongxu[$i]] = $a -> [1] ;
  $lianj[$zhongxu[$i]][1] = $a -> [2] ;
  $lianj[$zhongxu[$i]][2] = $a -> [3] ;
  $lianj[$zhongxu[$i]][3] = $a -> [4] ;
  $lianj[$zhongxu[$i]][4] = $a -> [5] ;
  $lianj[$zhongxu[$i]][5] = $a -> [6] ;
  $lianj[$zhongxu[$i]][6] = $a -> [7] ;
  $lianj[$zhongxu[$i]][7] = $a -> [8] ;
  $shiyong[$zhongxu[$i]] = 1 ;
	
}

#for ( $j = 1 ; $j <= $i ; $j ++ ) {
	
#	print FP " $zhongxu[$j] $zxg[$zhongxu[$j]] \n" ;
	
#}

for ( $j = 1 ; $j <= $i ; $j ++ ) {
	
#	print " $zhongxu[$j] ; $zxg[$zhongxu[$j]] \n";
	&zhaohuan( $zhongxu[$j] , 1 , $zxg[$zhongxu[$j]] ) ;
  $shiyong[$zhongxu[$j]] = 0 ;
#  print FP "\n" ;
	
}

close FH ;
close FP ;
#===========================================================================================
open (FHH,"<ch1.txt");
open FPP,'+> ch1chuli.txt';

while (<FHH>){

   push @arrry ,[split] ;
	
}

$bii = 0 ;
$yuzhi = 0 ;

foreach my $b(@arrry){
	
	$bii ++ ;
	$huxing[$bii] = $b -> [0] ;
	$huxun[$bii][1] = $b -> [1] ;
	$huxun[$bii][2] = $b -> [2] ;
	$huxun[$bii][3] = $b -> [3] ;
	$huxun[$bii][4] = $b -> [4] ;
	$huxun[$bii][5] = $b -> [5] ;
	$huxun[$bii][6] = $b -> [6] ;
	$huxun[$bii][0] = $b -> [6] ;
	$huxun[$bii][7] = $b -> [7] ;
	$shuxing[$bii] = 1 ;
	
	$biixiao = $bii - 1 ;
	if ( $huxun[$bii][1] != $huxun[$biixiao][1] ) {
		
		$yuzhi ++ ;
		$yushu[$yuzhi] = $huxun[$bii][1] ;
		$qiguanlyz = $yuzhi - 1 ;
		$guanlyz[$qiguanlyz] = $nshu ;
		$nshu = 1 ;
		$banxu[$yuzhi][$nshu] = $bii ;
		
	}
	else{
		
		$nshu ++ ;
		$banxu[$yuzhi][$nshu] = $bii ;
		
	}
	
#	print FPP "$yuzhi =1= $yushu[$yuzhi] =2= $guanlyz[$qiguanlyz] =3= $banxu[$yuzhi][$nshu] || $b \n" ;	
	
}

$guanlyz[$yuzhi] = $nshu ;
#print FPP "$nshu---- $yuzhi =1= $yushu[$yuzhi] =2= $guanlyz[$yuzhi] =3= $banxu[$yuzhi][$nshu] \n" ;

for ( $bjj = 1 ; $bjj <= $yuzhi ; $bjj ++ ) {
	
	print "$bjj #($yuzhi) " ;
	
	for ( $bj2 = 1 ; $bj2 <= $guanlyz[$bjj] ; $bj2 ++ ) {
		
#		print FPP "$bjj =1= $yushu[$bjj] =2= $guanlyz[$bjj] =3= $banxu[$bjj][$bj2] || $huxing[$banxu[$bjj][$bj2]] $huxun[$banxu[$bjj][$bj2]][1] $huxun[$banxu[$bjj][$bj2]][2] $huxun[$banxu[$bjj][$bj2]][3] $huxun[$banxu[$bjj][$bj2]][4] $huxun[$banxu[$bjj][$bj2]][5] $huxun[$banxu[$bjj][$bj2]][6]\n" ;	
		
		if ( $shuxing[$banxu[$bjj][$bj2]] == 1 ) {
			
		  for ( $bj3 = $bj2 ; $bj3 <= $guanlyz[$bjj] ; $bj3 ++ ) {
			
			  if ( ( $huxing[$banxu[$bjj][$bj2]] == $huxing[$banxu[$bjj][$bj3]] ) && ( $huxing[$banxu[$bjj][$bj3]] == 4 ) ) {
				
				  if ( ( $huxun[$banxu[$bjj][$bj2]][2] == $huxun[$banxu[$bjj][$bj3]][4] ) && ( $huxun[$banxu[$bjj][$bj2]][3] == $huxun[$banxu[$bjj][$bj3]][3] ) && ( $huxun[$banxu[$bjj][$bj2]][4] == $huxun[$banxu[$bjj][$bj3]][2] ) ) {
				  	
				  	$shuxing[$banxu[$bjj][$bj3]] = 0 ;
				  	
				  }
				
			  }
			  
			  if ( ( $huxing[$banxu[$bjj][$bj2]] == $huxing[$banxu[$bjj][$bj3]] ) && ( $huxing[$banxu[$bjj][$bj3]] == 5 ) ) {
			  	
			  	if ( ( $huxun[$banxu[$bjj][$bj2]][2] == $huxun[$banxu[$bjj][$bj3]][5] ) && ( $huxun[$banxu[$bjj][$bj2]][3] == $huxun[$banxu[$bjj][$bj3]][4] ) && ( $huxun[$banxu[$bjj][$bj2]][4] == $huxun[$banxu[$bjj][$bj3]][3] ) && ( $huxun[$banxu[$bjj][$bj2]][5] == $huxun[$banxu[$bjj][$bj3]][2] ) ) {
			  		
			  		$shuxing[$banxu[$bjj][$bj3]] = 0 ;
			  		
			  	}
			  	
			  }
			  
			  if ( ( $huxing[$banxu[$bjj][$bj2]] == $huxing[$banxu[$bjj][$bj3]] ) && ( $huxing[$banxu[$bjj][$bj3]] == 6 ) ) {
			  	
			  	if ( ( $huxun[$banxu[$bjj][$bj2]][2] == $huxun[$banxu[$bjj][$bj3]][6] ) && ( $huxun[$banxu[$bjj][$bj2]][3] == $huxun[$banxu[$bjj][$bj3]][5] ) && ( $huxun[$banxu[$bjj][$bj2]][4] == $huxun[$banxu[$bjj][$bj3]][4] ) && ( $huxun[$banxu[$bjj][$bj2]][5] == $huxun[$banxu[$bjj][$bj3]][3] ) && ( $huxun[$banxu[$bjj][$bj2]][6] == $huxun[$banxu[$bjj][$bj3]][2] ) ) {
			  		
			  		$shuxing[$banxu[$bjj][$bj3]] = 0 ;
			  		
			  	}
			  	
			  }
			  
			  #########7###
			  
			  if ( ( $huxing[$banxu[$bjj][$bj2]] == $huxing[$banxu[$bjj][$bj3]] ) && ( $huxing[$banxu[$bjj][$bj3]] == 7 ) ) {
			  	
			  	if ( ( $huxun[$banxu[$bjj][$bj2]][2] == $huxun[$banxu[$bjj][$bj3]][7] ) && ( $huxun[$banxu[$bjj][$bj2]][3] == $huxun[$banxu[$bjj][$bj3]][6] ) && ( $huxun[$banxu[$bjj][$bj2]][4] == $huxun[$banxu[$bjj][$bj3]][5] ) && ( $huxun[$banxu[$bjj][$bj2]][5] == $huxun[$banxu[$bjj][$bj3]][4] ) && ( $huxun[$banxu[$bjj][$bj2]][6] == $huxun[$banxu[$bjj][$bj3]][3] ) && ( $huxun[$banxu[$bjj][$bj2]][7] == $huxun[$banxu[$bjj][$bj3]][2] ) ) {
			  		
			  		$shuxing[$banxu[$bjj][$bj3]] = 0 ;
			  		
			  	}
			  	
			  }
			  
			  #############
			  
#			  print FPP "* $shuxing[$banxu[$bjj][$bj3]] * $bjj =1= $yushu[$bjj] =2= $guanlyz[$bjj] =3= $banxu[$bjj][$bj2] || $huxing[$banxu[$bjj][$bj2]] $huxun[$banxu[$bjj][$bj2]][1] $huxun[$banxu[$bjj][$bj2]][2] $huxun[$banxu[$bjj][$bj2]][3] $huxun[$banxu[$bjj][$bj2]][4] $huxun[$banxu[$bjj][$bj2]][5] $huxun[$banxu[$bjj][$bj2]][6]\n" ;
			
		  }
		  
		  #############buuuuuuuuuuuuuuucccccccccccco
		  
		  for ( $bj4 = 1 ; $bj4 <= $guanlyz[$bjj] ; $bj4 ++ ) {	
		  	
		  	if ( $huxing[$banxu[$bjj][$bj2]] > $huxing[$banxu[$bjj][$bj4]] ) {
		  		
		  		$jishuccc = 0 ;
		  		
		  		for ( $hhss = 1 ; $hhss <= $huxing[$banxu[$bjj][$bj2]] ; $hhss ++ ) {
		  			
		  			for ( $hhss1 = 1 ; $hhss1 <= $huxing[$banxu[$bjj][$bj4]] ; $hhss1 ++ ) {
		  				
		  				if ( $huxun[$banxu[$bjj][$bj2]][$hhss] == $huxun[$banxu[$bjj][$bj4]][$hhss1] ) {
		  					
		  					$jishuccc ++ ;
		  					
		  				}
		  				
		  			}
		  			
		  		}
		  		
		  		if ( $jishuccc == 4 ) {
		  			
		  			if ( $huxing[$banxu[$bjj][$bj4]] == 4 ) {
		  				
		  				$shuxing[$banxu[$bjj][$bj2]] = 0 ;
		  				
		  			}
		  		}
		  		
		  		if ( $jishuccc == 3 ) {
		  			
		  			if ( $huxing[$banxu[$bjj][$bj4]] == 3 ) {
		  				
		  				$shuxing[$banxu[$bjj][$bj2]] = 0 ;
		  				
		  			}
		  		}
		  		
		  	}
		  	
		  }
		  
		  #############buuuuuuuuuuuuuuucccccccccccco
			
		}
		
#		print FPP "* $shuxing[$banxu[$bjj][$bj2]] * $bjj =1= $yushu[$bjj] =2= $guanlyz[$bjj] =3= $banxu[$bjj][$bj2] || $huxing[$banxu[$bjj][$bj2]] $huxun[$banxu[$bjj][$bj2]][1] $huxun[$banxu[$bjj][$bj2]][2] $huxun[$banxu[$bjj][$bj2]][3] $huxun[$banxu[$bjj][$bj2]][4] $huxun[$banxu[$bjj][$bj2]][5] $huxun[$banxu[$bjj][$bj2]][6]\n" ;
		
		if ( $shuxing[$banxu[$bjj][$bj2]] == 1 ) {
			
			print FPP "$huxing[$banxu[$bjj][$bj2]]    $huxun[$banxu[$bjj][$bj2]][1] $huxun[$banxu[$bjj][$bj2]][2] $huxun[$banxu[$bjj][$bj2]][3] $huxun[$banxu[$bjj][$bj2]][4] $huxun[$banxu[$bjj][$bj2]][5] $huxun[$banxu[$bjj][$bj2]][6] $huxun[$banxu[$bjj][$bj2]][7]\n" ;
			
		}
		
	}
	
}

close FPP ;
close FHH ;
################################################################
open (CLH,"<ch1chuli.txt");
open CLP,'+> ch2chuli.txt';

################################################
 use threads;                                 ##
 use Config;                                  ##
 use threads::shared;                         ##
                                              ##
my $max_thread_i = 0 ;                        ##
my $max_thread = 10 ;                          #########################################
#my @hhxx: shared ;                            ##
#my @hhxu: shared ;                            ##
#my @xxxxxx : shared ;                         ##
#share(@hhxu);                                 ##
#my @hhxu = shared_clone([]) ;                 ##
################################################

while (<CLH>){

   push @clh ,[split] ;
	
}

$ttt = 0 ;

foreach my $qqq(@clh){
	
	$ttt ++ ;
	$hhxx[$ttt] = $qqq -> [0] ;
	$hhxu[$ttt][1] = $qqq -> [1] ;
	$hhxu[$ttt][2] = $qqq -> [2] ;
	$hhxu[$ttt][3] = $qqq -> [3] ;
	$hhxu[$ttt][4] = $qqq -> [4] ;
	$hhxu[$ttt][5] = $qqq -> [5] ;
	$hhxu[$ttt][6] = $qqq -> [6] ;
	$hhxu[$ttt][7] = $qqq -> [7] ;
	$xxxxxx[$ttt] = 1 ;
	
}

while () {
	
	last if((   200*$max_thread_i)>=$ttt);
	while ((scalar(threads->list())<=$max_thread) && ((    200*$max_thread_i)<$ttt) ) {
			
	   $max_thread_i ++ ;
	   threads->new(\&ss,$max_thread_i,$ttt);
			
	}
	
	foreach $thread(threads->list(threads::all)) {
		
		if($thread->is_joinable()) {
			
			$thread->join();
			
		}
		
	}
	
}

while( (threads->list(threads::all)) != 0 ) {
	
  foreach $thread(threads->list(threads::all)) {
  	
	  if($thread->is_joinable()) {
	  	
      $thread->join();
	    print scalar(threads->list()),"\t$j\t",localtime(time),"\n";       
	   
    }
    
  }
  
}

for ( $zuiz = 1 ; $zuiz <= $max_thread_i ; $zuiz ++ ) {
	 
	open (MMP,"<huan0c_$zuiz.txt");
	@tttttttttt = <MMP> ;
		
		print CLP "@tttttttttt" ;
		
  close MMP ;
  @tttttttttt = () ;
	
}

close CLP ;
close CLH ;

sub ss()  {

  my ($max_thread_i,$ttt)=@_;
	my $hpp ;
	
	open (CLHC,"<ch1chuli.txt");
	
  while (<CLHC>){

     push @clhc ,[split] ;
	
  }

  my $ttt = 0 ;

  foreach my $qqq(@clhc){
	
  	$ttt ++ ;
  	$hhxx[$ttt] = $qqq -> [0] ;
  	$hhxu[$ttt][1] = $qqq -> [1] ;
  	$hhxu[$ttt][2] = $qqq -> [2] ;
  	$hhxu[$ttt][3] = $qqq -> [3] ;
  	$hhxu[$ttt][4] = $qqq -> [4] ;
  	$hhxu[$ttt][5] = $qqq -> [5] ;
  	$hhxu[$ttt][6] = $qqq -> [6] ;
  	$hhxu[$ttt][7] = $qqq -> [7] ;
	  $xxxxxx[$ttt] = 1 ;
	
  }
	
  print "$i -> $max_thread_i \n" ;
  open CNM, "+> huan0c_$max_thread_i.txt";
  
  if ( (   200 * ($max_thread_i) ) <= $ttt ) {
  
    for ( $ti = (  200* ($max_thread_i - 1)) ; $ti <= (  200* ($max_thread_i)) ; $ti ++ ) {
	
	    print "$ti-)_($ttt) " ;
	
	    if ( $xxxxxx[$ti] == 1 ) {
		
	    	for ( $ti2 = 1 ; $ti2 <= $ttt ; $ti2 ++ ) {
			
		    	if ( ( $ti2 != $ti ) && ( $xxxxxx[$ti2] == 1 ) ) {
				
			    	$hpp = 0 ;
				
			     	for ( $hti = 1 ; $hti <= $hhxx[$ti] ; $hti ++ ) {
					
				    	for ( $hti2 = 1 ; $hti2 <= $hhxx[$ti2] ; $hti2 ++ ) {
						
				    		if ( $hhxu[$ti][$hti] == $hhxu[$ti2][$hti2] ) {
							
				    			$hpp ++ ;
							
					    	}
						
			    		}
					
			    	}
				
			    	if ( $hpp == 3 ) {
					
				    	if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti2] == 3 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 3 ) ) || ( ( $hhxx[$ti2] == 3 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
						    	$xxxxxx[$ti] = 0 ;
							
					    	}
						
				    	}
					
				    	if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
					    	if ( ( $hhxx[$ti] == 3 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 3 ) ) || ( ( $hhxx[$ti] == 3 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
						  #  	$xxxxxx[$ti2] = 0 ;
							
  				    	}
						
				    	}
					
			    	}
				###
				
			    	if ( $hpp == 4 ) {
					
				    	if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
					    	if ( ( $hhxx[$ti2] == 4 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 5 ) ) || ( ( $hhxx[$ti2] == 5 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
					    		$xxxxxx[$ti] = 0 ;
							
					    	}
						
			    		}
					
				    	if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti] == 4 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 5 ) ) || ( ( $hhxx[$ti] == 5 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
					    #		$xxxxxx[$ti2] = 0 ;
							
  			     		}
						
				    	}
					
			    	}
				###
				
			    	if ( $hpp == 5 ) {
					
			    		if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti2] == 5 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
						    	$xxxxxx[$ti] = 0 ;
							
					    	}
						
				    	}
					
			    		if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
					    	if ( ( $hhxx[$ti] == 5 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
					   # 		$xxxxxx[$ti2] = 0 ;
							
					    	}
						
				    	}
					
			    	}
				###
				
	     			if ( $hpp == 6 ) {
					
		    			if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( $hhxx[$ti2] == 6 ) {
							
				    			$xxxxxx[$ti] = 0 ;
							
				    		}
						
			    		}
					
			    		if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
				    		if ( $hhxx[$ti] == 6 ) {
							
			    		#		$xxxxxx[$ti2] = 0 ;
							
				    		}
						
			    		}
					
		    		}
				###
				
		    		if ( $hpp == 7 ) {
					
			    		if ( $hhxx[$ti] >= $hhxx[$ti2] ) {
						
#						if ( $hhxx[$ti2] == 7 ) {
							
					  		$xxxxxx[$ti] = 0 ;
							
#						}
						
				    	}
					
			    		if ( $hhxx[$ti] <= $hhxx[$ti2] ) {
						
#						if ( $hhxx[$ti] == 7 ) {
							
					 # 		$xxxxxx[$ti2] = 0 ;
							
#						}
						
				    	}
					
			    	}
				###
				
		    	}
			
	    	}
		
	    }
	    
	    if ( $xxxxxx[$ti] == 1 ) {
	    	
	    	print CNM "$hhxx[$ti]   " ;
	    	
	    	for ( $hti_lin = 1 ; $hti_lin <= $hhxx[$ti] ; $hti_lin ++ ) {
	    		
	    		print CNM " $hhxu[$ti][$hti_lin]" ;
	    		
	    	}
	    	
	    	print CNM "\n" ;
	    	
	    }
	
    }
  
  }
  else {
  	
  	for ( $ti = (  200* ($max_thread_i - 1)) ; $ti <= $ttt ; $ti ++ ) {
	
	    print "$ti-)_($ttt) " ;
	
	    if ( $xxxxxx[$ti] == 1 ) {
		
	    	for ( $ti2 = 1 ; $ti2 <= $ttt ; $ti2 ++ ) {
			
	    		if ( ( $ti2 != $ti ) && ( $xxxxxx[$ti2] == 1 ) ) {
				
			    	$hpp = 0 ;
				
			    	for ( $hti = 1 ; $hti <= $hhxx[$ti] ; $hti ++ ) {
					
			    		for ( $hti2 = 1 ; $hti2 <= $hhxx[$ti2] ; $hti2 ++ ) {
						
				    		if ( $hhxu[$ti][$hti] == $hhxu[$ti2][$hti2] ) {
							
				    			$hpp ++ ;
							
				    		}
						
				    	}
					
			    	}
				
		    		if ( $hpp == 3 ) {
					
	    				if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti2] == 3 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 3 ) ) || ( ( $hhxx[$ti2] == 3 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
					  		$xxxxxx[$ti] = 0 ;
							
			    			}
						
				    	}
					
				    	if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti] == 3 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 3 ) ) || ( ( $hhxx[$ti] == 3 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
				    #			$xxxxxx[$ti2] = 0 ;
							
  			    		}
						
				    	}
					
			    	}
				###
				
			    	if ( $hpp == 4 ) {
					
			    		if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti2] == 4 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 5 ) ) || ( ( $hhxx[$ti2] == 5 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
				    			$xxxxxx[$ti] = 0 ;
							
				    		}
						
				    	}
					
			    		if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
				    		if ( ( $hhxx[$ti] == 4 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 5 ) ) || ( ( $hhxx[$ti] == 5 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
				    #			$xxxxxx[$ti2] = 0 ;
							
  			    		}
						
			    		}
					
		    		}
				###
				
		    		if ( $hpp == 5 ) {
					
			    		if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
			    			if ( ( $hhxx[$ti2] == 5 ) || ( ( $hhxx[$ti2] == 6 ) && ( $hhxx[$ti] == 7 ) ) ) {
							
				    			$xxxxxx[$ti] = 0 ;
							
			    			}
						
		    			}
					
		    			if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
			    			if ( ( $hhxx[$ti] == 5 ) || ( ( $hhxx[$ti] == 6 ) && ( $hhxx[$ti2] == 7 ) ) ) {
							
				   # 			$xxxxxx[$ti2] = 0 ;
							
			    			}
						
				    	}
					
			    	}
				###
				
			    	if ( $hpp == 6 ) {
					
			    		if ( $hhxx[$ti] > $hhxx[$ti2] ) {
						
				    		if ( $hhxx[$ti2] == 6 ) {
							
				    			$xxxxxx[$ti] = 0 ;
							
					    	}
						
				    	}
					
				    	if ( $hhxx[$ti] < $hhxx[$ti2] ) {
						
				    		if ( $hhxx[$ti] == 6 ) {
							
					#    		$xxxxxx[$ti2] = 0 ;
							
					    	}
						
				    	}
					
			    	}
				###
				
			    	if ( $hpp == 7 ) {
					
			    		if ( $hhxx[$ti] >= $hhxx[$ti2] ) {
						
#						if ( $hhxx[$ti2] == 7 ) {
							
				  			$xxxxxx[$ti] = 0 ;
							
#						}
						
				    	}
					
				    	if ( $hhxx[$ti] <= $hhxx[$ti2] ) {
						
#						if ( $hhxx[$ti] == 7 ) {
							
					#  		$xxxxxx[$ti2] = 0 ;
							
#						}
						
				    	}
					
			    	}
				###
				
	      	}
			
	    	}
		
	    }
	    
	    if ( $xxxxxx[$ti] == 1 ) {
	    	
	    	print CNM "$hhxx[$ti]   " ;
	    	
	    	for ( $hti_lin = 1 ; $hti_lin <= $hhxx[$ti] ; $hti_lin ++ ) {
	    		
	    		print CNM " $hhxu[$ti][$hti_lin]" ;
	    		
	    	}
	    	
	    	print CNM "\n" ;
	    	
	    }
	
    }
  	
  }
  
  close CNM ;

}
