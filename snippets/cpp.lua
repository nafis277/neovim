return {
s("tcpp", require("luasnip.extras.fmt").fmt([[
#include<bits/stdc++.h>
#define ll long long
#define pii pair<int,int>
using namespace std;
const int mxn=1e5+5;
const int inf=1e9;
void solve() {{
    
}}
int main() {{
    ios_base::sync_with_stdio(0); cin.tie(NULL); cout.tie(NULL);

    int t=1;
    cin>>t;
    while(t--)solve();
    
}}
]], {})),


s("cpp", require("luasnip.extras.fmt").fmt([[
#include<bits/stdc++.h>
#define ll long long
#define pii pair<int,int>
using namespace std;
const int mxn=1e5+5;
const int inf=1e9;
int main() {{
    ios_base::sync_with_stdio(0); cin.tie(NULL); cout.tie(NULL);
}}
]], {})),

s("random", require("luasnip.extras.fmt").fmt([[
mt19937 rng(chrono::system_clock::now().time_since_epoch().count());
]], {})),

s("BIT", require("luasnip.extras.fmt").fmt([[
struct BIT {{
    int bit[mxn];
    void init() {{
        memset(bit, 0, sizeof bit);
    }}

    void update(int p,int v) {{
        if(p == 0) return;
        for(;p < mxn; p += p&-p) bit[p] = max(bit[p], v);
    }}
    int query(int p) {{
        int r = 0;
        for(; p > 0; p -= p&-p) r = max(r, bit[p]);
        return r;
    }}
}} bt;
]], {})),



s("HASH", require("luasnip.extras.fmt").fmta([[
struct Hash {
    const ll mod1 = 1e9 + 9;
    const ll mod2 = 250000019;
    ll p1 = 900001;
    ll p2 = 600011;

    ll pre[3][mxn];
    ll bigmod(ll a,ll b, ll mod)
    {
        if(b==0)return 1;
        ll mid=b/2;
        ll c=bigmod(a,mid, mod);
        if(b%2==0)return (c*c)%mod;
        c=(c*c)%mod;
        return (a*c)%mod;
    }


    void process(string s) {
        pre[1][0] = pre[2][0] = 1;
        
        ll c1 = p1;
        ll c2 = p2;
        for(int i = 1; i << s.size(); i++) {
            pre[1][i] = pre[1][i - 1] + (s[i] - 'a' + 1) * c1 % mod1;
            pre[2][i] = pre[2][i - 1] + (s[i] - 'a' + 1) * c2 % mod2;

            pre[1][i] %= mod1;
            pre[2][i] %= mod2;

            c1 = c1 * p1 % mod1;
            c2 = c2 * p2 % mod2;
        }
    }


    pair<<ll,ll>> query(int l, int r) {
        ll v1 = (pre[1][r] - pre[1][l - 1] + mod1) % mod1;
        ll v2 = (pre[2][r] - pre[2][l - 1] + mod2) % mod2;

        ll d1 = bigmod(p1, l - 1, mod1);
        ll d2 = bigmod(p2, l - 1, mod2);

        v1 = v1 * bigmod(d1, mod1 - 2, mod1) % mod1;
        v2 = v2 * bigmod(d2, mod2 - 2, mod2) % mod2;

        return {v1, v2};
    }

} H;
]], {}, {delimiters = "<>"})),



}



