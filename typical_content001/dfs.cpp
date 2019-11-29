#include <iostream>
using namespace std;

int H, W, visited[500][500];
char c[500][500];

void dfs(int x, int y){
  if(x < 0 || y < 0){
    return;
  }
  if(x >= W || y >= H){
    return;
  }
  if(visited[x][y] == 1){
    return;
  }
  if(c[x][y] == '#'){
    return;
  }
  visited[x][y] = 1;
  dfs(x+1,y);
  dfs(x-1,y);
  dfs(x,y+1);
  dfs(x,y-1);
};

int main(){
  int i,j,xs,ys,xg,yg;
	cin >> H >> W;

  for(i=0; i<W; i++){
    for(j=0; j<H; j++){
      cin >> c[i][j];
      if(c[i][j] == 's'){
        xs = i;
        ys = j;
      }
      if(c[i][j] == 'g'){
        xg = i;
        yg = j;
      }
    }
  }

  dfs(xs,ys);

  if(visited[xg][yg] == 1){
    cout << "Yes" << endl;
  }else{
    cout << "No" << endl;
  }
}
