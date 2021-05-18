import android.util.Base64;
import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.List;

public class mir {
  private gwx A;
  
  private boolean B;
  
  private Boolean a;
  
  private boolean b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private mwx i;
  
  private String j;
  
  private kbt k;
  
  private iow l;
  
  private gvx m;
  
  private jky n;
  
  private ght o;
  
  private gke p;
  
  private hkr q;
  
  private khx r;
  
  private mwy s;
  
  private String t;
  
  private int u;
  
  private String v;
  
  private ipi w;
  
  private String x;
  
  private String y;
  
  private boolean z;
  
  private void E() {
    if (this.n == null)
      this.n = new jkz(); 
    if (this.m == null)
      this.m = new gvy(this.l); 
    if (this.o == null) {
      this.o = new ghs();
      this.p = new gkc();
    } 
    if (this.q == null)
      this.q = new hkq(); 
    this.n.a(this.m.a());
  }
  
  private void F() {
    naf naf = new naf();
    try {
      this.l.b(naf.c(Base64.decode(this.l.b(), 0)));
      this.l.c(naf.c(Base64.decode(this.l.c(), 0)));
      this.l.d(naf.c(Base64.decode(this.l.f(), 0)));
      if (this.l.d() != null) {
        String str;
        mwx mwx1 = this.l.d();
        if (this.l.d().c() != null) {
          str = naf.c(Base64.decode(this.l.d().c(), 0));
        } else {
          str = "";
        } 
        mwx1.c(str);
        mwx1 = this.l.d();
        if (this.l.d().a() != null) {
          str = naf.c(Base64.decode(this.l.d().a(), 0));
        } else {
          str = "";
        } 
        mwx1.a(str);
        mwx1 = this.l.d();
        if (this.l.d().b() != null) {
          str = naf.c(Base64.decode(this.l.d().b(), 0));
        } else {
          str = "";
        } 
        mwx1.b(str);
        return;
      } 
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
    } 
  }
  
  private void G() {
    String str;
    c(this.l.b());
    d(this.l.c());
    if (this.l.f() == null) {
      str = "1";
    } else {
      str = this.l.f();
    } 
    e(str);
    a(this.l.d());
    a(this.l.j());
    j(this.l.j().a());
    naf naf = new naf();
    try {
      if (this.l.m() != null && !this.l.m().isEmpty())
        a(naf.c(Base64.decode(this.l.m(), 0))); 
      if (this.l.n() != null && !this.l.n().isEmpty())
        b(naf.c(Base64.decode(this.l.n(), 0))); 
      if (this.l.o() != null && !this.l.o().isEmpty())
        k(naf.c(Base64.decode(this.l.o(), 0))); 
      return;
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
      return;
    } 
  }
  
  private void H() {
    // Byte code:
    //   0: new naf
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_3
    //   8: new java/util/ArrayList
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: astore_2
    //   16: aload_0
    //   17: getfield l : Liow;
    //   20: invokevirtual e : ()Liph;
    //   23: invokevirtual d : ()Ljava/util/List;
    //   26: ifnull -> 515
    //   29: aload_0
    //   30: getfield l : Liow;
    //   33: invokevirtual e : ()Liph;
    //   36: invokevirtual d : ()Ljava/util/List;
    //   39: invokeinterface iterator : ()Ljava/util/Iterator;
    //   44: astore #4
    //   46: aload #4
    //   48: invokeinterface hasNext : ()Z
    //   53: ifeq -> 515
    //   56: aload #4
    //   58: invokeinterface next : ()Ljava/lang/Object;
    //   63: checkcast ioz
    //   66: astore #5
    //   68: new ghu
    //   71: dup
    //   72: invokespecial <init> : ()V
    //   75: astore #6
    //   77: aload #6
    //   79: aload #5
    //   81: invokevirtual a : ()Ljava/lang/String;
    //   84: invokevirtual j : (Ljava/lang/String;)V
    //   87: aload #6
    //   89: aload #5
    //   91: invokevirtual n : ()Ljava/lang/String;
    //   94: invokevirtual s : (Ljava/lang/String;)V
    //   97: aload #6
    //   99: aload #5
    //   101: invokevirtual b : ()Ljava/lang/String;
    //   104: invokevirtual e : (Ljava/lang/String;)V
    //   107: aload #6
    //   109: aload #5
    //   111: invokevirtual c : ()Ljava/lang/String;
    //   114: invokevirtual h : (Ljava/lang/String;)V
    //   117: aload #6
    //   119: aload #5
    //   121: invokevirtual d : ()Ljava/lang/String;
    //   124: invokevirtual i : (Ljava/lang/String;)V
    //   127: aload #6
    //   129: new java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial <init> : ()V
    //   136: ldc 'Final '
    //   138: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_3
    //   142: aload #5
    //   144: invokevirtual l : ()Ljava/lang/String;
    //   147: invokevirtual trim : ()Ljava/lang/String;
    //   150: ldc 'UTF-8'
    //   152: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   155: iconst_0
    //   156: invokestatic decode : ([BI)[B
    //   159: invokevirtual c : ([B)Ljava/lang/String;
    //   162: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual toString : ()Ljava/lang/String;
    //   168: invokevirtual b : (Ljava/lang/String;)V
    //   171: aload #5
    //   173: invokevirtual o : ()Ljava/lang/String;
    //   176: ifnull -> 216
    //   179: aload #6
    //   181: aload #5
    //   183: invokevirtual o : ()Ljava/lang/String;
    //   186: invokevirtual t : (Ljava/lang/String;)V
    //   189: aload #5
    //   191: invokevirtual o : ()Ljava/lang/String;
    //   194: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   197: ldc_w 'PENDENTE'
    //   200: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   203: ifeq -> 591
    //   206: ldc_w '16'
    //   209: astore_1
    //   210: aload #6
    //   212: aload_1
    //   213: invokevirtual q : (Ljava/lang/String;)V
    //   216: aload #6
    //   218: aload #5
    //   220: invokevirtual f : ()Ljava/lang/String;
    //   223: invokevirtual l : (Ljava/lang/String;)V
    //   226: aload #6
    //   228: aload #5
    //   230: invokevirtual g : ()Ljava/lang/String;
    //   233: invokevirtual p : (Ljava/lang/String;)V
    //   236: aload #6
    //   238: aload #5
    //   240: invokevirtual p : ()Ljava/lang/String;
    //   243: invokevirtual B : (Ljava/lang/String;)V
    //   246: aload #6
    //   248: aload #5
    //   250: invokevirtual h : ()Ljava/lang/String;
    //   253: invokevirtual o : (Ljava/lang/String;)V
    //   256: aload #5
    //   258: invokevirtual i : ()Ljava/lang/String;
    //   261: ifnull -> 596
    //   264: aload #5
    //   266: invokevirtual i : ()Ljava/lang/String;
    //   269: astore_1
    //   270: aload #5
    //   272: aload_0
    //   273: aload_1
    //   274: invokespecial l : (Ljava/lang/String;)Ljava/lang/String;
    //   277: invokevirtual i : (Ljava/lang/String;)V
    //   280: aload #5
    //   282: invokevirtual i : ()Ljava/lang/String;
    //   285: invokestatic parseFloat : (Ljava/lang/String;)F
    //   288: invokestatic valueOf : (F)Ljava/lang/Float;
    //   291: invokevirtual floatValue : ()F
    //   294: fconst_0
    //   295: fcmpg
    //   296: ifge -> 603
    //   299: aload #6
    //   301: ldc_w '0'
    //   304: invokevirtual c : (Ljava/lang/String;)V
    //   307: aload #6
    //   309: aload #5
    //   311: invokevirtual q : ()Ljava/lang/String;
    //   314: invokevirtual x : (Ljava/lang/String;)V
    //   317: aload #6
    //   319: aload #5
    //   321: invokevirtual q : ()Ljava/lang/String;
    //   324: invokevirtual g : (Ljava/lang/String;)V
    //   327: aload #6
    //   329: aload #5
    //   331: invokevirtual e : ()Ljava/lang/String;
    //   334: invokevirtual a : (Ljava/lang/String;)V
    //   337: aload #6
    //   339: aload #5
    //   341: invokevirtual j : ()Ljava/lang/String;
    //   344: invokevirtual d : (Ljava/lang/String;)V
    //   347: aload #6
    //   349: aload #5
    //   351: invokevirtual k : ()Ljava/lang/String;
    //   354: invokevirtual y : (Ljava/lang/String;)V
    //   357: aload #6
    //   359: aload_3
    //   360: aload #5
    //   362: invokevirtual l : ()Ljava/lang/String;
    //   365: invokevirtual trim : ()Ljava/lang/String;
    //   368: ldc 'UTF-8'
    //   370: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   373: iconst_0
    //   374: invokestatic decode : ([BI)[B
    //   377: invokevirtual c : ([B)Ljava/lang/String;
    //   380: invokevirtual z : (Ljava/lang/String;)V
    //   383: aload #6
    //   385: aload #5
    //   387: invokevirtual r : ()Ljava/lang/String;
    //   390: invokevirtual A : (Ljava/lang/String;)V
    //   393: aload #6
    //   395: new java/lang/StringBuilder
    //   398: dup
    //   399: invokespecial <init> : ()V
    //   402: aload #6
    //   404: invokevirtual a : ()Ljava/lang/String;
    //   407: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: ldc_w ' '
    //   413: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: aload #6
    //   418: invokevirtual b : ()Ljava/lang/String;
    //   421: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: invokevirtual toString : ()Ljava/lang/String;
    //   427: invokevirtual C : (Ljava/lang/String;)V
    //   430: aload #6
    //   432: aload #6
    //   434: invokevirtual a : ()Ljava/lang/String;
    //   437: ldc_w 'SANTANDER'
    //   440: ldc ''
    //   442: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   445: ldc_w 'CARTAO'
    //   448: ldc ''
    //   450: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   453: ldc_w 'INTERNACIONAL'
    //   456: ldc_w 'INTER.'
    //   459: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   462: invokevirtual trim : ()Ljava/lang/String;
    //   465: invokevirtual D : (Ljava/lang/String;)V
    //   468: aload #5
    //   470: invokevirtual t : ()Ljava/lang/String;
    //   473: ifnull -> 492
    //   476: aload #6
    //   478: aload #5
    //   480: invokevirtual t : ()Ljava/lang/String;
    //   483: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Integer;
    //   486: invokevirtual intValue : ()I
    //   489: invokevirtual a : (I)V
    //   492: aload_2
    //   493: aload #6
    //   495: invokeinterface add : (Ljava/lang/Object;)Z
    //   500: pop
    //   501: goto -> 46
    //   504: astore_1
    //   505: ldc 'ERRO_CRYPTO'
    //   507: aload_1
    //   508: invokevirtual getMessage : ()Ljava/lang/String;
    //   511: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   514: pop
    //   515: aload_0
    //   516: getfield o : Lght;
    //   519: invokeinterface a : ()Ljava/util/List;
    //   524: ifnull -> 544
    //   527: aload_0
    //   528: getfield o : Lght;
    //   531: invokeinterface a : ()Ljava/util/List;
    //   536: invokeinterface size : ()I
    //   541: ifne -> 560
    //   544: aload_0
    //   545: getfield o : Lght;
    //   548: new java/util/ArrayList
    //   551: dup
    //   552: invokespecial <init> : ()V
    //   555: invokeinterface a : (Ljava/util/List;)V
    //   560: aload_0
    //   561: getfield o : Lght;
    //   564: invokeinterface a : ()Ljava/util/List;
    //   569: invokeinterface clear : ()V
    //   574: aload_0
    //   575: getfield o : Lght;
    //   578: invokeinterface a : ()Ljava/util/List;
    //   583: aload_2
    //   584: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   589: pop
    //   590: return
    //   591: aconst_null
    //   592: astore_1
    //   593: goto -> 210
    //   596: ldc_w '0'
    //   599: astore_1
    //   600: goto -> 270
    //   603: aload #6
    //   605: aload #5
    //   607: invokevirtual i : ()Ljava/lang/String;
    //   610: invokevirtual c : (Ljava/lang/String;)V
    //   613: goto -> 307
    // Exception table:
    //   from	to	target	type
    //   16	46	504	java/lang/Exception
    //   46	206	504	java/lang/Exception
    //   210	216	504	java/lang/Exception
    //   216	270	504	java/lang/Exception
    //   270	307	504	java/lang/Exception
    //   307	492	504	java/lang/Exception
    //   492	501	504	java/lang/Exception
    //   603	613	504	java/lang/Exception
  }
  
  private void I() {
    hxo hxo;
    if (this.q.a() == null) {
      hxo = new hxo();
    } else {
      hxo = this.q.a();
    } 
    if (this.l.e().h() != null)
      hxo.a(this.l.e().h()); 
    hxo.a(new ArrayList<hxw>());
    hxo.b(new ArrayList<hxp>());
    if (this.l.e().j() != null && this.l.e().j().size() > 0)
      for (ipl ipl : this.l.e().j()) {
        hxw hxw = new hxw();
        hxw.k(ipl.j());
        hxw.j(ipl.i());
        hxw.m(ipl.l());
        hxw.h(ipl.h());
        hxw.l(ipl.k());
        hxw.b(ipl.b());
        hxw.f(ipl.f());
        hxw.n(ipl.m());
        hxw.q(ipl.n());
        hxw.s(ipl.o());
        hxw.e(ipl.e());
        hxw.c(ipl.c());
        hxw.d(ipl.d());
        hxw.a(ipl.a());
        hxw.g(ipl.g());
        hxo.c().add(hxw);
      }  
    if (this.l.e().i() != null && this.l.e().i().size() > 0)
      for (ipe ipe : this.l.e().i()) {
        hxp hxp = new hxp();
        hxp.b(ipe.b());
        hxp.d(ipe.e());
        hxp.e(ipe.i());
        hxp.f(ipe.a());
        hxp.g(ipe.f());
        hxp.h(ipe.g());
        hxp.i(ipe.h());
        hxp.j(ipe.j());
        hxp.l(ipe.k());
        hxp.m(ipe.c());
        hxp.n(ipe.d());
        hxp.o(ipe.l());
        hxo.d().add(hxp);
      }  
    if (this.l.e().b() != null) {
      iov iov = this.l.e().b();
      hxk hxk = new hxk();
      hxk.a(iov.a());
      hxk.b(iov.b());
      hxk.d(iov.d());
      hxk.c(iov.c());
      hxo.a(hxk);
    } 
    if (this.l.e().c() != null) {
      iov iov = this.l.e().c();
      hxk hxk = new hxk();
      hxk.a(iov.a());
      hxk.b(iov.b());
      hxk.d(iov.d());
      hxk.c(iov.c());
      hxo.b(hxk);
    } 
    if (this.l.e().w() != null)
      hxo.b(this.l.e().w()); 
    this.q.a(hxo);
  }
  
  private void J() {
    ArrayList arrayList = new ArrayList();
    List list = arrayList;
    if (this.l.e() != null) {
      list = arrayList;
      if (this.l.e().y() != null)
        list = this.l.e().y(); 
    } 
    this.w = (ipi)new ipn(list);
  }
  
  private String l(String paramString) {
    String str = paramString.replaceAll("\\+", "");
    paramString = str;
    if (str.contains("-")) {
      paramString = str.replaceAll("-", "");
      paramString = "-" + paramString;
    } 
    return paramString;
  }
  
  public String A() {
    return this.t;
  }
  
  public String B() {
    return this.v;
  }
  
  public ipi C() {
    return this.w;
  }
  
  public void D() {
    miq.C().d(false);
    i(null);
    a((mwx)null);
    a((iow)null);
    a((gwx)null);
    a(0);
    c(true);
    b(true);
    if (r() != null)
      r().a((String)null); 
    a((mwy)null);
    if (this.o != null) {
      this.o.a((List<ghu>)null);
      this.o = null;
    } 
    if (this.m != null) {
      this.m.a((List<Conta>)null);
      this.m = null;
    } 
    if (this.q != null) {
      this.q.a(null);
      this.q = null;
    } 
    if (this.n != null) {
      this.n.a((List<Conta>)null);
      this.n = null;
    } 
    this.w = null;
  }
  
  public String a() {
    return this.x;
  }
  
  public void a(int paramInt) {
    this.u = paramInt;
  }
  
  public void a(gwx paramgwx) {
    this.A = paramgwx;
  }
  
  public void a(iow paramiow) {
    this.b = true;
    this.l = paramiow;
    if (paramiow != null && "0".equals(this.l.getCodErro())) {
      E();
      F();
      G();
      H();
      I();
      J();
      i(this.l.getTokenTransacao());
    } 
  }
  
  public void a(iph paramiph) {
    if (paramiph.e() != null)
      this.l.e().b(paramiph.e()); 
    if (paramiph.d() != null)
      this.l.e().a(paramiph.d()); 
    if (paramiph.g() != null)
      this.l.e().c(paramiph.g()); 
    if (paramiph.f() != null)
      this.l.e().b(paramiph.f()); 
    if (paramiph.h() != null) {
      this.l.e().d(paramiph.h());
    } else {
      this.l.e().d(null);
    } 
    if (paramiph.i() != null && paramiph.i().size() > 0) {
      this.l.e().c(paramiph.i());
    } else {
      this.l.e().c(null);
    } 
    if (paramiph.j() != null && paramiph.j().size() > 0) {
      this.l.e().d(paramiph.j());
    } else {
      this.l.e().d(null);
    } 
    if (paramiph.y() != null && !paramiph.y().isEmpty())
      this.l.e().e(paramiph.y()); 
    if (this.l.e() != null) {
      this.m.a(this.l.e());
      H();
      I();
      J();
    } 
    this.l.e().a(null);
  }
  
  public void a(Boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public void a(String paramString) {
    this.x = paramString;
  }
  
  public void a(kbt paramkbt) {
    this.k = paramkbt;
  }
  
  public void a(khx paramkhx) {
    this.r = paramkhx;
  }
  
  public void a(mwx parammwx) {
    this.i = parammwx;
  }
  
  public void a(mwy parammwy) {
    this.s = parammwy;
  }
  
  public void a(boolean paramBoolean) {
    this.B = paramBoolean;
  }
  
  public String b() {
    return this.y;
  }
  
  public void b(String paramString) {
    this.y = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.z = paramBoolean;
  }
  
  public khx c() {
    return this.r;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public boolean d() {
    return this.B;
  }
  
  public Boolean e() {
    return this.a;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.c;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.d;
  }
  
  public void g(String paramString) {
    this.g = paramString;
  }
  
  public String h() {
    return this.e;
  }
  
  public void h(String paramString) {
    this.h = paramString;
  }
  
  public String i() {
    return this.f;
  }
  
  public void i(String paramString) {
    this.j = paramString;
  }
  
  public String j() {
    return this.g;
  }
  
  public void j(String paramString) {
    this.t = paramString;
  }
  
  public String k() {
    return this.h;
  }
  
  public void k(String paramString) {
    this.v = paramString;
  }
  
  public mwx l() {
    return this.i;
  }
  
  public String m() {
    return this.j;
  }
  
  public boolean n() {
    return this.z;
  }
  
  public kbt o() {
    return this.k;
  }
  
  public iow p() {
    return this.l;
  }
  
  public gvx q() {
    return this.m;
  }
  
  public jky r() {
    return this.n;
  }
  
  public ght s() {
    return this.o;
  }
  
  public gke t() {
    return this.p;
  }
  
  public hkr u() {
    return this.q;
  }
  
  public void v() {
    // Byte code:
    //   0: aload_0
    //   1: getfield l : Liow;
    //   4: invokevirtual g : ()Ljava/lang/String;
    //   7: astore_3
    //   8: aload_0
    //   9: getfield l : Liow;
    //   12: invokevirtual h : ()Ljava/lang/String;
    //   15: astore_2
    //   16: aload_2
    //   17: ldc_w 'UN'
    //   20: invokevirtual equals : (Ljava/lang/Object;)Z
    //   23: ifne -> 38
    //   26: aload_3
    //   27: astore_1
    //   28: aload_2
    //   29: ldc_w 'JP'
    //   32: invokevirtual equals : (Ljava/lang/Object;)Z
    //   35: ifeq -> 52
    //   38: aload_3
    //   39: ldc_w 'VG'
    //   42: invokevirtual equals : (Ljava/lang/Object;)Z
    //   45: ifeq -> 122
    //   48: ldc_w 'VGUN'
    //   51: astore_1
    //   52: aload_2
    //   53: ldc_w 'PR'
    //   56: invokevirtual equals : (Ljava/lang/Object;)Z
    //   59: ifeq -> 64
    //   62: aload_2
    //   63: astore_1
    //   64: aload_0
    //   65: aload_1
    //   66: invokevirtual f : (Ljava/lang/String;)V
    //   69: invokestatic b : ()Landroid/content/Context;
    //   72: ldc_w 'novidadesSegmentada'
    //   75: iconst_0
    //   76: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   79: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   84: ldc_w 'segPrimario'
    //   87: aload_1
    //   88: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   93: ldc_w 'segSecundario'
    //   96: aload_2
    //   97: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   102: invokeinterface apply : ()V
    //   107: ldc_w 'Segmento Primario'
    //   110: aload_1
    //   111: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)V
    //   114: ldc_w 'Segmento Secundario'
    //   117: aload_2
    //   118: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)V
    //   121: return
    //   122: aload_3
    //   123: astore_1
    //   124: aload_3
    //   125: ldc_w 'CL'
    //   128: invokevirtual equals : (Ljava/lang/Object;)Z
    //   131: ifeq -> 52
    //   134: ldc_w 'UN'
    //   137: astore_1
    //   138: goto -> 52
  }
  
  public gwx w() {
    return this.A;
  }
  
  public boolean x() {
    return this.b;
  }
  
  public mwy y() {
    return this.s;
  }
  
  public int z() {
    return this.u;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */