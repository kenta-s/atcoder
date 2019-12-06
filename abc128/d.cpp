#include <iostream>
#include <vector>
#include <queue>

using namespace std;
int N,K;
vector<int> V;
long long ans = 0;

int main(){
  cin >> N >> K;
  for(int i=0; i<N; i++){
    int v;
    cin >> v;
    V.push_back(v);
  }
  int k;
  k = min(N, K);
  for(int i=0; i<k; i++){
    int T = k - i;
    int Remain = i;
    if(N < K){
      Remain = Remain + K - N;
    }
    // cout << "T is " << T << endl;
    for(int j=0; j<=T; j++){
      int L = T - j;
      int R = T - L;
      long long sum = 0;
      // cout << "----------------------" << endl;
      priority_queue<int, vector<int>, greater<int>> que;
      for(int l=0; l<L; l++){
        if(V[l] < 0){
          que.push(V[l]);
        };
        // cout << "l1 is " << l << endl;
        // cout << "l1 value is " << V[l] << endl;
        sum = sum + V[l];
      }
      for(int l=N-1; l>=N-R; l--){
        if(V[l] < 0){
          que.push(V[l]);
        };
        sum = sum + V[l];
        // cout << "l2 is " << l << endl;
        // cout << "l2 value is " << V[l] << endl;
      }
      // cout << L << ',' << R << endl;
      // cout << "remain is " << Remain << endl;
      // cout << "sum is " << sum << endl;
      // for(int o=0; o<i; o++){
      for(int o=Remain; o>0; o--){
        if(!que.empty()){
          // cout << "que.top is " << que.top() << endl;
          sum = sum - que.top();
          que.pop();
        }
        // que.pop();
        // cout << "o is " << o << endl;
      }
      ans = max(ans, sum);
      // cout << "final sum is " << sum << endl;
    }
  }

  cout << ans << endl;
  return 0;
}
