cpp

### priority_queue

```
#include <queue>
priority_queue<long long, vector<long long>, less<long long>> que;
int a = 42;
que.push(a);

int ans = 0;
while(!que.empty()){
  ans += que.top();
  que.pop();
}
```

### vector sort

```
#include <vector>
#include <algorithm>

vector<int> data;
data.push_back(1);
data.push_back(3);
data.push_back(2);
sort(data.begin(), data.end(), greater<int>());
```

### map

```
#include <map>
map<int, int> table;
table[3] = 42;
```

### gcd and lcm

```
long long gcd(long long a, long long b) { return b ? gcd(b,a%b) : a;}
long long lcm(long long a, long long b) { return a/gcd(a,b)*b;}
```

### prime division

```
map< long long, int > prime_factor(long long n) {
  map< long long, int > ret;
  for(long long i = 2; i * i <= n; i++) {
    while(n % i == 0) {
      ret[i]++;
      n /= i;
    }
  }
  if(n != 1) ret[n] = 1;
  return ret;
}

map<long long, int> table;
table = prime_factor(c);

for( auto i = table.begin(); i != table.end() ; ++i ) {
	cout << i->first << " " << i->second << "\n";
}
```

### setprecision

```
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
  double ans = 10 / 3;
  cout << fixed << setprecision(10) << ans << endl;
  return 0;
}
```

### BFS for maze solving

```
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

int N,M;
vector<vector<char>> maze;
vector<vector<bool>> visited;

struct Position{
  int i,j,depth;
};

// returns the cost of solving the maze
int bfs(int i, int j){
  queue<Position> que;
  Position position = {i,j,0};
  que.push(position);
  visited[i][j] = true;
  int result;
  while(!que.empty()){
    Position pos = que.front();
    que.pop();
    visited[pos.i][pos.j] = true;
    if(maze[pos.i][pos.j] == 'G'){
      result = pos.depth;
      break;
    }
    if(pos.j != M - 1 && maze[pos.i][pos.j + 1] != '#' && !visited[pos.i][pos.j + 1]){
      Position position = {pos.i, pos.j + 1, pos.depth+1};
      que.push(position);
    }
    if(pos.j != 0 && maze[pos.i][pos.j - 1] != '#' && !visited[pos.i][pos.j - 1]){
      Position position = {pos.i, pos.j - 1, pos.depth+1};
      que.push(position);
    }
    if(pos.i != N - 1 && maze[pos.i + 1][pos.j] != '#' && !visited[pos.i + 1][pos.j]){
      Position position = {pos.i + 1, pos.j, pos.depth+1};
      que.push(position);
    }
    if(pos.i != 0 && maze[pos.i - 1][pos.j] != '#' && !visited[pos.i - 1][pos.j]){
      Position position = {pos.i - 1, pos.j, pos.depth+1};
      que.push(position);
    }
  }

  return result;
}

int main(){
  N = 3;
  M = 3;
  maze.resize(M, vector<char>(N));
  visited.resize(M, vector<bool>(N));

  // // S: Start
  // // G: Goal
  // // .: valid path.
  // // #: Block. cannot go through
  //
  // S.#
  // #..
  // ..G
  maze[0][0] = 'S';
  maze[0][1] = '.';
  maze[0][2] = '#';
  maze[1][0] = '#';
  maze[1][1] = '.';
  maze[1][2] = '.';
  maze[2][0] = '.';
  maze[2][1] = '.';
  maze[2][2] = 'G';

  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      visited[i][j] = false;
    }
  }

  // pass starting position
  int ans = bfs(0, 0);
  cout << ans << endl;
  return 0;
}
```

### radian to degree

```
double degree = 180.0/3.141592653589793238463;
double ans = atan(1/2);
cout << ans * degree << endl;
```

### power

```
#include <cmath>

// 2^3
pow(2, 3);
```

### sqrt

```
#include <cmath>

sqrt(2);
```

### permutation

```
#include <algorithm>

vector<int> v = {1,2,3};
do {
  cout << v[0] << v[1] << v[2] << endl;
} while (next_permutation(v.begin(), v.end()));
// 123
// 132
// 213
// 231
// 312
// 321
```

### Matrix

```
vector<vector<int>> P = {
  {1,0},
  {0,1}
};
```
