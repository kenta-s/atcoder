#include <iostream>
#include <vector>

using namespace std;
string S;
// vector<int> S;

int main(){
  cin >> S;
  int a,b;
  bool A,B;
  a = stoi(S.substr(0,2));
  b = stoi(S.substr(2,2));
  A = a > 0 && a <= 12;
  B = b > 0 && b <= 12;
  if(A && B){
    cout << "AMBIGUOUS" << endl;
  }else if(A && !B){
    cout << "MMYY" << endl;
  }else if(!A && B){
    cout << "YYMM" << endl;
  }else if(!A && !B){
    cout << "NA" << endl;
  }
  return 0;
}
