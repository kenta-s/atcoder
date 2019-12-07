#include <iostream>
#include <queue>

using namespace std;
priority_queue<int, vector<int>, greater<int>> que;

int P,Q,R;
int main(){
  cin >> P >> Q >> R;
  que.push(P);
  que.push(Q);
  que.push(R);
  int ans = 0;
  ans = ans + que.top();
  que.pop();
  ans = ans + que.top();
  que.pop();

  cout << ans << endl;
  return 0;
}
