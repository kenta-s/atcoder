#include <iostream>
#include <vector>

using namespace std;

int N, Q;
vector<int> parent;

int root(int x){
  if(parent[x] == x){
    return x;
  }else{
    parent[x] = root(parent[x]);
    return parent[x];
  }
}

bool same(int x, int y){
  return root(x) == root(y);
}

void unite(int x, int y){
  x = root(x);
  y = root(y);
  if(x == y) return;
  parent[x] = y;
}

int main(){
  int i, q, a, b;
  cin >> N >> Q;
  parent.resize(N);
  for(i=0; i<N; i++){
    parent[i] = i;
  }
  for(i=0; i<Q; i++){
    cin >> q >> a >> b;
    if(q == 0){
      unite(a,b);
    }else{
      if(same(a,b)){
        cout << "Yes" << endl;
      }else{
        cout << "No" << endl;
      }
    }
  }
  return 0;
}
