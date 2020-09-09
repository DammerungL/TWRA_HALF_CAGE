# TWRA_HALF_CAGE
topological method for identification of hydrate cages

input: panding.gro  methane550 water_tip4p3487 example

step1: g++ cj.cpp -o cj

step2: perl main.pl

output:
1. AllofThem.txt all nucleus
2. TheLagrestOne.txt the largest nucleus
3. ch2chuli.txt all rings (4-ring, 5-ring, 6-ring and 7-ring)
4. 3pinglei.txt the number of different TWRAs
5. 

If you use the TWRA_HALF_CAGE program, please cite the following refences:
Unraveling nucleation pathway in methane clathrate formation
