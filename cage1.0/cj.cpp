#include <iostream>
#include <iostream>
#include <complex>
#include <math.h>
#include <fstream>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

double PPP_zhuan ( double box, double d_1, double d_2 ) {
	//
	double abs_d;
	
	if ( (abs(d_1-d_2)) > (box/2) ){
  	if (((d_2)-d_1)<0) {
    	abs_d = (box) - ((d_1)-(d_2));
    }else{
    	abs_d = -((box) - ((d_2)-(d_1)));
    }

  }else{
    abs_d = (d_2-d_1);
  }
	
	return abs_d;
}

int main()
{
    cout << "Hello world!" << endl;
    cout.precision(16);
    ifstream OpenFile("panding.gro", ios::in);
    if (OpenFile.fail())
    {
        cout<<"Can not open target file"<<endl;
        return 0;
    }
    std::string lineStr;
    std::vector<int> Xu ;
    std::vector<string> typeXu ;
    std::vector<double> x ;
    std::vector<double> y ;
    std::vector<double> z ;
    double boxx;
    double boxy;
    double boxz;
    int ii = 0;
    int b_N = 0 ;
    if (OpenFile)
    {
        int i = 0;
        //int ii = 0;
        while (getline(OpenFile,lineStr))
        {
            i++;
           //cout<<i<< ":" <<lineStr<<endl;
            if ( i == 2 ) {
                //
                string bN_0;
                istringstream bs(lineStr);
                bs>>bN_0;
                b_N = atoi(bN_0.c_str());
                cout << b_N <<endl;
            }

            if ( (i >= 3) && (i < (3+b_N)) )
            {
                ii ++;
                string a1,a2,a3,a4,a5,a6;
                //istringstream is(lineStr);
                //is>>a1>>a2>>a3>>a4>>a5;
                a1 = lineStr.substr(0,8);
                a2 = lineStr.substr(9,6);//type
                a3 = lineStr.substr(15,5);//XU
                a4 = lineStr.substr(21,8);
                a5 = lineStr.substr(29,8);
                a6 = lineStr.substr(37,8);
                //cout<<a1<<","<<a2<<","<<a3<<","<<a4<<","<<a5<<endl;
                Xu.push_back(atoi(a3.c_str()));
                typeXu.push_back(a2.c_str());
                x.push_back(atof(a4.c_str()));
                y.push_back(atof(a5.c_str()));
                z.push_back(atof(a6.c_str()));
            }
            if (i == (3+b_N)) {
                string box_x,box_y,box_z;
                istringstream ip(lineStr);
                ip>>box_x>>box_y>>box_z;
                boxx = atof(box_x.c_str());
                boxy = atof(box_y.c_str());
                boxz = atof(box_z.c_str());
            }
        }
    }
    OpenFile.close();
    int t ;
    t = ii - 1 ;
    cout<<"####"<<t<<"####"<< Xu[t] << "," << typeXu[t] << "," << x[t] << "," << y[t] << "," << z[t] <<endl ;
    cout<<boxx<<":"<<endl;
    cout<<boxy<<":"<<endl;
    cout<<boxz<<":"<<endl;
    double const PI = acos(double(-1));
    cout<<PI<<endl;
    //
    ofstream OUT_print ;
    ii = ii -1;
    OUT_print.open("cj1.txt",ios::trunc) ;
    int jishu_i[10];
//    int jishu_xin[ii];
//    int jishu_xin_F[ii];
//    double jishu_x[ii][10];
//    double jishu_y[ii][10];
//    double jishu_z[ii][10];
    int jishu_0[ii];
    //
    for ( int ti = 0 ; ti<= ii ; ti ++ ) {
        //
   //     cout<<ti<<endl;
        int jishu = 0 ;
        for (int tj = 0; tj<= ii; tj++) {
            //
            double sx,sy,sz;
            sx = 0;
            sy = 0;
            sz = 0;
            if ( ( tj !=ti ) && ( typeXu[tj] == "   OW1" ) && ( typeXu[ti] == "   OW1" ) ) {
                if ( (abs(x[ti]-x[tj])) > (boxx/2) ){
                        if (((x[tj])-x[ti])<0) {
                            sx = (boxx) - ((x[ti])-(x[tj]));
                        }else{
                            sx = -((boxx) - ((x[tj])-(x[ti])));
                        }

                }else{
                    sx = (x[tj]-x[ti]);
                }
                //
                if ( (abs(y[ti]-y[tj])) > (boxy/2) ){
                        if (((y[tj])-y[ti])<0) {
                            sy = (boxy) - ((y[ti])-(y[tj]));
                        }else{
                            sy = -((boxy) - ((y[tj])-(y[ti])));
                        }

                }else{
                    sy = (y[tj]-y[ti]);
                }
                //
                if ( (abs(z[ti]-z[tj])) > (boxz/2) ){
                        if (((z[tj])-z[ti])<0) {
                            sz = (boxz) - ((z[ti])-(z[tj]));
                        }else{
                            sz = -((boxz) - ((z[tj])-(z[ti])));
                        }

                }else{
                    sz = (z[tj]-z[ti]);
                }
                //
                if ( ((sx*sx)+(sy*sy)+(sz*sz)) <= (0.35*0.35) ) {
                    //jishu ++;
                    //jishu_i[ti][jishu] = tj;//from 1
                    //jishu_x[ti][jishu] = sx;
                    //jishu_y[ti][jishu] = sy;
                    //jishu_z[ti][jishu] = sz;
                    double R0 = sqrt( ((sx*sx)+(sy*sy)+(sz*sz)) );
                  //  OUT_print<<R0<<" ";
                    //R1;R2;R3;R4;d0=0.09572
                    //R1:ti+1->tj
                    double d0 = 0.09572;
                    double R1_x,R1_y,R1_z,R1;
                    R1_x = PPP_zhuan(boxx,x[ti+1],x[tj]);
                    R1_y = PPP_zhuan(boxy,y[ti+1],y[tj]);
                    R1_z = PPP_zhuan(boxz,z[ti+1],z[tj]);
                    R1 = sqrt( (R1_x*R1_x) + (R1_y*R1_y) + (R1_z*R1_z) );
                //    OUT_print<<R1<<" ";
                    //R2:ti+2->tj
                    double R2_x,R2_y,R2_z,R2;
                    R2_x = PPP_zhuan(boxx,x[ti+2],x[tj]);
                    R2_y = PPP_zhuan(boxy,y[ti+2],y[tj]);
                    R2_z = PPP_zhuan(boxz,z[ti+2],z[tj]);
                    R2 = sqrt( (R2_x*R2_x) + (R2_y*R2_y) + (R2_z*R2_z) );
               //     OUT_print<<R2<<" ";
                    //R3:tj+1->ti
                    double R3_x,R3_y,R3_z,R3;
                    R3_x = PPP_zhuan(boxx,x[tj+1],x[ti]);
                    R3_y = PPP_zhuan(boxy,y[tj+1],y[ti]);
                    R3_z = PPP_zhuan(boxz,z[tj+1],z[ti]);
                    R3 = sqrt( (R3_x*R3_x) + (R3_y*R3_y) + (R3_z*R3_z) );
                //    OUT_print<<R3<<" ";
                    //R4:tj+2->ti
                    double R4_x,R4_y,R4_z,R4;
                    R4_x = PPP_zhuan(boxx,x[tj+2],x[ti]);
                    R4_y = PPP_zhuan(boxy,y[tj+2],y[ti]);
                    R4_z = PPP_zhuan(boxz,z[tj+2],z[ti]);
                    R4 = sqrt( (R4_x*R4_x) + (R4_y*R4_y) + (R4_z*R4_z) );
                //    OUT_print<<R4<<" ";
                    //fhi1,fhi2,fhi3,fhi4
                    double fhi1,fhi2,fhi3,fhi4;
                    fhi1 = ((d0*d0)+(R0*R0)-(R1*R1))/(2*R0*d0);
                    fhi2 = ((d0*d0)+(R0*R0)-(R2*R2))/(2*R0*d0);
                    fhi3 = ((d0*d0)+(R0*R0)-(R3*R3))/(2*R0*d0);
                    fhi4 = ((d0*d0)+(R0*R0)-(R4*R4))/(2*R0*d0);
                    if ( (fhi1>0.8660254) || (fhi2>0.8660254) || (fhi3>0.8660254) || (fhi4>0.8660254) ) {
                    	jishu ++;
                    	jishu_i[jishu] = tj;//from_1
                   // 	OUT_print<<"("<<fhi1<<","<<fhi2<<","<<fhi3<<","<<fhi4<<")"<<endl;
                    }else{
                   // 	OUT_print<<endl;
                    }
                }
                //
            }
        }
        //
        OUT_print<<" "<<ti+1<<" ";
      //  cout<<ti<<endl;
      //  jishu_0[ti] = jishu;
        //
        OUT_print<<jishu<<"  ";
        for ( int ccss = 1 ; ccss <= jishu ; ccss ++ ) {
            //
            OUT_print<<jishu_i[ccss]+1<<" ";
        }
        OUT_print<<"\n";
        //
    }
    OUT_print.close();
    return 0;
}
