#include <iostream>

using namespace std;

int main(){
  long long L,R;
  long long ans = 2019;
  cin >> L >> R;

  for(long long i=L; i<=L+2019; i++){
    for(long long j=i+1; j<=i+2019 && j<=R; j++){
      ans = min(ans, (i * j) % 2019);
    }
  }

  cout << ans << endl;
  return 0;
}
