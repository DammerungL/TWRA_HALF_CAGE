# TWRA_HALF_CAGE
topological method for identification of hydrate cages

in huan0-thread2.pl, the maximum number of threads is set to 10. you can modify it to your systems and hardware

in main.pl, If activated in the main program, it will calculate the regular 512, 51262 cages.

in main.pl, If activated in the main program, it will calculate the asphericity of nucleus.

input: panding.gro  methane550 water_tip4p3487 example. you can calculate any different system, but follow the panding.gro's format for declaing methane_C first and then TIP4P_water.

step0: cd cage1.0

step1: g++ cj.cpp -o cj

step2: perl main.pl

output:
1. AllofThem.txt all nucleus
2. TheLagrestOne.txt the largest nucleus (nucleus_size | water_index)
3. ch2chuli.txt all rings (4-ring, 5-ring, 6-ring and 7-ring)
4. 3pinglei.txt the number of different TWRAs
5. 

If you use the TWRA_HALF_CAGE program, please cite the following refences:
Unraveling nucleation pathway in methane clathrate formation
