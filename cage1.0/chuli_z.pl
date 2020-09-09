open (CJ,"<cj1.txt") ;
open (CHILL,"<CHILL+_size.txt") ;

while (<CHILL>){
	push @chill ,[split] ;
}
$i = 0 ;
$N = 0 ;
foreach my $a(@chill) {
	$i ++;
	if ( $i == 1 ) {
		$N = $a -> [0];
	}
	for ( $b = 1 ; $b <= $N ; $b++ ) {
		my $linshi = $a -> [$b];
		$index_i[$b] = (($linshi - 1)*4) + 550 ;
		$panding[$index_i[$b]] = 1;
	}
}

while (<CJ>){
	push @cj ,[split] ;
}

foreach my $a(@fi) {
}