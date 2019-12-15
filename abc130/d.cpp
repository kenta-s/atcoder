#include <iostream>
#include <vector>

using namespace std;

int main(){
  int N, K;
  cin >> N >> K;
  vector<int> A(N);
  long long sum = 0;
  for(int i=0; i<N; i++){
    cin >> A[i];
    // sum += A[i];
  }
  int ans = 0;
  int L = 0;
  int R = 0;
  for(int L=0; L<N; L++){
    int tmp = 0;
    for(int R=L; R<N; R++){
      tmp += A[R];
      if(tmp >= K){
        ans += N - R;
        // cout << "L is " << L << ' ' << "R is " << R << ' ' << "ans is now " << ans << endl;
        break;
      }
    }
  }
  // for(int R=0; R<N; R++){
  //   sum += A[R];
  //   if(sum >= K && L == R){
  //     ans++;
  //     continue;
  //   }

  //   while(sum >= K && L < R){
  //     ans++;
  //     sum -= A[L];
  //     L++;
  //   }
  // }
  cout << ans << endl;
  return 0;
}
