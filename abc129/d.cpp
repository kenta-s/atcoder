#include <iostream>
#include <vector>

using namespace std;

int countSpace(int h, int w){
  return 0;
}

struct Stat{
  bool calcDone = {false};
  int rowNum, colNum = {0};
};

int main(){
  int H,W;
  cin >> H >> W;
  vector<vector<Stat>> grid(H, vector<Stat>(W));
  vector<string> S(H);
  for(int i=0; i<H; i++){
    cin >> S[i];
  }
  for(int i=0; i<H; i++){
    int tmpCnt = 0;
    for(int j=0; j<W; j++){
      if(S[i][j] == '#'){
        tmpCnt = 0;
        continue;
      }
      if(grid[i][j].calcDone){
        grid[i][j].rowNum = tmpCnt;
        continue;
      }
      // TODO: make sure this is correct
      for(int k=0; k<W; k++){
        if(S[i][k] == '#') continue;
        grid[i][k].calcDone = true;
      }
    }
  }
  // TODO: calc columns as well

  return 0;
}
