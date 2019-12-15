#include <iostream>

using namespace std;

int main(){
  int N, L;
  cin >> N >> L;
  int sum = 0;
  for(int i=0; i<N; i++){
    sum += L + i;
  }
  int ans;
  int diff = 1000000;
  for(int i=0; i<N; i++){
    int tmp = 0;
    for(int j=0; j<N; j++){
      if(i == j) continue;
      tmp += L + j;
    }
    if(abs(sum - tmp) < diff){
      ans = tmp;
      diff = abs(sum - tmp);
    }
  }
  cout << ans << endl;
}

