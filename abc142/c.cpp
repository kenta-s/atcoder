#include <iostream>
#include <map>

using namespace std;

int main(){
  int N;
  cin >> N;
  int A[N];
  map<int, int> table;

  for(int i=0; i<N; i++){
    int a;
    cin >> a;
    a--;
    table[a] = i+1;
  }

  for(int i=0; i<N; i++){
    cout << table[i] << ' ';
  }
  cout << endl;

  return 0;
}
