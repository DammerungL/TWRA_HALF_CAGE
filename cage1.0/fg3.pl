#! /usr/bin/perl
print "hello world!zong\n";

open (TM,"<z0.lammpstrj");
open TC,'+> z.lammpstrj';
print TC "";
open GS,'+> huangeshu.txt';
print GS "";
open SP,'+> 3pingshu.txt';
print SP "";
open WS,'+> suipianshu.txt';
print WS "";
open JWR,'+> ch4rongjie.txt';
print JWR "";
open LJS,'+> linjie_xinhe_size.txt';
print LJS "";
open OUTCA,'+> cage_512&1562.txt';
print OUTCA "";

@tm = <TM> ;

$i = 0 ;

foreach my $a( @tm ) {
	
	$i ++ ;
	$kaiguan = 0 ;
	if ( $a =~ "ITEM: TIMESTEP" ) {
		
		$kaiguan = 1 ;
		
	}
	
	if ( $kaiguan == 1 ) {
		
		close TC ;
		
		###########
		
		#system ("perl xian.pl") ;
		#system ("perl cj-thread.pl") ;
		###########################
		system ("./cj_lammps");		#
		###########################
		system ("perl huan0-thread2.pl") ;
#		system ("perl 7gom.pl") ;
		open (MM,"<ch2chuli.txt");
		
		while (<MM>){

      push @mm ,[split] ;
	
    }
		
		$zs = 0 ;
		$jishu4 = 0 ;
		$jishu5 = 0 ;
		$jishu6 = 0 ;
		$jishu7 = 0 ;		

		foreach my $mt(@mm) {
			
			$zs ++ ;
			$huanl = $mt -> [0] ;
			
			#####
			
			if ( $huanl == 4 ) {
				
				$jishu4 ++ ;
				
			}
			
			if ( $huanl == 5 ) {
				
				$jishu5 ++ ;
				
			}
			
			if ( $huanl == 6 ) {
				
				$jishu6 ++ ;
				
			}
			
			if ( $huanl == 7 ) {
				
				$jishu7 ++ ;
				
			}
			
			#####
			
		}
	
	  print GS " | $zs  $jishu4  $jishu5  $jishu6  $jishu7\n" ;
	  
		close MM ;
		@mm = () ;
		
		########################
		system ("perl 3yuan.pl") ;
#		system ("perl watf.pl") ;
		system ("perl clsuip.pl") ;
		system ("perl tongji3.pl") ;
		system ("perl suiplei.pl") ;
#		system ("perl ch4.pl") ;###
		###########
		
		open (NN,"<3pinglei.txt");
		open (QQ,"<suilei.txt");
		
		@nn = <NN> ;
    
    @qqi = <QQ> ;
		
		print SP "@nn" ;
		print WS "@qqi" ;
		
		close NN ;
		@nn = () ;
		close QQ ;
		@qqi = () ;
#		################################

########################################
    system ("perl half-cages.pl") ;
    system ("perl half_liantong.pl") ; 
    ############################
     open (SS,"<AllofThem.txt");
    
    while (<SS>) {
    	
    	push @ss ,[split] ;
    	
    }
    
    my $li_ii = 0 ;
    
    foreach my $a(@ss){
    	
    	$li_ii ++ ;
    	
    }
    
    @ss = () ;
    close SS ;
    #####################################
    open (LK,"<TheLagrestOne.txt");
    @lk = <LK> ;
    print LJS "# $li_ii # @lk" ;
    close LK ;
    @lk = () ;
    ##
    system ("perl cage.pl");
    open (CAGE,"<cage_out.txt");
    @cage = <CAGE>;
    print OUTCA "@cage";
    close CAGE;
    @cage = ();
   

#		open (JW,"<CH4dissolve.txt");
#		while (<JW>){
#
#      push @jw ,[split] ;
#	
#    }
#
#    $ijw = 0 ;
#    foreach my $ajw(@jw){
#	
#	    $ijw++;
#	    
#    }
#    print JWR "$ijw \n" ;
#    close JW ;
#    @jw = () ;
#
#		###########################
		
		open TC,'+> z.lammpstrj';
		
	}
	
	print TC "$a" ;
	
}

close TC ;
 
close TM ;
close GS ;
close LJS ;


                                                                                              