#include <iostream>
#include <map>
#include <cmath>

using namespace std;

map< int64_t, int > prime_factor(int64_t n) {
  map< int64_t, int > ret;
  for(int64_t i = 2; i * i <= n; i++) {
    while(n % i == 0) {
      ret[i]++;
      n /= i;
    }
  }
  if(n != 1) ret[n] = 1;
  return ret;
}

int N;
int main() {
  int i;
  int ans = pow(10, 9);
  cin >> N;
  int A[N];
  for(i=0; i<N; i++){
		cin >> A[i];
    ans = min(ans, prime_factor(A[i])[2]);
  }
  cout << ans << endl;
  return 0;
}
