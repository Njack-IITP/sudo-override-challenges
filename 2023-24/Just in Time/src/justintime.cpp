#include <bits/stdc++.h>
#include <chrono>
using namespace std;
#define int long long

signed main(){
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
    vector<string> bogus = {".symtab",".strtab",".shstrtab",".interp",".note.gnu.property",".note.gnu.build-id",".note.ABI-tag",".gnu.hash",".dynsym",".dynstr",".gnu.version",".gnu.version_r",".rela.dyn",".rela.plt",".init",".plt.got",".plt.sec",".text",".fini",".rodata",".eh_frame_hdr",".eh_frame",".gcc_except_table",".init_array",".fini_array",".dynamic",".data",".bss",".comment"};
    vector<int> ans = {bogus[0][1],bogus[5][8],bogus[9][1],bogus[bogus.size()-1][2],'{',bogus[1][2],bogus[3][1],bogus[0][3],bogus[21][1],bogus[0][0],bogus[1][2],bogus[1][3],bogus[bogus.size()-3][2],bogus[10][5],bogus[bogus.size()-1][5],bogus[15][2],'}'};
    const auto p1 = std::chrono::system_clock::now();
    int t1 = std::chrono::duration_cast<std::chrono::seconds>(p1.time_since_epoch()).count();
    if(t1 > 1919803951ll){
        cout<<"Alright, here is the flag: ";
        for(auto x:ans)cout<<(char)x;
        cout<<'\n';
    }else{
        cout<<"Sorry, I'm not in the mood.\n";
    }
    return 0;
}