#include <iostream>

using namespace std;

int A,B;

int main(){
  cin >> A >> B;
  int ans;
  if(A >= 13){
    ans = B;
  }else if(A >= 6){
    ans = B / 2;
  }else if(A <= 5){
    ans = 0;
  }

  cout << ans << endl;

  return 0;
}
