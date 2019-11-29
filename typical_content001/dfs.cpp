#include <iostream>
using namespace std;

int H, W, visited[500][500];
char c[500][500];

// TODO: implement
void dfs(int x, int y){
};

int main(){
  int i,j,x,y,xg,yg;
	cin >> H >> W;
  for(i=0; i<H; i++){
    for(j=0; j<W; j++){
      cin >> c[i][j];
      if(c[i][j] == 's'){
        x = i;
        y = j;
      }
      if(c[i][j] == 'g'){
        xg = i;
        yg = j;
      }
    }
  }
  dfs(x,y);

  if(visited[xg][xy] == 1){
    cout << "Yes" << endl;
  }else{
    cout << "No" << endl;
  }
}
