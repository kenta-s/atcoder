#include <iostream>
#include <vector>

using namespace std;

vector<int> to[200006];
bool visited[200006] = {false};
vector<int> ans;

void dfs(int node, int x){
  if(visited[node]) return;
  ans[node] += x;
  visited[node] = true;
  for(int i=0; i<to[node].size(); i++){
    dfs(to[node][i], ans[node]);
  }
}

int main(){
  int N,Q;
  cin >> N >> Q;

  for(int i=0; i<N-1; i++){
    int a,b;
    cin >> a >> b;
    to[a].push_back(b);
    to[b].push_back(a);
  }

  ans.resize(200006);

  for(int i=0; i<Q; i++){
    int a,b;
    cin >> a >> b;
    ans[a] += b;
  }

  dfs(1, 0);

  for(int i=1; i<=N; i++){
    cout << ans[i] << ' ';
  }
  cout << endl;

  return 0;
}
