#include <iostream>
#include <vector>

using namespace std;
int N,K;
string S;

int main(){
  cin >> N >> K;
  cin >> S;
  S[K-1] = char(tolower(S[K-1]));
  cout << S << endl;
  return 0;
}
