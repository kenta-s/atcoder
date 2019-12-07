#include <iostream>
#include <vector>

using namespace std;
int N,M;
int ans = 0;
// if true, it's a pitfall
bool A[100000] = {false};
long long dp[100000] = {0};

int main(){
  cin >> N >> M;
  for(int i=0; i<M; i++){
    int a;
    cin >> a;
    a = a - 1;
    A[a] = true;
  }
  // cout << "A 0 is " << A[0] << endl;
  // cout << "A 1 is " << A[1] << endl;
  // cout << "A 2 is " << A[2] << endl;
  for(int i=0; i<N; i++){
    if(A[i]){
      dp[i] = 0;
    }else if(i == 0){
      dp[i] = 1;
    }else if(i == 1){
      dp[i] = dp[i-1] + 1;
    }else{
      dp[i] = (dp[i-1] + dp[i-2]) % 1000000007;
    }
  }
  cout << dp[N-1] << endl;
  return 0;
}
