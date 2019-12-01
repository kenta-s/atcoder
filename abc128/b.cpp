#include <iostream>
#include <algorithm>
#include <vector>
#include <utility>
#define rep(i,n) for(int (i)=0;(i)<(n);(i)++)

using namespace std;
struct rests{
  string city;
  int point;
  int index;
};
bool my_compare(rests a, rests b) {
    if(a.city != b.city){
      return a.city < b.city;
    }

    if(a.point != b.point){
        return a.point > b.point;
    }else{
        return true;
    }
}
int N;

int main(){
  cin >> N;
  vector<rests> S;
  string s;
  int p;
  rep(i,N){
    cin >> s >> p;
    rests r = {s, p, i+1};
    S.push_back(r);
  }
  sort(S.begin(),S.end(), my_compare);
  rep(i, S.size()){
    cout << S[i].index << endl;
  }
  return 0;
}
