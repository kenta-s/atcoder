#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

vector<int> clone(vector<int> p, int n){
  vector<int> tmp(n);
  for(int i = 0; i<n; i++){
    tmp[i] = p[i];
  }
  return tmp;
}

int main(){
  int N;
  cin >> N;
  vector<int> p(N);
  vector<int> sorted(N);
  for(int i=0; i<N; i++){
    int tmp;
    cin >> tmp;
    p[i] = tmp;
    sorted[i] = tmp;
  }
  bool ans = false;
  sort(sorted.begin(), sorted.end());
  bool flg = true;
  for(int i=0; i<N; i++){
    if(p[i] != sorted[i]) flg = false;
    if(i == N-1 && flg){
      ans = true;
    }
  }
  for(int i=0; i<N; i++){
    for(int j=i+1; j<N; j++){
      vector<int> tmp = clone(p, N);
      tmp[i] = p[j];
      tmp[j] = p[i];
      flg = true;
      for(int k=0; k<N; k++){
        if(tmp[k] != sorted[k]) flg = false;
      }
      if(flg){
        ans = true;
      }
    }
  }
  if(ans){
    cout << "YES" << endl;
  }else{
    cout << "NO" << endl;
  }
  return 0;
}

