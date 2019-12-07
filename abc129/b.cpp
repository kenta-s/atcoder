#include <iostream>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;
int N;
vector<int> W;
int ans;
map<int, int> mp;

int main(){
  cin >> N;
  for(int i=0; i<N; i++){
    int w;
    cin >> w;
    W.push_back(w);
  }
  int sum = 0;
  sort(W.begin(),W.end());
  for(int i=0; i<N; i++){
    sum = sum + W[i];
  }
  for(int i=0; i<N; i++){
    if(i==0){
      mp[i] = W[i];
    }else{
      mp[i] = W[i] + mp[i-1];
    }
  }
  for(int i=0; i<N; i++){
    int tmp = abs(sum - mp[i]);
    ans = min(ans, tmp);
  }

  cout << ans << endl;
  return 0;
}
