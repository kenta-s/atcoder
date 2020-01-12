#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>
#include <map>

using namespace std;

int ans = 0;
int tmpAns = 40000000;
// int tmpAns = 0;
int H, W;
bool visited[20][20];
// int maze[H][W];
vector<vector<int>> maze;
void dfs(int x, int y, int cnt){
  if(x < 0) return;
  if(y < 0) return;
  if(x > H-1) return;
  if(y > W-1) return;
  if(visited[x][y]) return;
  if(maze[x][y] == '#') return;
  if(maze[x][y] == 'G'){
    tmpAns = min(tmpAns, cnt);
    return;
  }
  visited[x][y] = true;
  dfs(x - 1, y, cnt+1);
  dfs(x + 1, y, cnt+1);
  dfs(x, y - 1, cnt+1);
  dfs(x, y + 1, cnt+1);
}

void reset(){
  for(int i=0; i<20; i++){
    for(int j=0; j<20; j++){
      visited[i][j] = false;
    }
  }
  tmpAns = 40000000;
  // tmpAns = 0;
}

int main(){
  // int H, W;
  cin >> H >> W;
  maze.resize(H);
  // int maze[H][W];
  for(int i=0; i<H; i++){
    for(int j=0; j<W; j++){
      char c;
      cin >> c;
      maze[i].push_back(c);
      // maze[i][j] = c;
    }
  }

  vector<int> ansv;

  for(int i=0; i<H; i++){
    for(int j=0; j<W; j++){
      for(int k=0; k<H; k++){
        for(int l=0; l<W; l++){
          if(i == k && j == l) continue;
          if(maze[i][j] == '#') continue;
          if(maze[k][l] == '#') continue;

          maze[i][j] = 'S';
          maze[k][l] = 'G';

          dfs(i, j, 0);
          ansv.push_back(tmpAns);
          // if(tmpAns == 8){
          //   cout << "S is " << i << ' ' << j << endl;
          //   cout << "G is " << k << ' ' << l << endl;
          //   cout << "=========" << endl;
          //   exit(0);
          // }
          // ans = max(ans, tmpAns);
          // if(ans == 8){
          //   cout << "S is " << i << ' ' << j << endl;
          //   cout << "G is " << k << ' ' << l << endl;
          //   cout << "=========" << endl;
          //   exit(0);
          // }
          reset();
          maze[i][j] = '.';
          maze[k][l] = '.';
        }
      }
    }
  }

  sort(ansv.begin(), ansv.end(), greater<int>());
  cout << ansv[0] << endl;

  // cout << ans << endl;
  return 0;
}
