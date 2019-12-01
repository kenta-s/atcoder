#include <iostream>

using namespace std;
int r, D, x;

int main(){
  cin >> r >> D >> x;
  for(int i=0; i<10; i++){
    x = r * x - D;
    cout << x << endl;
  }
  return 0;
}
