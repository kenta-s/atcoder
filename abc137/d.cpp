#include <iostream>
#include <vector>
#include <map>
#include <queue>

using namespace std;

int main(){
  int N,M;
  cin >> N >> M;
  int AB[N][2];
  int ans = 0;
  map<int, vector<int>> table;
  for(int i=0; i<N; i++){
    int a,b;
    cin >> a >> b;
    table[a].push_back(b);
  }
  priority_queue<int, vector<int>, less<int>> que;
  for(int i=1; i<=M; i++){
    que.push(0);
    for(int j=0; j<table[i].size(); j++){
      que.push(table[i][j]);
    }
    ans += que.top();
    que.pop();
  }
  cout << ans << endl;
  return 0;
}
