#include <iostream>
#include <map>

using namespace std;

long long euc(long long a, long long b){
  long long r = a % b;
  while(r != 0){
    a = b;
    b = r;
    r = a % b;
  }
  return b;
}

int main(){
  long long A,B,C,D;
  cin >> A >> B >> C >> D;

  long long sum = B - A + 1;
  long long x_max1 = B / C;
  long long x_min1 = A / C;
  if(A % C != 0) x_min1++;
  sum -= x_max1 - x_min1 + 1;

  long long x_max2 = B / D;
  long long x_min2 = A / D;
  if(A % D != 0) x_min2++;
  sum -= x_max2 - x_min2 + 1;

  long long lcm = C * D / euc(C, D);
  long long x_max3 = B / lcm;
  long long x_min3 = A / lcm;
  if(A % lcm != 0) x_min3++;
  sum += x_max3 - x_min3 + 1;

  cout << sum << endl;
}
