#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>
#include <utility>
#include <bits/stdc++.h>

using namespace std;
#define rep(i,n) for(int (i)=0;(i)<(n);(i)++)
int N,M;

priority_queue<pair<int, int>> que;
int main(){
  cin >> N >> M;
  int A[N];
  int B[M];
  int C[M];

  vector<int> cands;
  for(int i=0; i<N; i++){
    cin >> A[i];
    que.push(make_pair(A[i], 1));
  }

  for(int i=0; i<M; i++){
    cin >> B[i] >> C[i];
    que.push(make_pair(C[i], B[i]));
  }

  long long ans = 0;
  rep(i,N){
    pair<int, int> target = que.top();
    que.pop();
    if(target.second > 1){
      que.push(make_pair(target.first, target.second - 1));
    }
    ans += target.first;
  }
  cout << ans << endl;

  return 0;
}
