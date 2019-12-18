#include <iostream>
#include <vector>

using namespace std;

int main(){
  int N, K;
  int ans;
  vector<vector<int>> b;
  cin >> N >> K;
  int MAX = ((N-2) * (N-1))/2;
  if(K>MAX){
    cout << "-1" << endl;
    return 0;
  }
  int bridges = N-1;
  bridges += MAX-K-1;
  cout << bridges << endl;
  for(int i=0; i<N-1; i++){
    cout << 1 << ' ' << i+2 << endl;
  }
  for(int i=0; i<bridges-(N-1); i++){
    cout << i+2 << ' ' << i+3 << endl;
  }
}
