#include <iostream>
#include <cmath>

using namespace std;

int main(){
  string S;
  cin >> S;
  long long N = S.size();
  long long mod = pow(10, 9) + 7;

  long long dp[N][13];
  for(long long i=0; i<N; i++){
    for(long long j=0; j<13; j++){
      dp[i][j] = 0;
    }
  }

  long long digit = 10;
  for(long long i=N-1; i>=0; i--){
    if(i == N-1){
      if(S[i] == '?'){
        for(long long j=0; j<10; j++){
          dp[i][j % 13] += 1;
        }
      }else{
        dp[i][(S[i] - '0') % 13] += 1;
      }

      continue;
    }

    if(S[i] == '?'){
      for(long long j=0; j<13; j++){
        for(long long k=0; k<10; k++){
          dp[i][(j + (digit * k)) % 13] = (dp[i][(j + (digit * k)) % 13] + dp[i+1][j]) % mod;
        }
      }
    }else{
      long long current = (S[i] - '0') * digit;
      for(long long j=0; j<13; j++){
        dp[i][(j + current) % 13] = (dp[i][(j + current) % 13] + dp[i+1][j]) % mod;
      }
    }
    digit = digit * 10;
  }

  cout << dp[0][5] % mod << endl;

  return 0;
}
