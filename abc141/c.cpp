#include <iostream>
#include <map>

using namespace std;

int main(){
  long long N,K,Q;
  cin >> N >> K >> Q;
  map< int, int > table;
  for(int i=0; i<N; i++){
    table[i] = 0;
  }
  for(int i=0; i<Q; i++){
    int a;
    cin >> a;
    a--;
    table[a]++;
  }
  for(int i=0; i<N; i++){
    if(table[i] >= Q-K+1){
      cout << "Yes" << endl;
    }else{
      cout << "No" << endl;
    }
  }
  return 0;
}
