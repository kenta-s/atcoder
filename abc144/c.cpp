#include <iostream>
#include <vector>
#include <map>
#include <cmath>

using namespace std;

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
  long long N;
  cin >> N;
  long long ans = 100000000000000000;

  long long n = sqrt(N);
  if(ceil(sqrt(N)) != floor(sqrt(N))) n--;
  n = floor(n);

  for(int i=1; i<=n; i++){
    long long tmp = N / i;
    if(i * tmp != N) continue;
    ans = min(ans, tmp + i - 2);
  }

  cout << ans << endl;

  return 0;
}
