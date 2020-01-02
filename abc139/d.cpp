#include <iostream>

using namespace std;

int main(){
  long long N, ans, x;
  cin >> N;
  x = N - 1;
  ans = (x * (x + 1)) / 2;
  cout << ans << endl;
  return 0;
}
