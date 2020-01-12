#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>
#include <map>

using namespace std;

int main(){
  int N, K, M;
  cin >> N >> K >> M;
  int A[N];
  int avg = 0;
  for(int i=0; i < N-1; i++){
    cin  >> A[i];
    avg += A[i];
  }

  for(int i=0; i<=min(100, K); i++){
    if(((avg + i) / N) >= M){
      cout << i << endl;
      exit(0);
    }
  }

  cout << -1 << endl;

  return 0;
}

