#include <iostream>
#include <vector>

using namespace std;

int main(){
  int N;
  long long K;
  cin >> N >> K;
  vector<int> A(N);
  // long long sum = 0;
  for(int i=0; i<N; i++){
    cin >> A[i];
    // sum += A[i];
  }
  int L = 0;
  int R = 0;
  long long sum = 0;
  long long ans = 0;
  for(int L=0; L<N; L++){
    while(sum < K){
      if(R == N) break;
      sum += A[R];
      R++;
    }
    if(sum >= K){
      ans += N - R + 1;
    }
    sum -= A[L];
  }
  cout << ans << endl;
  return 0;
}
