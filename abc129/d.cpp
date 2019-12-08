#include <iostream>
#include <vector>

using namespace std;

int countSpace(int h, int w){
  return 0;
}

struct Stat{
  bool rowDone, colDone = {false};
  int rowNum, colNum = {0};
};

int main(){
  int ans = 0;
  int H,W;
  cin >> H >> W;
  vector<vector<Stat>> grid(H, vector<Stat>(W));
  vector<string> S(H);
  for(int i=0; i<H; i++){
    cin >> S[i];
  }
  // set counts for each row
  for(int i=0; i<H; i++){
    int tmpCnt = 0;
    for(int j=0; j<W; j++){
      if(!grid[i][j].rowDone){
        tmpCnt = 0;
      }
      if(S[i][j] == '#'){
        tmpCnt = 0;
        continue;
      }
      if(grid[i][j].rowDone){
        grid[i][j].rowNum = tmpCnt;
        continue;
      }
      for(int k=j; k<W; k++){
        if(S[i][k] == '#') break;
        grid[i][k].rowDone = true;
        tmpCnt++;
      }
      grid[i][j].rowNum = tmpCnt;
    }
  }
  // set counts for each column
  for(int i=0; i<W; i++){
    int tmpCnt = 0;
    for(int j=0; j<H; j++){
      if(!grid[j][i].colDone){
        tmpCnt = 0;
      }
      if(S[j][i] == '#'){
        tmpCnt = 0;
        continue;
      }
      if(grid[j][i].colDone){
        grid[j][i].colNum = tmpCnt;
        continue;
      }
      for(int k=j; k<H; k++){
        if(S[k][i] == '#') break;
        grid[k][i].colDone = true;
        tmpCnt++;
      }
      grid[j][i].colNum = tmpCnt;
    }
  }
  for(int i=0; i<H; i++){
    for(int j=0; j<W; j++){
      ans = max(ans, grid[i][j].colNum + grid[i][j].rowNum - 1);
    }
  }
  cout << ans << endl;

  // cout << grid[0][3].colNum << endl;
  // cout << grid[1][3].colNum << endl;
  // cout << grid[2][3].colNum << endl;
  // cout << grid[3][3].colNum << endl;

  return 0;
}
