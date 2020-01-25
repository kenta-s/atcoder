#include <iostream>
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

  double tmp1 = 0;
  for(int i=0; i<N-1; i++){
    int x1 = xy[i][0];
    int y1 = xy[i][1];
    int x2 = xy[i+1][0];
    int y2 = xy[i+1][1];

    tmp1 += sqrt(pow((x1-x2), 2) + pow((y1-y2), 2));
    // cout << "tmp1 is " << tmp1 << endl;
  }

  // 2.41421

  int x1 = xy[N-1][0];
  int y1 = xy[N-1][1];
  int x2 = xy[0][0];
  int y2 = xy[0][1];

  double tmp2 = sqrt(pow((x1-x2), 2) + pow((y1-y2), 2));

  for(int i=0; i<N-2; i++){
    int x1 = xy[i][0];
    int y1 = xy[i][1];
    int x2 = xy[i+1][0];
    int y2 = xy[i+1][1];

    tmp2 += sqrt(pow((x1-x2), 2) + pow((y1-y2), 2));
  }

  int fact = factorial(N);
  int b = factorial(N-1);
  int a = fact - b;

  double ans = ((tmp1 * a) + (tmp2 * b)) / fact;
  cout << ans << endl;

  return 0;
}
