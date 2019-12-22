#include <iostream>

using namespace std;

int main(){
  int N,D;
  cin >> N >> D;
  int ans = N / ( 2 * D + 1 );
  ans += N % ( 2 * D + 1 ) == 0 ? 0 : 1;
  cout << ans << endl;
  return 0;
}

