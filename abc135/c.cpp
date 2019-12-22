#include <iostream>
#include <vector>

using namespace std;

int main(){
  int N;
  cin >> N;
  vector<long long> A(N+1);
  vector<long long> B(N+1);
  for(int i=0; i<=N; i++){
    cin >> A[i];
  }
  for(int i=0; i<N; i++){
    cin >> B[i];
  }
  long long killed = 0;

  for(int i=N; i>0; i--){
    if(B[i-1] >= A[i]){
      killed += A[i];
      B[i-1] -= A[i];
      if(A[i-1] >= B[i-1]){
        killed += B[i-1];
        A[i-1] -= B[i-1];
      }else{
        killed += A[i-1];
        A[i-1] = 0;
      }
    }else{
      killed += B[i-1];
      B[i-1] = 0;
    }
  }
  cout << killed << endl;
  return 0;
}


