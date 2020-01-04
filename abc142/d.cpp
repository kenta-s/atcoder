#include <iostream>
#include <map>

using namespace std;

long long gcd(long long a, long long b) { return b ? gcd(b,a%b) : a;}

map< long long, int > prime_factor(long long n) {
  map< long long, int > ret;
  for(long long i = 2; i * i <= n; i++) {
    while(n % i == 0) {
      ret[i]++;
      n /= i;
    }
  }
  if(n != 1) ret[n] = 1;
  return ret;
}

int main(){
  long long A,B,c;
  cin >> A >> B;
  c = gcd(A,B);

  map<long long, int> table;
  table = prime_factor(c);

  long long ans = 1;
  for( auto i = table.begin(); i != table.end() ; ++i ) {
    ans++;
  }

  cout << ans << endl;

  return 0;
}
