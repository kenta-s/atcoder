#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
int N;
vector<int> W;
int ans = 300;

int main(){
  cin >> N;
  for(int i=0; i<N; i++){
    int w;
    cin >> w;
    W.push_back(w);
  }
  int sum,tmp = 0;
  for(int i=0; i<N; i++){
    sum = sum + W[i];
  }
  for(int i=0; i<N; i++){
    tmp = tmp + W[i];
    int a = sum - tmp;
    int b = sum - a;
    int diff = abs(a - b);
    ans = min(ans, diff);
  }

  cout << ans << endl;
  return 0;
}
