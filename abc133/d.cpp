#include <iostream>

using namespace std;

int main(){
  int N;
  cin >> N;
  long long A[N];
  long long tmp = 0;
  for(int i=0; i<N; i++){
    cin >> A[i];
    if(i%2 == 0){
      tmp += A[i];
    }else{
      tmp -= A[i];
    }
  }
  long long x1 = tmp / 2;
  cout << x1 * 2;
  long long x = x1;
  for(int i=0; i<N-1; i++){
    cout << ' ' << (A[i] - x) * 2;
    x = A[i] - x;
  }
  cout << endl;
  return 0;
}

