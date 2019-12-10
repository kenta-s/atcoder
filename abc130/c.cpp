#include <iostream>
#include <iomanip>

using namespace std;

int main(){
  int W,H,x,y;
  cin >> W >> H >> x >> y;
  double a;
  a = double(W) * double(H) / 2;
  if(x * 2 == W && y * 2 == H){
    cout << fixed << setprecision(6) << a << ' ' << 1 << endl;
  }else{
    cout << fixed << setprecision(6) << a << ' ' << 0 << endl;
  }
  return 0;
}
