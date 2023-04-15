--[[
    KungFuscator v0.1.0
    By: OgWay
]]

local Eeee = function()
    if local_ == 'Obfuscated By KungFuscator v0.1.0' then
        local A = 'fake_constants'
    else
        return print('Tamper Detected')
    end

    if(debug.getinfo(1).currentline~=1)then return print("Tamper Detected.") end;
    
    

    -- SCRIPT_HERE
    
end


-- NOTE: You may see some bluesecure similarities here but no this is not a bluesec fork.

function KungFuscator_Encode_Algorithm(string)
    local encodedString = ""
    for i = 1, #string do
        local char = string:sub(i,i)
        local byte = string.byte(char)
        local encodedByte = (byte + i) % 256
        encodedString = encodedString .. string.char(encodedByte):upper()
    end
    return encodedString
end

local Settings = {
    NoSettingsJustObfuscate = true;
}

local DecimalEncode = function(str)
    local Return = ""
    for i = 1, str:len() do
        Return = Return .. "\\" .. str:sub(i,i):byte()
    end
    Return = Return .. ""
    return Return
end

if Settings['NoSettingsJustObfuscate'] then
    MainInput = [==[("Obfuscated By KungFuscator v0.1.0"):gsub('.+',function(lIlilI)local_ = lIlilI end);local KungFu_liLIlz = ']==]..DecimalEncode(string.dump(Eeee))..[==['local a={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}local b={"MOVE","LOADK","LOADBOOL","LOADNIL","GETUPVAL","GETGLOBAL","GETTABLE","SETGLOBAL","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","DIV","MOD","POW","UNM","NOT","LEN","CONCAT","JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP","FORPREP","TFORLOOP","SETLIST","CLOSE","CLOSURE","VARARG"}local function c(d,e,f)if f then local g=0;local h=0;for i=e,f do g=g+2^h*c(d,i)h=h+1 end;return g else local j=2^(e-1)return d%(j+j)>=j and 1 or 0 end end;local function k(l)local m=1;local n=false;local o;local p;local q,r;local s,t,u,v,w;do function s()local x=l:byte(m,m)m=m+1;return x end;function t()local x,y,z,A=l:byte(m,m+3)m=m+4;return A*16777216+z*65536+y*256+x end;function u()local x=t()local y=t()return y*4294967296+x end;function v()local x=t()local y=t()return(-2*c(y,32)+1)*2^(c(y,21,31)-1023)*((c(y,1,20)*2^32+x)/2^52+1)end;function w(B)local C;if B then C=l:sub(m,m+B-1)m=m+B else B=r()if B==0 then return end;C=l:sub(m,m+B-1)m=m+B end;return C end end;local function D()local E;local F={}local G={}local H={}local I={lines={}}E={instructions=F,constants=G,prototypes=H,debug=I}local J;E.name=w()E.first_line=q()E.last_line=q()if E.name then E.name=E.name:sub(1,-2)end;E.upvalues=s()E.arguments=s()E.varg=s()E.stack=s()do J=q()for i=1,J do local K={}local L=t()local M=c(L,1,6)local N=a[M+1]K.opcode=M;K.type=N;K.A=c(L,7,14)if N=="ABC"then K.B=c(L,24,32)K.C=c(L,15,23)elseif N=="ABx"then K.Bx=c(L,15,32)elseif N=="AsBx"then K.sBx=c(L,15,32)-131071 end;F[i]=K end end;do J=q()for i=1,J do local O={}local N=s()O.type=N;if N==1 then O.data=s()~=0 elseif N==3 then O.data=v()elseif N==4 then O.data=w():sub(1,-2)end;G[i-1]=O end end;do J=q()for i=1,J do H[i-1]=D()end end;do local L=I.lines;J=q()for i=1,J do L[i]=t()end;J=q()for i=1,J do w():sub(1,-2)t()t()end;J=q()for i=1,J do w()end end;return E end;do assert(w(4)=="\27Lua","Lua bytecode expected.")assert(s()==0x51,"Only Lua 5.1 is supported.")s()n=s()==0;o=s()p=s()if o==4 then q=t elseif o==8 then q=u else error("Unsupported bytecode target platform")end;if p==4 then r=t elseif p==8 then r=u else error("Unsupported bytecode target platform")end;assert(w(3)=="\4\8\0","Unsupported bytecode target platform")end;return D()end;local function P(...)local z=select("#",...)local Q={...}return z,Q end;local function R(S,T)local F=S.instructions;local G=S.constants;local H=S.prototypes;local U,V;local W;local X=1;local Y,Z;local _={[0]=function(K)U[K.A]=U[K.B]end,[1]=function(K)U[K.A]=G[K.Bx].data end,[2]=function(K)U[K.A]=K.B~=0;if K.C~=0 then X=X+1 end end,[3]=function(K)local U=U;for i=K.A,K.B do U[i]=nil end end,[4]=function(K)U[K.A]=T[K.B]end,[5]=function(K)local a0=G[K.Bx].data;U[K.A]=W[a0]end,[6]=function(K)local a1=K.C;local U=U;a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=U[K.B][a1]end,[7]=function(K)local a0=G[K.Bx].data;W[a0]=U[K.A]end,[8]=function(K)T[K.B]=U[K.A]end,[9]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A][a2]=a1 end,[10]=function(K)U[K.A]={}end,[11]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U=U;a2=U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[a3+1]=a2;U[a3]=a2[a1]end,[12]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2+a1 end,[13]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2-a1 end,[14]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2*a1 end,[15]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2/a1 end,[16]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2%a1 end,[17]=function(K)local a2=K.B;local a1=K.C;local U,G=U,G;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]U[K.A]=a2^a1 end,[18]=function(K)U[K.A]=-U[K.B]end,[19]=function(K)U[K.A]=not U[K.B]end,[20]=function(K)U[K.A]=#U[K.B]end,[21]=function(K)local a2=K.B;local a4=U[a2]for i=a2+1,K.C do a4=a4 ..U[i]end;U[K.A]=a4 end,[22]=function(K)X=X+K.sBx end,[23]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U,G=U,G;a3=a3~=0;if a2>255 then a2=G[a2-256].data else a2=U[a2]end;if a1>255 then a1=G[a1-256].data else a1=U[a1]end;if a2==a1~=a3 then X=X+1 end end,[24]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U,G=U,G;a3=a3~=0;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]if a2<a1~=a3 then X=X+1 end end,[25]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U,G=U,G;a3=a3~=0;a2=a2>255 and G[a2-256].data or U[a2]a1=a1>255 and G[a1-256].data or U[a1]if a2<=a1~=a3 then X=X+1 end end,[26]=function(K)local a3=U[K.A]if not not a3==(K.C==0)then X=X+1 end end,[27]=function(K)local U=U;local a2=U[K.B]if not not a2==(K.C==0)then X=X+1 else U[K.A]=a2 end end,[28]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U=U;local a5,a6;local a7,a8;a5={}if a2~=1 then if a2~=0 then a7=a3+a2-1 else a7=V end;a8=0;for i=a3+1,a7 do a8=a8+1;a5[a8]=U[i]end;a7,a6=P(U[a3](unpack(a5,1,a7-a3)))else a7,a6=P(U[a3]())end;V=a3-1;if a1~=1 then if a1~=0 then a7=a3+a1-2 else a7=a7+a3 end;a8=0;for i=a3,a7 do a8=a8+1;U[i]=a6[a8]end end end,[29]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U=U;local a5,a6;local V,a7,a8=V;a5={}if a2~=1 then if a2~=0 then a7=a3+a2-1 else a7=V end;a8=0;for i=a3+1,a7 do a8=a8+1;a5[#a5+1]=U[i]end;a6={U[a3](unpack(a5,1,a7-a3))}else a6={U[a3]()}end;return true,a6 end,[30]=function(K)local a3=K.A;local a2=K.B;local U=U;local a7;local a8,a9;if a2==1 then return true end;if a2==0 then a7=V else a7=a3+a2-2 end;a9={}local a8=0;for i=a3,a7 do a8=a8+1;a9[a8]=U[i]end;return true,a9 end,[31]=function(K)local a3=K.A;local U=U;local aa=U[a3+2]local m=U[a3]+aa;U[a3]=m;if aa>0 then if m<=U[a3+1]then X=X+K.sBx;U[a3+3]=m end else if m>=U[a3+1]then X=X+K.sBx;U[a3+3]=m end end end,[32]=function(K)local a3=K.A;local U=U;U[a3]=U[a3]-U[a3+2]X=X+K.sBx end,[33]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U=U;local ab=a3+2;local a4={U[a3](U[a3+1],U[a3+2])}for i=1,a1 do U[ab+i]=a4[i]end;if U[a3+3]~=nil then U[a3+2]=U[a3+3]else X=X+1 end end,[34]=function(K)local a3=K.A;local a2=K.B;local a1=K.C;local U=U;if a1==0 then error("NYI: extended SETLIST")else local ab=(a1-1)*50;local Q=U[a3]if a2==0 then a2=V end;for i=1,a2 do Q[ab+i]=U[a3+i]end end end,[35]=function(K)io.stderr:write("NYI: CLOSE")io.stderr:flush()end,[36]=function(K)local ac=H[K.Bx]local F=F;local U=U;local ad={}local ae=setmetatable({},{__index=function(Q,af)local ag=ad[af]return ag.segment[ag.offset]end,__newindex=function(Q,af,ah)local ag=ad[af]ag.segment[ag.offset]=ah end})for i=1,ac.upvalues do local ai=F[X]if ai.opcode==0 then ad[i-1]={segment=U,offset=ai.B}elseif F[X].opcode==4 then ad[i-1]={segment=T,offset=ai.B}end;X=X+1 end;local aj,ak=R(ac,ae)U[K.A]=ak end,[37]=function(K)local a3=K.A;local a2=K.B;local U,Y=U,Y;for i=a3,a3+(a2>0 and a2-1 or Z)do U[i]=Y[i-a3]end end}local function a8()local F=F;local K,x,y;while true do K=F[X]X=X+1;x,y=_[K.opcode](K)if x then return y end end end;local al={get_stack=function()return U end,get_IP=function()return X end}local function ak(...)local am={}local an={}V=-1;U=setmetatable(am,{__index=an,__newindex=function(Q,af,ah)if af>V and ah then V=af end;an[af]=ah end})local a5={...}Y={}Z=select("#",...)-1;for i=0,Z do am[i]=a5[i+1]Y[i]=a5[i+1]end;W=getfenv()X=1;local ao=coroutine.create(a8)local x,y=coroutine.resume(ao)if x then if y then return unpack(y)end;return else if advanced_debug then else local ap=S.name;local aq=S.debug.lines[X]local ar=y:gsub("(.-:)","")local a9=""a9=a9 ..(ap and ap..":"or"")a9=a9 ..(aq and aq..":"or"")a9=a9 ..y;error(a9,0)end end end;return al,ak end;local bbm={load_bytecode=function(l)local S=k(l)local aj,ak=R(S)return ak end;utils={decode_bytecode=k,create_wrapper=R,debug_bytecode=function(l)local S=k(l)return R(S)end}} function KungFuscator_LOL_LOL(a)local b=""for c=1,#a do local d=a:sub(c,c)local e=string.byte(d)local f=(e-c)%256;b=b..string.char(f)end;return b end;bbm.load_bytecode(KungFu_liLIlz)();]==]
end

print(MainInput)