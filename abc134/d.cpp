#include <iostream>

using namespace std;

int main(){
  int N;
  cin >> N;
  int a[N+1];
  int b[N+1];
  int ans[N+1];
  for(int i=1; i<=N; i++){
    cin >> a[i];
  }
  for(int i=N; i>=1; i--){
    int cnt = 0;
    for(int j=i+i; j<=N; j+=i){
      if(j % i == 0){
        if(b[j] == 1) cnt++;
      }
    }
    if(a[i] == 1){
      if(cnt % 2 == 0){
        b[i] = 1;
      }else{
        b[i] = 0;
      }
    }else{
      if(cnt % 2 == 1){
        b[i] = 1;
      }else{
        b[i] = 0;
      }
    }
  }

  int m = 0;
  for(int i=1; i<=N; i++){
    if(b[i] == 1){
      m++;
    }
  }
  cout << m << endl;
  for(int i=1; i<=N; i++){
    if(b[i] == 1){
      cout << i << ' ';
    }
  }
  cout << endl;
  return 0;
}
