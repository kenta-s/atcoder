#include <iostream>

using namespace std;

int main(){
  int N,X;
  cin >> N >> X;
  int L[N];
  int A[N+1];
  A[0] = 0;
  for(int i=0; i<N; i++){
    cin >> L[i];
    if(i==0){
      A[i+1] = L[i];
      // cout << A[i+1] << endl;
    }else{
      A[i+1] = A[i] + L[i];
      // cout << A[i+1] << endl;
    }
  }

  int ans = 0;

  for(int i=0; i<=N; i++){
    if(A[i] <= X){
      ans = i;
    }
  }

  cout << ans + 1 << endl;
}
