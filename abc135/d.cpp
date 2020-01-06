#include <iostream>
#include <cmath>

using namespace std;

int main(){
  string S;
  cin >> S;
  int N = S.size();

  long long dp[N][13];
  for(int i=0; i<N; i++){
    for(int j=0; j<13; j++){
      dp[i][j] = 0;
    }
  }

  int digit = 10;
  for(int i=N-1; i>=0; i--){
    if(i == N-1){
      if(S[i] == '?'){
        for(int j=0; j<10; j++){
          dp[i][j % 13] += 1;
        }
      }else{
        dp[i][(S[i] - '0') % 13] += 1;
      }

      continue;
    }

    if(S[i] == '?'){
      for(int j=0; j<10; j++){
        int n = (j * digit) % 13;
        dp[i][n] += dp[i+1][(18 - n) % 13] + 1;
      }
    }else{
      int n = ((S[i] - '0') * digit) % 13;
      cout << " n is " << n << endl;
      for(int j=0; j<13; j++){
        dp[i][j] += dp[i+1][j];
      }
      cout << " dp is " << dp[i][n] << endl;
    }
    digit = digit * 10;
  }

  long long mod = pow(10, 9) + 7;

  cout << dp[0][5] % mod << endl;

  return 0;
}
