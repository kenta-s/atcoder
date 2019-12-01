#include <iostream>
#include <vector>

using namespace std;
int N,K;
vector<int> V;

int main(){
  cin >> N >> K;
  V.resize(N);
  for(int i=0; i<N; i++){
    cin >> V[i];
  }
  for(int i=0; i<=K; i++){
    int l = K-i;
    int r = i;
    // cout << V.front() << endl;
  }
  return 0;
}
