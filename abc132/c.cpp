#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(){
  int N;
  cin >> N;
  vector<int> d(N);
  for(int i=0; i<N; i++){
    cin >> d[i];
  }
  sort(d.begin(), d.end());
  int pivot = d[N/2];
  int ans = 0;
  if(d[(N/2) -1] == pivot){
    // do nothing
  }else{
    if(N % 2 == 0){
      ans += pivot - d[(N/2) - 1];
    }else{
      ans += 1;
    }
  }
  cout << ans << endl;
  return 0;
}
