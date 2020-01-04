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
