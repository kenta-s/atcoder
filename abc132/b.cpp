#include <iostream>

using namespace std;

int main(){
  int n;
  cin >> n;
  int p[n];
  int ans = 0;
  for(int i=0; i<n; i++){
    cin >> p[i];
  }
  for(int i=0; i<n; i++){
    if(i == 0) continue;
    if(i == n-1) continue;
    if(p[i-1] < p[i] && p[i] < p[i+1]){
      ans++;
    }
    if(p[i-1] > p[i] && p[i] > p[i+1]){
      ans++;
    }
  }
  cout << ans << endl;
}
