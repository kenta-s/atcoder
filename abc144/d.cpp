#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main(){
  double a,b,x;
  cin >> a >> b >> x;
  double h = x / (a * a);
  double ans;
  double degree = (180.0/3.141592653589793238463);
  if(((a*a)*b) / 2 <= x){
    ans = atan(-((2 * (h-b))/a));
  }else{
    ans = atan(b/((2 * a * h)/b));
  }

  ans = ans * degree;
  cout << fixed << setprecision(10) << ans << endl;

  return 0;
}
