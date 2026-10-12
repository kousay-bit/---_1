<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>لمحة عين وتلميح</title>
<style>
:root{--bg:#f5f2ec;--card:#fff;--ink:#16120f;--pu:#5b30d6;--sky:#6fd3ef;--yl:#ffd84d;--gr:#7fdca4;--rd:#d63a1f;--mut:#6b645c;box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){--bg:#1d1a17;--card:#2a2622;--ink:#f5f2ec;--mut:#b5ada3}}
:root[data-theme="dark"]{--bg:#1d1a17;--card:#2a2622;--ink:#f5f2ec;--mut:#b5ada3}
*{box-sizing:border-box;-webkit-tap-highlight-color:transparent}
html,body{margin:0;min-height:100%}
body{background:var(--bg);color:var(--ink);font-family:Tajawal,system-ui,sans-serif;font-size:17px}
#app{max-width:480px;margin:0 auto;padding:16px;min-height:100vh;display:flex;flex-direction:column;gap:14px}
h1{font-size:64px;font-weight:900;text-align:center;margin:20px 0 0;line-height:1.1}
h2{margin:0;font-size:24px;font-weight:900}
p{margin:0;color:var(--mut);text-align:center;line-height:1.7}
.box{background:var(--card);border:2.5px solid var(--ink);border-radius:20px;padding:16px}
.btn{font:inherit;font-weight:900;font-size:20px;color:#fff;background:var(--pu);border:2.5px solid var(--ink);border-radius:16px;padding:14px;width:100%;box-shadow:0 5px 0 var(--ink);cursor:pointer}
.btn:active{transform:translateY(4px);box-shadow:0 1px 0 var(--ink)}
.btn.alt{background:var(--sky);color:#16120f}
.btn.ghost{background:var(--card);color:var(--ink)}
.btn:disabled{opacity:.45}
.step{display:flex;gap:12px;align-items:center;margin:10px 0}
.step b{flex:none;width:34px;height:34px;border-radius:50%;border:2.5px solid var(--ink);display:grid;place-items:center;color:#16120f}
.step span{line-height:1.5}
input{font:inherit;width:100%;padding:12px;border:2.5px solid var(--ink);border-radius:14px;background:var(--bg);color:var(--ink);margin-top:8px}
.score{display:flex;gap:8px;flex-wrap:wrap;justify-content:center}
.chip{font:inherit;font-weight:700;border:2.5px solid var(--ink);border-radius:30px;padding:6px 14px;background:var(--card);color:var(--ink);display:flex;gap:8px;align-items:center}
.chip i{font-style:normal;background:var(--pu);color:#fff;border-radius:20px;min-width:24px;text-align:center;padding:0 6px}
.chip.sel{background:var(--yl);color:#16120f}
.chip.out{opacity:.35;text-decoration:line-through}
.chip.win{background:var(--gr);color:#16120f}
.top{display:flex;justify-content:space-between;align-items:center}
.tag{font-weight:900;border:2.5px solid var(--ink);border-radius:20px;padding:4px 14px;background:var(--sky);color:#16120f}
.tag.gold{background:var(--yl)}
.stage{flex:1;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:16px;text-align:center;min-height:300px}
.grid{display:grid;grid-template-columns:repeat(4,1fr);gap:6px;width:100%;font-size:42px;line-height:1.3}
.big{font-size:30px;font-weight:900;line-height:1.5}
.opts{display:grid;grid-template-columns:1fr 1fr;gap:12px;width:100%}
.opt{font:inherit;font-size:34px;font-weight:900;background:var(--card);color:var(--pu);border:2.5px solid var(--ink);border-radius:18px;padding:16px;box-shadow:0 5px 0 var(--ink);cursor:pointer}
.opt:active{transform:translateY(4px);box-shadow:0 1px 0 var(--ink)}
.opt.ok{background:var(--gr);color:#16120f}
.opt.no{opacity:.4}
.bar{height:12px;border:2.5px solid var(--ink);border-radius:10px;overflow:hidden;width:100%;background:var(--card)}
.bar div{height:100%;background:var(--pu);animation:w 12s linear forwards;transform-origin:right}
@keyframes w{from{width:100%}to{width:0}}
.pop{animation:p .35s}
@keyframes p{from{transform:scale(.7);opacity:0}to{transform:scale(1);opacity:1}}
.toast{color:var(--rd);font-weight:700;min-height:26px}
.bar.s3 div{animation:w 3s linear forwards}
.cards{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;width:100%}
.card{font:inherit;font-size:56px;font-weight:900;color:var(--pu);background:var(--card);border:2.5px solid var(--ink);border-radius:18px;padding:14px 0;box-shadow:0 5px 0 var(--ink);cursor:pointer}
.card:active{transform:translateY(4px);box-shadow:0 1px 0 var(--ink)}
.chip:disabled{opacity:.35}
.dice{width:56px;height:66px;font-size:46px;line-height:1;border-radius:12px;border:2.5px solid var(--ink);background:var(--card);color:var(--pu);box-shadow:0 4px 0 var(--ink);cursor:pointer}
.dice.held{background:var(--yl);color:#16120f;transform:translateY(-6px)}
.sb{width:54px;height:54px;border-radius:14px;border:2.5px solid var(--ink);font-size:22px;font-weight:900;color:#fff;box-shadow:0 4px 0 var(--ink);touch-action:none;user-select:none;-webkit-user-select:none}
.sb:active{transform:translateY(3px);box-shadow:none}
.pads{display:grid;grid-template-columns:1fr 1fr;gap:10px;width:100%}
.pad{font:inherit;font-weight:900;font-size:20px;color:#16120f;border:2.5px solid var(--ink);border-radius:16px;min-height:72px;box-shadow:0 4px 0 var(--ink);touch-action:manipulation;user-select:none;-webkit-user-select:none;cursor:pointer}
.pad.sel{outline:5px solid var(--ink);transform:translateY(3px);box-shadow:none}
.pad.out{opacity:.3}
.c0{background:#ff9fb5}.c1{background:#6fd3ef}.c2{background:#ffd84d}.c3{background:#7fdca4}.c4{background:#c3a6ff}.c5{background:#ffb27a}.c6{background:#a0e7e5}.c7{background:#e6e6a0}
</style>
</head>
<body>
<div id="app"></div>
<script>
const $=document.getElementById('app');
const E=['🍎','🍌','🍇','🍓','🍒','🥝','🍋','🍑','🌟','🔵','🔺','🟢','🐟','🚗','⚽','🎈'];
const L='أبتثجحخدذرزسشصضطظعغفقكلمنهوي'.split('');
const sh=a=>[...a].sort(()=>Math.random()-.5);
const ri=(a,b)=>a+Math.floor(Math.random()*(b-a+1));
const WIN=4,QT=12000;
function padsH(P,fn,sf,df,xf){return `<div class='pads'>${P.map((p,i)=>`<button class='pad c${i%8} ${sf(i)?'sel':''} ${df(i)?'out':''}' onpointerdown='${fn}(${i})'>${p.n}${xf?xf(i):''}</button>`).join('')}</div>`}
let G;

function home(){
 $.innerHTML=`<button class="chip" onclick="hub()" style="align-self:flex-start">→ الألعاب</button><h1 class="pop" style="margin-top:0">لمحة عين</h1>
 <p>لعبة سرعة ملاحظة – شوف الصورة بلمحة، وجاوب قبل غيرك.</p>
 <div class="box">
  <div class="step"><b style="background:#d4f1fa">1</b><span>تطلع صورة لثانيتين بس وبعدين تختفي</span></div>
  <div class="step"><b style="background:#e3dcfa">2</b><span>يطلع سؤال عن اللي شفته</span></div>
  <div class="step"><b style="background:#fff0b3">3</b><span>أسرع واحد يجاوب صح يخطف النقطة</span></div>
  <div class="step"><b style="background:#d4f1e0">4</b><span>أول من يجمع 4 نقاط يفوز – وانتبه من «اللمحة الذهبية» نقطتين!</span></div>
 </div>
 <div style="flex:1"></div>
 <button class="btn alt" onclick="setup()">مع أصحابي (نفس المكان)</button>
 <button class="btn" onclick="start(['أنت','سعد','نورة'],'bot')">جرّب مع لاعبين وهميين 🤖</button>
 <p style="font-size:14px">2 - 8 لاعبين | مجاني وبدون تسجيل دخول</p>`;
}
function setup(){
 $.innerHTML=`<h2>مين بيلعب؟</h2>
 <div class="box"><p style="text-align:start">اكتب أسماء اللاعبين (من 2 إلى 8)</p><div id="ins"></div>
 <button class="btn ghost" style="margin-top:12px;font-size:16px;padding:8px" onclick="addIn()">+ لاعب</button></div>
 <p>اللاعبين يقولون الجواب بصوت عالي، وواحد منكم يضغط على اسم اللي جاوب أول وبعدين الخيار.</p>
 <div style="flex:1"></div>
 <button class="btn" onclick="go()">ابدأ اللعبة</button>
 <button class="btn ghost" onclick="home()">رجوع</button>`;
 addIn();addIn();
}
function addIn(){const d=document.getElementById('ins');if(d.children.length>=8)return;const i=document.createElement('input');i.placeholder='اسم اللاعب '+(d.children.length+1);i.maxLength=12;d.appendChild(i)}
function go(){const n=[...document.querySelectorAll('#ins input')].map(i=>i.value.trim()).filter(Boolean);if(n.length<2){alert('لازم لاعبين اثنين على الأقل');return}start(n,'friends')}

function start(names,mode){G={mode,P:names.map(n=>({n,s:0})),round:0,tok:0,sel:mode==='friends'?null:0};next()}

function make(){
 const t=['count','odd','miss'][ri(0,2)];
 if(t==='count'){
  const tg=sh(E)[0],oth=sh(E.filter(e=>e!==tg)).slice(0,2),n=ri(3,7);
  const items=sh([...Array(n).fill(tg),...Array.from({length:ri(5,8)},()=>oth[ri(0,1)])]);
  let o=new Set([n]);[1,-1,2,-2,3].forEach(d=>{if(o.size<4&&n+d>0)o.add(n+d)});
  return{items,q:`كم ${tg} كان في الصورة؟`,opts:sh([...o]),ans:n,title:'عدّ سريع'};
 }
 if(t==='odd'){
  const [b,d,x,y]=sh(E),items=Array(12).fill(b);items[ri(0,11)]=d;
  return{items,q:'أي رمز كان الدخيل؟',opts:sh([d,b,x,y]),ans:d,title:'الدخيل'};
 }
 const l=sh(L),shown=l.slice(0,6),miss=l[6];
 return{items:shown,q:'أي حرف ما كان موجود؟',opts:sh([miss,...shown.slice(0,3)]),ans:miss,title:'الحرف الغائب',big:true};
}

function next(){
 G.round++;G.tok++;const t=G.tok;G.lv=Math.min(3,Math.ceil(G.round/3));G.r=make(G.lv);G.gold=Math.random()<.2;G.locked=new Set();G.phase='ready';G.toast='';
 if(G.mode==='friends')G.sel=null;
 const nm=G.gold?'✨ لمحة ذهبية – ثانية وحدة ونقطتين!':G.r.title;
 $.innerHTML=head()+`<div class="stage"><div class="big pop">${nm}</div><p>استعد…</p></div>`;
 setTimeout(()=>{if(G.tok!==t)return;flash(t)},1100);
}
function head(){
 return `<div class="top"><span class="tag ${G.gold&&G.phase!=='ready'?'gold':''}">الجولة ${G.round}</span><span class="tag" style="background:var(--card);color:var(--ink)">${G.gold?'✨ ×2':G.r.title+' · '+LV[G.lv]}</span></div>`
 +`<div class="score">${G.P.map((p,i)=>`<span class="chip"><span>${p.n}</span><i>${p.s}</i></span>`).join('')}</div>`;
}
function flash(t){
 G.phase='flash';
 const r=G.r;
 $.innerHTML=head()+`<div class="stage"><div class="grid pop" style="${r.sty||''}">${r.items.map(i=>`<div>${i}</div>`).join('')}</div></div>`;
 setTimeout(()=>{if(G.tok!==t)return;ask(t)},G.gold?1000:(r.ms||2200));
}
function ask(t){
 G.phase='q';G.t0=Date.now();
 if(G.mode==='bot'){
  G.P.forEach((p,i)=>{if(i===0)return;setTimeout(()=>{if(G.tok!==t||G.phase!=='q'||G.locked.has(i))return;
   const good=Math.random()<.65,o=good?G.r.ans:G.r.opts.filter(x=>x!==G.r.ans)[ri(0,2)];answer(i,o)},ri(2500,9500))});
 }
 setTimeout(()=>{if(G.tok===t&&G.phase==='q')end(null)},QT);
 drawQ();
}
function drawQ(){
 const r=G.r,el=((Date.now()-G.t0)/1000).toFixed(2);
 const chips=G.mode==='friends'?`${padsH(G.P,'pick',i=>G.sel===i,i=>G.locked.has(i))}<p style="font-size:14px">كل واحد يضغط مربعه أول ما يعرف الجواب 👆 (الأسرع يخطف)</p>`:'';
 $.innerHTML=head()+`<div class="stage" style="justify-content:flex-start;gap:14px">
  <div class="bar"><div style="animation-delay:-${el}s"></div></div>
  <div class="big pop">${r.q}</div>
  <div class="toast">${G.toast}</div>
  <div class="opts">${r.opts.map(o=>`<button class="opt" onclick="tap('${o}')">${o}</button>`).join('')}</div>
  ${chips}</div>`;
}
function pick(i){if(G.phase!=='q'||G.locked.has(i))return;if(G.sel===i){G.sel=null;drawQ();return}if(G.sel!==null)return;G.sel=i;G.toast='';drawQ()}
function tap(o){
 if(G.phase!=='q')return;
 const v=typeof G.r.ans==='number'?Number(o):o;
 if(G.mode==='bot'){if(G.locked.has(0))return;answer(0,v)}
 else{if(G.sel===null){G.toast='اختر اللاعب أول 👆';drawQ();return}answer(G.sel,v)}
}
function answer(i,o){
 if(G.phase!=='q'||G.locked.has(i))return;
 if(o===G.r.ans){end(i);return}
 G.locked.add(i);G.toast=`${G.P[i].n} جاوب غلط ✗`;
 if(G.mode==='friends')G.sel=null;
 if(G.locked.size>=G.P.length){end(null);return}
 drawQ();
}
function end(w){
 G.phase='res';G.tok++;
 if(w!==null)G.P[w].s+=G.gold?2:1;
 const fin=G.P.find(p=>p.s>=WIN);
 const r=G.r;
 $.innerHTML=head()+`<div class="stage" style="gap:14px">
  <div class="big pop">${w!==null?`🎯 ${G.P[w].n} خطفها!${G.gold?' (+2)':''}`:'⏱ ما أحد جاوب صح'}</div>
  <p>الجواب الصح</p>
  <div class="opts" style="grid-template-columns:1fr"><div class="opt ok" style="text-align:center;box-shadow:none">${r.ans}</div></div>
 </div>
 <button class="btn" onclick="${fin?'over()':'next()'}">${fin?'النتيجة':'الجولة الجاية'}</button>`;
}
function over(){
 const s=[...G.P].sort((a,b)=>b.s-a.s);
 $.innerHTML=`<h1 class="pop" style="font-size:48px">🏆 ${s[0].n}</h1><p>فاز بلمحة عين!</p>
 <div class="box">${s.map((p,i)=>`<div class="top" style="padding:6px 0"><b>${i+1}. ${p.n}</b><span class="tag">${p.s}</span></div>`).join('')}</div>
 <div style="flex:1"></div>
 <button class="btn" onclick="start(G.P.map(p=>p.n),G.mode)">لعبة جديدة</button>
 <button class="btn ghost" onclick="hub()">الألعاب</button>`;
}
/* ===== تلميح ===== */
const D={'شيء في الشارع':'رصيف سيارة إشارة لوحة عمود شاحنة دراجة مطب محل ممر باص بنزينة جسر','حيوان':'أسد نمر جمل حصان قطة كلب فيل زرافة ذئب دب بقرة غزال ثعلب','فاكهة':'تفاح موز عنب فراولة برتقال مانجو رمان تمر خوخ بطيخ كيوي ليمون جوافة','شيء في المطبخ':'ملعقة سكين صحن قدر ثلاجة فرن كوب مغسلة طنجرة غلاية خلاط مقلاة','مهنة':'طبيب معلم مهندس طيار شرطي نجار خباز سائق رسام محامي ممرض حداد','شيء في المدرسة':'كتاب قلم سبورة طاولة حقيبة مدرس فصل مسطرة دفتر ممحاة جرس'};
const CAT=Object.keys(D).map(k=>({k,w:D[k].split(' ')}));
const norm=c=>'أإآ'.includes(c)?'ا':c;
let T;
function tclr(){if(T){T.tok++;clearTimeout(T.bt);clearInterval(T.iv)}}
function tquit(){tclr();hub()}
function hub(){tclr();if(SK){SK.tok++;SK.run=false}if(SLG)SLG.tok++;$.innerHTML=`<h1 class="pop" style="font-size:48px">ألعاب سريعة</h1><p>اختر لعبتك</p><button class='chip' onclick='rulesAll()' style='align-self:center'>📖 طريقة اللعب لكل الألعاب</button><div style="flex:1"></div><button class="btn" onclick="home()">👁️ لمحة عين<br><small style="font-weight:400">سرعة ملاحظة</small></button><button class="btn alt" onclick="thome()">💡 تلميح<br><small style="font-weight:400">سرعة بديهة وتكوين كلمات</small></button><button class="btn ghost" onclick="shome()">🌙 السهرة<br><small style="font-weight:400">3 فقرات وبطل واحد</small></button><button class="btn" style="background:var(--yl);color:#16120f" onclick="xhub()">🎪 ألعاب غريبة<br><small style="font-weight:400">5 ألعاب ومئات الأمثلة</small></button><button class="btn alt" onclick="bhome()">🕵️ برا السالفة<br><small style="font-weight:400">216 كلمة – مين ما يعرف الكلمة؟</small></button><button class="btn ghost" onclick="fhome()">🎭 الحيّالة<br><small style="font-weight:400">خدّع أصحابك بإجابة كاذبة مقنعة</small></button><button class="btn alt" onclick="snhome()">🐍 الثعبان<br><small style="font-weight:400">لاعبين – كل واحد بزاوية</small></button><button class="btn" onclick="slhome()">🎲 السلم والثعبان<br><small style="font-weight:400">حظ ونرد – من 2 إلى 6 لاعبين</small></button><button class="btn alt" onclick="yhome()">🎯 ياتزي<br><small style="font-weight:400">نرد وتركيبات – من 1 إلى 4 لاعبين</small></button><button class="btn" style="background:#2fa86b" onclick="mhome()">🏙️ الاحتكار<br><small style="font-weight:400">عقارات وفلوس – من 2 إلى 6 لاعبين</small></button><div style="flex:1"></div>`}
function thome(){tclr();$.innerHTML=`<button class="chip" onclick="hub()" style="align-self:flex-start">→ الألعاب</button><h1 class="pop" style="margin-top:0">تلميح</h1><p>لعبة بديهة وتكوين كلمات – اخطف الحرف وقول كلمتك قبل غيرك.</p><div class="box"><div class="step"><b style="background:#d4f1fa">1</b><span>تطلع فئة (مثل «شيء في الشارع») مع بطاقات حروف</span></div><div class="step"><b style="background:#e3dcfa">2</b><span>اخطف حرف وقول كلمة من الفئة تبدأ فيه (الراء ← رصيف)</span></div><div class="step"><b style="background:#fff0b3">3</b><span>الباقين عندهم 3 ثواني يعترضون لو الكلمة غلط أو مؤلفة</span></div><div class="step"><b style="background:#d4f1e0">4</b><span>اعتراض ناجح = الكرت يرجع واللاعب ينمنع 10 ثواني. أول من يجمع 4 نقاط يفوز</span></div></div><div style="flex:1"></div><button class="btn alt" onclick="tsetup()">مع أصحابي (نفس المكان)</button><button class="btn" onclick="tstart(['أنت','سعد','نورة'],'bot')">جرّب مع لاعبين وهميين 🤖</button><p style="font-size:14px">2 - 8 لاعبين | 3 اعتراضات لكل لاعب</p>`}
function tsetup(){$.innerHTML=`<h2>مين بيلعب؟</h2><div class="box"><p style="text-align:start">اكتب أسماء اللاعبين (من 2 إلى 8)</p><div id="ins"></div><button class="btn ghost" style="margin-top:12px;font-size:16px;padding:8px" onclick="addIn()">+ لاعب</button></div><p>اللي يخطف يقول كلمته بصوت عالي، وواحد منكم يضغط اسمه ثم الكرت.</p><div style="flex:1"></div><button class="btn" onclick="tgo()">ابدأ اللعبة</button><button class="btn ghost" onclick="thome()">رجوع</button>`;addIn();addIn()}
function tgo(){const n=[...document.querySelectorAll('#ins input')].map(i=>i.value.trim()).filter(Boolean);if(n.length<2){alert('لازم لاعبين اثنين على الأقل');return}tstart(n,'friends')}
function tstart(names,mode){tclr();T={mode,P:names.map(n=>({n,s:0,c:3,ban:0})),tok:0,round:0,sel:mode==='bot'?0:null};tround()}
function tround(){
 T.round++;T.cat=CAT[ri(0,CAT.length-1)];T.toast='';T.claim=null;if(T.mode==='friends')T.sel=null;
 const have=[...new Set(T.cat.w.map(w=>norm(w[0])))],rest=[...new Set(L.map(norm))].filter(l=>!have.includes(l));
 T.cards=sh([...sh(have).slice(0,4),...sh(rest).slice(0,2)]).map(l=>({l}));
 tplay();
}
function tplay(){
 T.phase='play';const t=++T.tok;clearTimeout(T.bt);clearInterval(T.iv);
 T.iv=setInterval(()=>{if(T.tok===t&&T.P.some(p=>p.ban>Date.now()))tdraw()},1000);
 if(T.mode==='bot')T.bt=setTimeout(()=>{if(T.tok===t)tbot()},ri(4000,9000));
 tdraw();
}
function thead(){return `<div class="top"><button class="chip" onclick="tquit()">→ الألعاب</button><span class="tag">الجولة ${T.round}</span></div><div class="score">${T.P.map(p=>`<span class="chip"><span>${p.n}</span><i>${p.s}</i></span>`).join('')}</div>`}
function tdraw(){
 const now=Date.now();let chips;
 if(T.mode==='friends')chips=`${padsH(T.P,'tpick',i=>T.sel===i,i=>T.P[i].ban>now,i=>T.P[i].ban>now?' ⛔'+Math.ceil((T.P[i].ban-now)/1000):'')}<p style="font-size:14px">كل واحد يضغط مربعه أول ما يخطف 👆 وبعدين الكرت</p>`;
 else chips=T.P[0].ban>now?`<p>⛔ ممنوع ${Math.ceil((T.P[0].ban-now)/1000)} ثواني</p>`:`<p style="font-size:14px">اضغط على الكرت وبعدين اكتب كلمتك</p>`;
 $.innerHTML=thead()+`<div class="stage" style="justify-content:flex-start"><div class="tag gold" style="font-size:24px;color:#16120f">${T.cat.k}</div><div class="toast">${T.toast||''}</div><div class="cards">${T.cards.map((c,i)=>`<button class="card" onclick="tcard(${i})">${c.l}</button>`).join('')}</div>${chips}</div>`;
}
function tpick(i){if(T.phase!=='play'||T.P[i].ban>Date.now())return;if(T.sel===i){T.sel=null;tdraw();return}if(T.sel!==null)return;T.sel=i;T.toast='';tdraw()}
function tcard(ci){
 if(T.phase!=='play')return;
 const pi=T.mode==='bot'?0:T.sel;
 if(pi===null){T.toast='اختر اللاعب أول 👆';tdraw();return}
 if(T.P[pi].ban>Date.now()){T.toast='ممنوع من اللعب حالياً ⛔';tdraw();return}
 if(T.mode==='bot'){T.phase='word';T.tok++;clearTimeout(T.bt);clearInterval(T.iv);
  $.innerHTML=thead()+`<div class="stage"><div class="tag gold" style="font-size:22px;color:#16120f">${T.cat.k}</div><div class="big">كلمة تبدأ بحرف «${T.cards[ci].l}»</div><input id="w" placeholder="اكتب كلمتك" autocomplete="off"><button class="btn" onclick="tword(${ci})">خطفتها!</button></div>`;
  setTimeout(()=>{const e=document.getElementById('w');e&&e.focus()},50);
 }else tclaim(pi,ci,'');
}
function tword(ci){const v=document.getElementById('w').value.trim();if(!v)return;tclaim(0,ci,v)}
function tvalid(w,l){if(!w||norm(w[0])!==l)return 0;return T.cat.w.includes(w)?1:2}
function tclaim(pi,ci,word){
 clearTimeout(T.bt);clearInterval(T.iv);T.toast='';
 const t=++T.tok;T.phase='obj';T.claim={pi,ci,word,obj:new Set(),t0:Date.now()};
 if(T.mode==='bot'){const v=tvalid(word,T.cards[ci].l),pr=[.9,.08,.4][v];
  T.P.forEach((p,i)=>{if(i===0||i===pi||p.c<1)return;if(Math.random()<pr)setTimeout(()=>{if(T.tok===t){T.claim.obj.add(i);trender()}},ri(600,2400))})}
 trender();
 setTimeout(()=>{if(T.tok===t)tresolve()},3000);
}
function trender(){
 const c=T.claim,p=T.P[c.pi],el=((Date.now()-c.t0)/1000).toFixed(2);let ob;
 if(T.mode==='bot')ob=c.pi===0?`<p>الباقين يقررون… (${c.obj.size} اعتراض)</p>`:`<button class="btn" style="background:var(--rd)" ${c.obj.has(0)||T.P[0].c<1?'disabled':''} onclick="to