#include <iostream>
#include <string>
using namespace std;

string n;
int main() {
  int i;
  int sum = 0;
  cin >> n;
  for(i=0; i<n.length(); i++){
    sum += n[i] - '0';
  }
  if(stoi(n) % sum == 0){
    cout << "Yes" << endl;
  }else{
    cout << "No" << endl;
  }
  return 0;
}
