#include <iostream>

using namespace std;

int main(){
  int N;
  cin >> N;
  int H[N];
  int ans = 0;
  for(int i=0; i<N; i++){
    cin >> H[i];
  }
  int tmp = 0;
  for(int i=1; i<N; i++){
    if(H[i-1] >= H[i]){
      tmp++;
    }else{
      tmp = 0;
    }
    ans = max(ans, tmp);
  }

  cout << ans << endl;
  return 0;
}
