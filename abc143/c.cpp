#include <iostream>

using namespace std;

int main(){
  int N;
  string S;
  cin >> N;
  cin >> S;
  int ans = 1;
  for(int i=1; i<N; i++){
    if(S[i-1] != S[i]) ans++;
  }

  cout << ans << endl;
  return 0;
}
