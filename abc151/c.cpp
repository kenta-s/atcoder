#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>
#include <map>

using namespace std;

int main(){
  int N,M;
  cin >> N >> M;
  map<int, map<string, int>> table;
  // map<int, int> table;
  for(int i=0; i<M; i++){
    int tmp;
    cin >> tmp;
    string res;
    cin >> res;
    if(table[tmp]["AC"] > 0){
    }else{
      table[tmp][res] += 1;
    }
  }

  int ans1 = 0;
  int ans2 = 0;
  for(int i=1; i<=N; i++){
    if(table[i]["AC"] > 0){
      ans1 += table[i]["AC"];
      ans2 += table[i]["WA"];
    }
  }

  cout << ans1 << ' ' << ans2 << endl;
  return 0;
}
