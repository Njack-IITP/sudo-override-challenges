#include <bits/stdc++.h>
using namespace std;
#define int long long

signed main(){
    string ans = "au{u0veo}tiJp$tsm_r_ndt@";
    string perm = "\020\002\026\b\003\f\004\016\017\024\001\022\r\a\023\021\006\n\030\027\v\005\025\t";
    // int perm[] = {16, 2, 22, 8, 3, 12, 4, 14, 15, 20, 1, 18, 13, 7, 19, 17, 6, 10, 24, 23, 11, 5, 21, 9,0};
    string pass; // "sudo{Ju$t_a_permvt@ti0n}"
    string v = perm;
    cout<<"Enter password: ";
    cin>>pass;
    while(pass.length()<ans.length()) pass += '\0';
    bool ok = 1;
    for(int i = 0;i<ans.length();i++){
        if(ans[perm[i]-1] != pass[i]) ok = false;
    }
    if(ok){
        cout<<"Correct Password. Congratulations, you found the flag!!!\n";
    }else{
        cout<<"Uh oh! Not the answer :(\n";
    }
    return 0;
}