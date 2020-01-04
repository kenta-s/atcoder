#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(){
  int N;
  vector<int> L;
  cin >> N;
  for(int i=0; i<N; i++){
    int l;
    cin >> l;
    L.push_back(l);
  }
  sort(L.begin(), L.end());

  int ans = 0;

  for(int i=0; i<N-1; i++){
    for(int j=i+1; j<N; j++){
      int target = L[i] + L[j];
      int index = lower_bound(L.begin(), L.end(), target) - L.begin();
      if(index > j && index > i){
        ans += max(0, index - (j+1));
      }
    }
  }

  cout << ans << endl;

}
