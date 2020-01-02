#include <iostream>

using namespace std;

int main(){
  int N;
  cin >> N;
  int A[N];
  int B[N-1];
  int ans = 0;
  for(int i=0; i<N-1; i++){
    cin >> B[i];
  }

  A[N-1] = B[N-2];
  A[0] = B[0];

  for(int i=N-2; i>0; i--){
    A[i] = min(B[i], B[i-1]);
  }

  for(int i=0; i<N; i++){
    ans += A[i];
  }

  cout << ans << endl;

  return 0;
}
