#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(){
  int N;
  vector<int> v;
  cin >> N;
  for(int i=0; i<N; i++){
    int a;
    cin >> a;
    v.push_back(a);
  }
  sort(v.begin(), v.end());
  double ans = v[0];
  for(int i=1; i<N; i++){
    ans = (v[i] + ans) / 2;
  }
  cout << ans << endl;
  return 0;
}
