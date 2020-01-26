#include <iostream>
#include <iomanip>
#include <vector>
#include <algorithm>
#include <cmath>

using namespace std;

int factorial(int n){
  if(n == 0) return 1;
  return n * factorial(n-1);
}

int main(){
  int N;
  cin >> N;
  vector<int> xy[N];
  for(int i=0; i<N; i++){
    int x, y;
    cin >> x >> y;
    xy[i].push_back(x);
    xy[i].push_back(y);
  }

  vector<int> v;
  for(int i=0; i<N; i++){
    v.push_back(i);
  }
  double ans = 0;
  // double ans = 0;
  // double tmp = 0;
  do {
    double tmp = 0;
    for(int i = 0; i<N-1; i++){
      int x1 = xy[v[i]][0];
      int x2 = xy[v[i+1]][0];
      int y1 = xy[v[i]][1];
      int y2 = xy[v[i+1]][1];
      tmp += sqrt(((x1-x2) * (x1-x2)) + ((y1-y2) * (y1-y2)));
      // cout << "i is " << i << endl;
      // tmp += 1;
      // cout << v[i];
    }
    ans += tmp;
    // cout << "tmp is " << tmp << endl;
  } while (next_permutation(v.begin(), v.end()));

  ans /= factorial(N);
  cout << fixed << setprecision(10) << ans << endl;

  return 0;
}
