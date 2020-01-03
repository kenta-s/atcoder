#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

int main(){
  int N,M;
  cin >> N >> M;
  vector<long long> A;
  priority_queue<long long, vector<long long>, less<long long>> que;
  for(int i=0; i<N; i++){
    long long a;
    cin >> a;
    que.push(a);
  }

  for(int i=0; i<M; i++){
    long long tmp = que.top();
    que.pop();
    que.push(tmp / 2);
  }
  long long ans = 0;
  while(!que.empty()){
    ans += que.top();
    que.pop();
  }

  cout << ans << endl;

  return 0;
}
