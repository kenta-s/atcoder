#include <iostream>

using namespace std;
int N,M;

int main(){
  cin >> N >> M;
  int L[M];
  int R[M];
  int MIN = 100000;
  int MAX = -1;
  for(int i=0; i<M; i++){
    cin >> L[i] >> R[i];
    MAX = max(MAX, L[i]);
    MIN = min(MIN, R[i]);
  }
  if(MIN >= MAX){
    cout << MIN - MAX + 1 << endl;
  }else{
    cout << 0 << endl;
  }
  return 0;
}
