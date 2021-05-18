import java.io.Serializable;

public class bgb implements Serializable {
  public int a = 0;
  
  private int b = 0;
  
  private int c = 0;
  
  private int d = 0;
  
  private int e = 0;
  
  private int f = 0;
  
  private int g = 0;
  
  private int h = 1;
  
  private int i = 1;
  
  private int j = 0;
  
  private int k = 0;
  
  private int l = 0;
  
  private int m = 0;
  
  private int n = 0;
  
  private int o = 0;
  
  private String p = "";
  
  private String q = "";
  
  private String r = "";
  
  private String s = "";
  
  private String t = "";
  
  private String u = "";
  
  public bgb() {
    this.o = 0;
    this.q = "";
    this.b = 0;
    this.g = 0;
    this.h = 1;
    this.i = 1;
    this.k = 1;
    this.l = 1;
    this.n = 1;
    this.m = 1;
    this.f = 0;
    this.e = 0;
    this.c = 0;
    this.d = 0;
    this.j = 0;
    this.p = "";
    this.s = "";
    this.t = "";
    this.u = "";
  }
  
  public int a() {
    return this.o;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(String paramString) {
    this.p = paramString;
  }
  
  public String b() {
    return this.p;
  }
  
  public void b(int paramInt) {
    this.c = paramInt;
  }
  
  public void b(String paramString) {
    this.q = paramString;
  }
  
  public String c() {
    return this.s;
  }
  
  public void c(int paramInt) {
    this.d = paramInt;
  }
  
  public void c(String paramString) {
    this.r = paramString;
  }
  
  public int d() {
    return this.j;
  }
  
  public void d(int paramInt) {
    this.e = paramInt;
  }
  
  public void d(String paramString) {
    this.u = paramString;
  }
  
  public String e() {
    return this.q;
  }
  
  public void e(int paramInt) {
    this.f = paramInt;
  }
  
  public void e(String paramString) {
    this.t = paramString;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_1
    //   4: if_acmpne -> 11
    //   7: iconst_1
    //   8: istore_2
    //   9: iload_2
    //   10: ireturn
    //   11: iload_3
    //   12: istore_2
    //   13: aload_1
    //   14: ifnull -> 9
    //   17: iload_3
    //   18: istore_2
    //   19: aload_0
    //   20: invokevirtual getClass : ()Ljava/lang/Class;
    //   23: aload_1
    //   24: invokevirtual getClass : ()Ljava/lang/Class;
    //   27: if_acmpne -> 9
    //   30: aload_1
    //   31: checkcast bgb
    //   34: astore_1
    //   35: iload_3
    //   36: istore_2
    //   37: aload_0
    //   38: getfield b : I
    //   41: aload_1
    //   42: getfield b : I
    //   45: if_icmpne -> 9
    //   48: iload_3
    //   49: istore_2
    //   50: aload_0
    //   51: getfield c : I
    //   54: aload_1
    //   55: getfield c : I
    //   58: if_icmpne -> 9
    //   61: iload_3
    //   62: istore_2
    //   63: aload_0
    //   64: getfield d : I
    //   67: aload_1
    //   68: getfield d : I
    //   71: if_icmpne -> 9
    //   74: iload_3
    //   75: istore_2
    //   76: aload_0
    //   77: getfield e : I
    //   80: aload_1
    //   81: getfield e : I
    //   84: if_icmpne -> 9
    //   87: iload_3
    //   88: istore_2
    //   89: aload_0
    //   90: getfield f : I
    //   93: aload_1
    //   94: getfield f : I
    //   97: if_icmpne -> 9
    //   100: iload_3
    //   101: istore_2
    //   102: aload_0
    //   103: getfield a : I
    //   106: aload_1
    //   107: getfield a : I
    //   110: if_icmpne -> 9
    //   113: iload_3
    //   114: istore_2
    //   115: aload_0
    //   116: getfield g : I
    //   119: aload_1
    //   120: getfield g : I
    //   123: if_icmpne -> 9
    //   126: iload_3
    //   127: istore_2
    //   128: aload_0
    //   129: getfield h : I
    //   132: aload_1
    //   133: getfield h : I
    //   136: if_icmpne -> 9
    //   139: iload_3
    //   140: istore_2
    //   141: aload_0
    //   142: getfield i : I
    //   145: aload_1
    //   146: getfield i : I
    //   149: if_icmpne -> 9
    //   152: iload_3
    //   153: istore_2
    //   154: aload_0
    //   155: getfield j : I
    //   158: aload_1
    //   159: getfield j : I
    //   162: if_icmpne -> 9
    //   165: iload_3
    //   166: istore_2
    //   167: aload_0
    //   168: getfield k : I
    //   171: aload_1
    //   172: getfield k : I
    //   175: if_icmpne -> 9
    //   178: iload_3
    //   179: istore_2
    //   180: aload_0
    //   181: getfield l : I
    //   184: aload_1
    //   185: getfield l : I
    //   188: if_icmpne -> 9
    //   191: iload_3
    //   192: istore_2
    //   193: aload_0
    //   194: getfield m : I
    //   197: aload_1
    //   198: getfield m : I
    //   201: if_icmpne -> 9
    //   204: iload_3
    //   205: istore_2
    //   206: aload_0
    //   207: getfield n : I
    //   210: aload_1
    //   211: getfield n : I
    //   214: if_icmpne -> 9
    //   217: iload_3
    //   218: istore_2
    //   219: aload_0
    //   220: getfield o : I
    //   223: aload_1
    //   224: getfield o : I
    //   227: if_icmpne -> 9
    //   230: aload_0
    //   231: getfield p : Ljava/lang/String;
    //   234: ifnull -> 370
    //   237: iload_3
    //   238: istore_2
    //   239: aload_0
    //   240: getfield p : Ljava/lang/String;
    //   243: aload_1
    //   244: getfield p : Ljava/lang/String;
    //   247: invokevirtual equals : (Ljava/lang/Object;)Z
    //   250: ifeq -> 9
    //   253: aload_0
    //   254: getfield q : Ljava/lang/String;
    //   257: ifnull -> 379
    //   260: iload_3
    //   261: istore_2
    //   262: aload_0
    //   263: getfield q : Ljava/lang/String;
    //   266: aload_1
    //   267: getfield q : Ljava/lang/String;
    //   270: invokevirtual equals : (Ljava/lang/Object;)Z
    //   273: ifeq -> 9
    //   276: aload_0
    //   277: getfield r : Ljava/lang/String;
    //   280: ifnull -> 388
    //   283: iload_3
    //   284: istore_2
    //   285: aload_0
    //   286: getfield r : Ljava/lang/String;
    //   289: aload_1
    //   290: getfield r : Ljava/lang/String;
    //   293: invokevirtual equals : (Ljava/lang/Object;)Z
    //   296: ifeq -> 9
    //   299: aload_0
    //   300: getfield s : Ljava/lang/String;
    //   303: ifnull -> 397
    //   306: iload_3
    //   307: istore_2
    //   308: aload_0
    //   309: getfield s : Ljava/lang/String;
    //   312: aload_1
    //   313: getfield s : Ljava/lang/String;
    //   316: invokevirtual equals : (Ljava/lang/Object;)Z
    //   319: ifeq -> 9
    //   322: aload_0
    //   323: getfield t : Ljava/lang/String;
    //   326: ifnull -> 406
    //   329: iload_3
    //   330: istore_2
    //   331: aload_0
    //   332: getfield t : Ljava/lang/String;
    //   335: aload_1
    //   336: getfield t : Ljava/lang/String;
    //   339: invokevirtual equals : (Ljava/lang/Object;)Z
    //   342: ifeq -> 9
    //   345: aload_0
    //   346: getfield u : Ljava/lang/String;
    //   349: ifnull -> 415
    //   352: iload_3
    //   353: istore_2
    //   354: aload_0
    //   355: getfield u : Ljava/lang/String;
    //   358: aload_1
    //   359: getfield u : Ljava/lang/String;
    //   362: invokevirtual equals : (Ljava/lang/Object;)Z
    //   365: ifeq -> 9
    //   368: iconst_1
    //   369: ireturn
    //   370: aload_1
    //   371: getfield p : Ljava/lang/String;
    //   374: ifnull -> 253
    //   377: iconst_0
    //   378: ireturn
    //   379: aload_1
    //   380: getfield q : Ljava/lang/String;
    //   383: ifnull -> 276
    //   386: iconst_0
    //   387: ireturn
    //   388: aload_1
    //   389: getfield r : Ljava/lang/String;
    //   392: ifnull -> 299
    //   395: iconst_0
    //   396: ireturn
    //   397: aload_1
    //   398: getfield s : Ljava/lang/String;
    //   401: ifnull -> 322
    //   404: iconst_0
    //   405: ireturn
    //   406: aload_1
    //   407: getfield t : Ljava/lang/String;
    //   410: ifnull -> 345
    //   413: iconst_0
    //   414: ireturn
    //   415: aload_1
    //   416: getfield u : Ljava/lang/String;
    //   419: ifnull -> 368
    //   422: iconst_0
    //   423: ireturn
  }
  
  public int f() {
    return this.b;
  }
  
  public void f(int paramInt) {
    this.g = paramInt;
  }
  
  public void f(String paramString) {
    this.s = paramString;
  }
  
  public int g() {
    return this.e;
  }
  
  public void g(int paramInt) {
    this.h = paramInt;
  }
  
  public int h() {
    return this.g;
  }
  
  public void h(int paramInt) {
    this.i = paramInt;
  }
  
  public int i() {
    return this.h;
  }
  
  public void i(int paramInt) {
    this.j = paramInt;
  }
  
  public int j() {
    return this.i;
  }
  
  public void j(int paramInt) {
    this.k = paramInt;
  }
  
  public int k() {
    return this.k;
  }
  
  public void k(int paramInt) {
    this.l = paramInt;
  }
  
  public int l() {
    return this.l;
  }
  
  public void l(int paramInt) {
    this.o = paramInt;
  }
  
  public int m() {
    return this.m;
  }
  
  public void m(int paramInt) {
    this.m = paramInt;
  }
  
  public int n() {
    return this.n;
  }
  
  public void n(int paramInt) {
    this.n = paramInt;
  }
  
  public String o() {
    return this.r;
  }
  
  public void o(int paramInt) {
    this.a = paramInt;
  }
  
  public int p() {
    return this.f;
  }
  
  public int q() {
    return this.c;
  }
  
  public int r() {
    return this.d;
  }
  
  public int s() {
    return this.a;
  }
  
  public String t() {
    return this.t;
  }
  
  public String u() {
    return this.u;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */