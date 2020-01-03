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
