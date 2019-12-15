#include <iostream>
#include <vector>

using namespace std;

int main(){
  int N, K;
  cin >> N >> K;
  vector<int> A(N);
  for(int i=0; i<N; i++){
    cin >> A[i];
  }
  int ans = 0;
  long long sum = 0;
  int L = 0;
  for(int R=0; R<N; R++){
    sum += A[R];
    if(sum >= K && L == R){
      ans++;
      continue;
    }

    while(sum >= K && L < R){
      ans++;
      sum -= A[L];
      L++;
    }
  }
  cout << ans << endl;
  return 0;
}
