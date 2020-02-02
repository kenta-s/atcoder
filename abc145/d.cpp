#include <iostream>
#include <vector>
#include <cmath>
#include <iomanip>
// #include <cfloat>

using namespace std;

long long MOD = 1000000007;

long long modpow(long long a, long long n, long long mod) {
  long long res = 1;
  while (n > 0) {
  if (n & 1) res = res * a % mod;
    a = a * a % mod;
    n >>= 1;
  }
  return res;
}

long long factorial(int x){
  long long tmp = 1;
  for(int i=1; i<=x; i++){
    tmp = (tmp * i) % MOD;
  }
  return tmp % MOD;
}

int main(){
  int X,Y;
  cin >> X >> Y;

  vector<vector<double>> inverse = {
    {2/3.0, -1/3.0},
    {-1/3.0, 2/3.0}
  };

  double a = inverse[0][0] * X + inverse[0][1] * Y;
  double b = inverse[1][0] * X + inverse[1][1] * Y;

	double fractpart, intpart;
	fractpart = modf(a, &intpart);
	if(to_string(fractpart) == "1.000000"){
		a = ceil(a);
	}

  double fract2, int2;
	fract2 = modf(b, &int2);
	if(to_string(fract2) == "1.000000"){
		b = ceil(b);
	}

  if(floor(a) != ceil(a) || floor(b) != ceil(b) || a < 0 || b < 0){
    cout << 0 << endl;
    exit(0);
  }

  long long n = a+b;
  long long r = min(a,b);

  long long ans = factorial(n) % MOD * modpow(((factorial(r) % MOD) * (factorial(n-r) % MOD)) % MOD, MOD-2, MOD);

  cout << ans % MOD << endl;

  return 0;
}
