#include <iostream>

using namespace std;

int main(){
  string S;
  cin >> S;
  string ans = "Good";
  if(S[0] == S[1]) ans = "Bad";
  if(S[1] == S[2]) ans = "Bad";
  if(S[2] == S[3]) ans = "Bad";

  cout << ans << endl;
}
