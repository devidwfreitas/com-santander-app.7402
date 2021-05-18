public final class dpl extends dqy<dpl> {
  private static volatile dpl[] I;
  
  public dph[] A;
  
  public String B;
  
  public Integer C;
  
  public Integer D;
  
  public Integer E;
  
  public String F;
  
  public Long G;
  
  public Long H;
  
  public Integer a;
  
  public dpi[] b;
  
  public dpn[] c;
  
  public Long d;
  
  public Long e;
  
  public Long f;
  
  public Long g;
  
  public Long h;
  
  public String i;
  
  public String j;
  
  public String k;
  
  public String l;
  
  public Integer m;
  
  public String n;
  
  public String o;
  
  public String p;
  
  public Long q;
  
  public Long r;
  
  public String s;
  
  public Boolean t;
  
  public String u;
  
  public Long v;
  
  public Integer w;
  
  public String x;
  
  public String y;
  
  public Boolean z;
  
  public dpl() {
    c();
  }
  
  public static dpl[] b() {
    if (I == null)
      synchronized (drc.c) {
        if (I == null)
          I = new dpl[0]; 
        return I;
      }  
    return I;
  }
  
  protected int a() {
    boolean bool = false;
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(1, this.a.intValue()); 
    j = i;
    if (this.b != null) {
      j = i;
      if (this.b.length > 0) {
        j = 0;
        while (j < this.b.length) {
          dpi dpi1 = this.b[j];
          int m = i;
          if (dpi1 != null)
            m = i + dqw.c(2, dpi1); 
          j++;
          i = m;
        } 
        j = i;
      } 
    } 
    i = j;
    if (this.c != null) {
      i = j;
      if (this.c.length > 0) {
        i = j;
        j = 0;
        while (j < this.c.length) {
          dpn dpn1 = this.c[j];
          int m = i;
          if (dpn1 != null)
            m = i + dqw.c(3, dpn1); 
          j++;
          i = m;
        } 
      } 
    } 
    j = i;
    if (this.d != null)
      j = i + dqw.f(4, this.d.longValue()); 
    i = j;
    if (this.e != null)
      i = j + dqw.f(5, this.e.longValue()); 
    j = i;
    if (this.f != null)
      j = i + dqw.f(6, this.f.longValue()); 
    i = j;
    if (this.h != null)
      i = j + dqw.f(7, this.h.longValue()); 
    j = i;
    if (this.i != null)
      j = i + dqw.b(8, this.i); 
    i = j;
    if (this.j != null)
      i = j + dqw.b(9, this.j); 
    j = i;
    if (this.k != null)
      j = i + dqw.b(10, this.k); 
    i = j;
    if (this.l != null)
      i = j + dqw.b(11, this.l); 
    j = i;
    if (this.m != null)
      j = i + dqw.c(12, this.m.intValue()); 
    i = j;
    if (this.n != null)
      i = j + dqw.b(13, this.n); 
    j = i;
    if (this.o != null)
      j = i + dqw.b(14, this.o); 
    i = j;
    if (this.p != null)
      i = j + dqw.b(16, this.p); 
    j = i;
    if (this.q != null)
      j = i + dqw.f(17, this.q.longValue()); 
    i = j;
    if (this.r != null)
      i = j + dqw.f(18, this.r.longValue()); 
    j = i;
    if (this.s != null)
      j = i + dqw.b(19, this.s); 
    i = j;
    if (this.t != null)
      i = j + dqw.b(20, this.t.booleanValue()); 
    j = i;
    if (this.u != null)
      j = i + dqw.b(21, this.u); 
    i = j;
    if (this.v != null)
      i = j + dqw.f(22, this.v.longValue()); 
    j = i;
    if (this.w != null)
      j = i + dqw.c(23, this.w.intValue()); 
    i = j;
    if (this.x != null)
      i = j + dqw.b(24, this.x); 
    j = i;
    if (this.y != null)
      j = i + dqw.b(25, this.y); 
    int k = j;
    if (this.g != null)
      k = j + dqw.f(26, this.g.longValue()); 
    i = k;
    if (this.z != null)
      i = k + dqw.b(28, this.z.booleanValue()); 
    j = i;
    if (this.A != null) {
      j = i;
      if (this.A.length > 0) {
        k = bool;
        while (true) {
          j = i;
          if (k < this.A.length) {
            dph dph1 = this.A[k];
            j = i;
            if (dph1 != null)
              j = i + dqw.c(29, dph1); 
            k++;
            i = j;
            continue;
          } 
          break;
        } 
      } 
    } 
    i = j;
    if (this.B != null)
      i = j + dqw.b(30, this.B); 
    j = i;
    if (this.C != null)
      j = i + dqw.c(31, this.C.intValue()); 
    i = j;
    if (this.D != null)
      i = j + dqw.c(32, this.D.intValue()); 
    j = i;
    if (this.E != null)
      j = i + dqw.c(33, this.E.intValue()); 
    i = j;
    if (this.F != null)
      i = j + dqw.b(34, this.F); 
    j = i;
    if (this.G != null)
      j = i + dqw.f(35, this.G.longValue()); 
    i = j;
    if (this.H != null)
      i = j + dqw.f(36, this.H.longValue()); 
    return i;
  }
  
  public dpl a(dqv paramdqv) {
    while (true) {
      int j;
      dpi[] arrayOfDpi;
      dpn[] arrayOfDpn;
      dph[] arrayOfDph;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Integer.valueOf(paramdqv.g());
          break;
        case 18:
          j = drh.a(paramdqv, 18);
          if (this.b == null) {
            i = 0;
          } else {
            i = this.b.length;
          } 
          arrayOfDpi = new dpi[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.b, 0, arrayOfDpi, 0, i);
            j = i;
          } 
          while (j < arrayOfDpi.length - 1) {
            arrayOfDpi[j] = new dpi();
            paramdqv.a(arrayOfDpi[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpi[j] = new dpi();
          paramdqv.a(arrayOfDpi[j]);
          this.b = arrayOfDpi;
          break;
        case 26:
          j = drh.a(paramdqv, 26);
          if (this.c == null) {
            i = 0;
          } else {
            i = this.c.length;
          } 
          arrayOfDpn = new dpn[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.c, 0, arrayOfDpn, 0, i);
            j = i;
          } 
          while (j < arrayOfDpn.length - 1) {
            arrayOfDpn[j] = new dpn();
            paramdqv.a(arrayOfDpn[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpn[j] = new dpn();
          paramdqv.a(arrayOfDpn[j]);
          this.c = arrayOfDpn;
          break;
        case 32:
          this.d = Long.valueOf(paramdqv.f());
          break;
        case 40:
          this.e = Long.valueOf(paramdqv.f());
          break;
        case 48:
          this.f = Long.valueOf(paramdqv.f());
          break;
        case 56:
          this.h = Long.valueOf(paramdqv.f());
          break;
        case 66:
          this.i = paramdqv.j();
          break;
        case 74:
          this.j = paramdqv.j();
          break;
        case 82:
          this.k = paramdqv.j();
          break;
        case 90:
          this.l = paramdqv.j();
          break;
        case 96:
          this.m = Integer.valueOf(paramdqv.g());
          break;
        case 106:
          this.n = paramdqv.j();
          break;
        case 114:
          this.o = paramdqv.j();
          break;
        case 130:
          this.p = paramdqv.j();
          break;
        case 136:
          this.q = Long.valueOf(paramdqv.f());
          break;
        case 144:
          this.r = Long.valueOf(paramdqv.f());
          break;
        case 154:
          this.s = paramdqv.j();
          break;
        case 160:
          this.t = Boolean.valueOf(paramdqv.i());
          break;
        case 170:
          this.u = paramdqv.j();
          break;
        case 176:
          this.v = Long.valueOf(paramdqv.f());
          break;
        case 184:
          this.w = Integer.valueOf(paramdqv.g());
          break;
        case 194:
          this.x = paramdqv.j();
          break;
        case 202:
          this.y = paramdqv.j();
          break;
        case 208:
          this.g = Long.valueOf(paramdqv.f());
          break;
        case 224:
          this.z = Boolean.valueOf(paramdqv.i());
          break;
        case 234:
          j = drh.a(paramdqv, 234);
          if (this.A == null) {
            i = 0;
          } else {
            i = this.A.length;
          } 
          arrayOfDph = new dph[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.A, 0, arrayOfDph, 0, i);
            j = i;
          } 
          while (j < arrayOfDph.length - 1) {
            arrayOfDph[j] = new dph();
            paramdqv.a(arrayOfDph[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDph[j] = new dph();
          paramdqv.a(arrayOfDph[j]);
          this.A = arrayOfDph;
          break;
        case 242:
          this.B = paramdqv.j();
          break;
        case 248:
          this.C = Integer.valueOf(paramdqv.g());
          break;
        case 256:
          this.D = Integer.valueOf(paramdqv.g());
          break;
        case 264:
          this.E = Integer.valueOf(paramdqv.g());
          break;
        case 274:
          this.F = paramdqv.j();
          break;
        case 280:
          this.G = Long.valueOf(paramdqv.f());
          break;
        case 288:
          this.H = Long.valueOf(paramdqv.f());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    byte b = 0;
    if (this.a != null)
      paramdqw.a(1, this.a.intValue()); 
    if (this.b != null && this.b.length > 0)
      for (int i = 0; i < this.b.length; i++) {
        dpi dpi1 = this.b[i];
        if (dpi1 != null)
          paramdqw.a(2, dpi1); 
      }  
    if (this.c != null && this.c.length > 0)
      for (int i = 0; i < this.c.length; i++) {
        dpn dpn1 = this.c[i];
        if (dpn1 != null)
          paramdqw.a(3, dpn1); 
      }  
    if (this.d != null)
      paramdqw.b(4, this.d.longValue()); 
    if (this.e != null)
      paramdqw.b(5, this.e.longValue()); 
    if (this.f != null)
      paramdqw.b(6, this.f.longValue()); 
    if (this.h != null)
      paramdqw.b(7, this.h.longValue()); 
    if (this.i != null)
      paramdqw.a(8, this.i); 
    if (this.j != null)
      paramdqw.a(9, this.j); 
    if (this.k != null)
      paramdqw.a(10, this.k); 
    if (this.l != null)
      paramdqw.a(11, this.l); 
    if (this.m != null)
      paramdqw.a(12, this.m.intValue()); 
    if (this.n != null)
      paramdqw.a(13, this.n); 
    if (this.o != null)
      paramdqw.a(14, this.o); 
    if (this.p != null)
      paramdqw.a(16, this.p); 
    if (this.q != null)
      paramdqw.b(17, this.q.longValue()); 
    if (this.r != null)
      paramdqw.b(18, this.r.longValue()); 
    if (this.s != null)
      paramdqw.a(19, this.s); 
    if (this.t != null)
      paramdqw.a(20, this.t.booleanValue()); 
    if (this.u != null)
      paramdqw.a(21, this.u); 
    if (this.v != null)
      paramdqw.b(22, this.v.longValue()); 
    if (this.w != null)
      paramdqw.a(23, this.w.intValue()); 
    if (this.x != null)
      paramdqw.a(24, this.x); 
    if (this.y != null)
      paramdqw.a(25, this.y); 
    if (this.g != null)
      paramdqw.b(26, this.g.longValue()); 
    if (this.z != null)
      paramdqw.a(28, this.z.booleanValue()); 
    if (this.A != null && this.A.length > 0)
      for (int i = b; i < this.A.length; i++) {
        dph dph1 = this.A[i];
        if (dph1 != null)
          paramdqw.a(29, dph1); 
      }  
    if (this.B != null)
      paramdqw.a(30, this.B); 
    if (this.C != null)
      paramdqw.a(31, this.C.intValue()); 
    if (this.D != null)
      paramdqw.a(32, this.D.intValue()); 
    if (this.E != null)
      paramdqw.a(33, this.E.intValue()); 
    if (this.F != null)
      paramdqw.a(34, this.F); 
    if (this.G != null)
      paramdqw.b(35, this.G.longValue()); 
    if (this.H != null)
      paramdqw.b(36, this.H.longValue()); 
    super.a(paramdqw);
  }
  
  public dpl c() {
    this.a = null;
    this.b = dpi.b();
    this.c = dpn.b();
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
    this.j = null;
    this.k = null;
    this.l = null;
    this.m = null;
    this.n = null;
    this.o = null;
    this.p = null;
    this.q = null;
    this.r = null;
    this.s = null;
    this.t = null;
    this.u = null;
    this.v = null;
    this.w = null;
    this.x = null;
    this.y = null;
    this.z = null;
    this.A = dph.b();
    this.B = null;
    this.C = null;
    this.D = null;
    this.E = null;
    this.F = null;
    this.G = null;
    this.H = null;
    this.ag = null;
    this.ah = -1;
    return this;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: aload_0
    //   4: if_acmpne -> 11
    //   7: iconst_1
    //   8: istore_2
    //   9: iload_2
    //   10: ireturn
    //   11: iload_3
    //   12: istore_2
    //   13: aload_1
    //   14: instanceof dpl
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpl
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/Integer;
    //   29: ifnonnull -> 607
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/Integer;
    //   38: ifnonnull -> 9
    //   41: iload_3
    //   42: istore_2
    //   43: aload_0
    //   44: getfield b : [Ldpi;
    //   47: aload_1
    //   48: getfield b : [Ldpi;
    //   51: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   54: ifeq -> 9
    //   57: iload_3
    //   58: istore_2
    //   59: aload_0
    //   60: getfield c : [Ldpn;
    //   63: aload_1
    //   64: getfield c : [Ldpn;
    //   67: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   70: ifeq -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/Long;
    //   77: ifnonnull -> 623
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/Long;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield e : Ljava/lang/Long;
    //   93: ifnonnull -> 639
    //   96: iload_3
    //   97: istore_2
    //   98: aload_1
    //   99: getfield e : Ljava/lang/Long;
    //   102: ifnonnull -> 9
    //   105: aload_0
    //   106: getfield f : Ljava/lang/Long;
    //   109: ifnonnull -> 655
    //   112: iload_3
    //   113: istore_2
    //   114: aload_1
    //   115: getfield f : Ljava/lang/Long;
    //   118: ifnonnull -> 9
    //   121: aload_0
    //   122: getfield g : Ljava/lang/Long;
    //   125: ifnonnull -> 671
    //   128: iload_3
    //   129: istore_2
    //   130: aload_1
    //   131: getfield g : Ljava/lang/Long;
    //   134: ifnonnull -> 9
    //   137: aload_0
    //   138: getfield h : Ljava/lang/Long;
    //   141: ifnonnull -> 687
    //   144: iload_3
    //   145: istore_2
    //   146: aload_1
    //   147: getfield h : Ljava/lang/Long;
    //   150: ifnonnull -> 9
    //   153: aload_0
    //   154: getfield i : Ljava/lang/String;
    //   157: ifnonnull -> 703
    //   160: iload_3
    //   161: istore_2
    //   162: aload_1
    //   163: getfield i : Ljava/lang/String;
    //   166: ifnonnull -> 9
    //   169: aload_0
    //   170: getfield j : Ljava/lang/String;
    //   173: ifnonnull -> 719
    //   176: iload_3
    //   177: istore_2
    //   178: aload_1
    //   179: getfield j : Ljava/lang/String;
    //   182: ifnonnull -> 9
    //   185: aload_0
    //   186: getfield k : Ljava/lang/String;
    //   189: ifnonnull -> 735
    //   192: iload_3
    //   193: istore_2
    //   194: aload_1
    //   195: getfield k : Ljava/lang/String;
    //   198: ifnonnull -> 9
    //   201: aload_0
    //   202: getfield l : Ljava/lang/String;
    //   205: ifnonnull -> 751
    //   208: iload_3
    //   209: istore_2
    //   210: aload_1
    //   211: getfield l : Ljava/lang/String;
    //   214: ifnonnull -> 9
    //   217: aload_0
    //   218: getfield m : Ljava/lang/Integer;
    //   221: ifnonnull -> 767
    //   224: iload_3
    //   225: istore_2
    //   226: aload_1
    //   227: getfield m : Ljava/lang/Integer;
    //   230: ifnonnull -> 9
    //   233: aload_0
    //   234: getfield n : Ljava/lang/String;
    //   237: ifnonnull -> 783
    //   240: iload_3
    //   241: istore_2
    //   242: aload_1
    //   243: getfield n : Ljava/lang/String;
    //   246: ifnonnull -> 9
    //   249: aload_0
    //   250: getfield o : Ljava/lang/String;
    //   253: ifnonnull -> 799
    //   256: iload_3
    //   257: istore_2
    //   258: aload_1
    //   259: getfield o : Ljava/lang/String;
    //   262: ifnonnull -> 9
    //   265: aload_0
    //   266: getfield p : Ljava/lang/String;
    //   269: ifnonnull -> 815
    //   272: iload_3
    //   273: istore_2
    //   274: aload_1
    //   275: getfield p : Ljava/lang/String;
    //   278: ifnonnull -> 9
    //   281: aload_0
    //   282: getfield q : Ljava/lang/Long;
    //   285: ifnonnull -> 831
    //   288: iload_3
    //   289: istore_2
    //   290: aload_1
    //   291: getfield q : Ljava/lang/Long;
    //   294: ifnonnull -> 9
    //   297: aload_0
    //   298: getfield r : Ljava/lang/Long;
    //   301: ifnonnull -> 847
    //   304: iload_3
    //   305: istore_2
    //   306: aload_1
    //   307: getfield r : Ljava/lang/Long;
    //   310: ifnonnull -> 9
    //   313: aload_0
    //   314: getfield s : Ljava/lang/String;
    //   317: ifnonnull -> 863
    //   320: iload_3
    //   321: istore_2
    //   322: aload_1
    //   323: getfield s : Ljava/lang/String;
    //   326: ifnonnull -> 9
    //   329: aload_0
    //   330: getfield t : Ljava/lang/Boolean;
    //   333: ifnonnull -> 879
    //   336: iload_3
    //   337: istore_2
    //   338: aload_1
    //   339: getfield t : Ljava/lang/Boolean;
    //   342: ifnonnull -> 9
    //   345: aload_0
    //   346: getfield u : Ljava/lang/String;
    //   349: ifnonnull -> 895
    //   352: iload_3
    //   353: istore_2
    //   354: aload_1
    //   355: getfield u : Ljava/lang/String;
    //   358: ifnonnull -> 9
    //   361: aload_0
    //   362: getfield v : Ljava/lang/Long;
    //   365: ifnonnull -> 911
    //   368: iload_3
    //   369: istore_2
    //   370: aload_1
    //   371: getfield v : Ljava/lang/Long;
    //   374: ifnonnull -> 9
    //   377: aload_0
    //   378: getfield w : Ljava/lang/Integer;
    //   381: ifnonnull -> 927
    //   384: iload_3
    //   385: istore_2
    //   386: aload_1
    //   387: getfield w : Ljava/lang/Integer;
    //   390: ifnonnull -> 9
    //   393: aload_0
    //   394: getfield x : Ljava/lang/String;
    //   397: ifnonnull -> 943
    //   400: iload_3
    //   401: istore_2
    //   402: aload_1
    //   403: getfield x : Ljava/lang/String;
    //   406: ifnonnull -> 9
    //   409: aload_0
    //   410: getfield y : Ljava/lang/String;
    //   413: ifnonnull -> 959
    //   416: iload_3
    //   417: istore_2
    //   418: aload_1
    //   419: getfield y : Ljava/lang/String;
    //   422: ifnonnull -> 9
    //   425: aload_0
    //   426: getfield z : Ljava/lang/Boolean;
    //   429: ifnonnull -> 975
    //   432: iload_3
    //   433: istore_2
    //   434: aload_1
    //   435: getfield z : Ljava/lang/Boolean;
    //   438: ifnonnull -> 9
    //   441: iload_3
    //   442: istore_2
    //   443: aload_0
    //   444: getfield A : [Ldph;
    //   447: aload_1
    //   448: getfield A : [Ldph;
    //   451: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   454: ifeq -> 9
    //   457: aload_0
    //   458: getfield B : Ljava/lang/String;
    //   461: ifnonnull -> 991
    //   464: iload_3
    //   465: istore_2
    //   466: aload_1
    //   467: getfield B : Ljava/lang/String;
    //   470: ifnonnull -> 9
    //   473: aload_0
    //   474: getfield C : Ljava/lang/Integer;
    //   477: ifnonnull -> 1007
    //   480: iload_3
    //   481: istore_2
    //   482: aload_1
    //   483: getfield C : Ljava/lang/Integer;
    //   486: ifnonnull -> 9
    //   489: aload_0
    //   490: getfield D : Ljava/lang/Integer;
    //   493: ifnonnull -> 1023
    //   496: iload_3
    //   497: istore_2
    //   498: aload_1
    //   499: getfield D : Ljava/lang/Integer;
    //   502: ifnonnull -> 9
    //   505: aload_0
    //   506: getfield E : Ljava/lang/Integer;
    //   509: ifnonnull -> 1039
    //   512: iload_3
    //   513: istore_2
    //   514: aload_1
    //   515: getfield E : Ljava/lang/Integer;
    //   518: ifnonnull -> 9
    //   521: aload_0
    //   522: getfield F : Ljava/lang/String;
    //   525: ifnonnull -> 1055
    //   528: iload_3
    //   529: istore_2
    //   530: aload_1
    //   531: getfield F : Ljava/lang/String;
    //   534: ifnonnull -> 9
    //   537: aload_0
    //   538: getfield G : Ljava/lang/Long;
    //   541: ifnonnull -> 1071
    //   544: iload_3
    //   545: istore_2
    //   546: aload_1
    //   547: getfield G : Ljava/lang/Long;
    //   550: ifnonnull -> 9
    //   553: aload_0
    //   554: getfield H : Ljava/lang/Long;
    //   557: ifnonnull -> 1087
    //   560: iload_3
    //   561: istore_2
    //   562: aload_1
    //   563: getfield H : Ljava/lang/Long;
    //   566: ifnonnull -> 9
    //   569: aload_0
    //   570: getfield ag : Ldra;
    //   573: ifnull -> 586
    //   576: aload_0
    //   577: getfield ag : Ldra;
    //   580: invokevirtual b : ()Z
    //   583: ifeq -> 1103
    //   586: aload_1
    //   587: getfield ag : Ldra;
    //   590: ifnull -> 605
    //   593: iload_3
    //   594: istore_2
    //   595: aload_1
    //   596: getfield ag : Ldra;
    //   599: invokevirtual b : ()Z
    //   602: ifeq -> 9
    //   605: iconst_1
    //   606: ireturn
    //   607: aload_0
    //   608: getfield a : Ljava/lang/Integer;
    //   611: aload_1
    //   612: getfield a : Ljava/lang/Integer;
    //   615: invokevirtual equals : (Ljava/lang/Object;)Z
    //   618: ifne -> 41
    //   621: iconst_0
    //   622: ireturn
    //   623: aload_0
    //   624: getfield d : Ljava/lang/Long;
    //   627: aload_1
    //   628: getfield d : Ljava/lang/Long;
    //   631: invokevirtual equals : (Ljava/lang/Object;)Z
    //   634: ifne -> 89
    //   637: iconst_0
    //   638: ireturn
    //   639: aload_0
    //   640: getfield e : Ljava/lang/Long;
    //   643: aload_1
    //   644: getfield e : Ljava/lang/Long;
    //   647: invokevirtual equals : (Ljava/lang/Object;)Z
    //   650: ifne -> 105
    //   653: iconst_0
    //   654: ireturn
    //   655: aload_0
    //   656: getfield f : Ljava/lang/Long;
    //   659: aload_1
    //   660: getfield f : Ljava/lang/Long;
    //   663: invokevirtual equals : (Ljava/lang/Object;)Z
    //   666: ifne -> 121
    //   669: iconst_0
    //   670: ireturn
    //   671: aload_0
    //   672: getfield g : Ljava/lang/Long;
    //   675: aload_1
    //   676: getfield g : Ljava/lang/Long;
    //   679: invokevirtual equals : (Ljava/lang/Object;)Z
    //   682: ifne -> 137
    //   685: iconst_0
    //   686: ireturn
    //   687: aload_0
    //   688: getfield h : Ljava/lang/Long;
    //   691: aload_1
    //   692: getfield h : Ljava/lang/Long;
    //   695: invokevirtual equals : (Ljava/lang/Object;)Z
    //   698: ifne -> 153
    //   701: iconst_0
    //   702: ireturn
    //   703: aload_0
    //   704: getfield i : Ljava/lang/String;
    //   707: aload_1
    //   708: getfield i : Ljava/lang/String;
    //   711: invokevirtual equals : (Ljava/lang/Object;)Z
    //   714: ifne -> 169
    //   717: iconst_0
    //   718: ireturn
    //   719: aload_0
    //   720: getfield j : Ljava/lang/String;
    //   723: aload_1
    //   724: getfield j : Ljava/lang/String;
    //   727: invokevirtual equals : (Ljava/lang/Object;)Z
    //   730: ifne -> 185
    //   733: iconst_0
    //   734: ireturn
    //   735: aload_0
    //   736: getfield k : Ljava/lang/String;
    //   739: aload_1
    //   740: getfield k : Ljava/lang/String;
    //   743: invokevirtual equals : (Ljava/lang/Object;)Z
    //   746: ifne -> 201
    //   749: iconst_0
    //   750: ireturn
    //   751: aload_0
    //   752: getfield l : Ljava/lang/String;
    //   755: aload_1
    //   756: getfield l : Ljava/lang/String;
    //   759: invokevirtual equals : (Ljava/lang/Object;)Z
    //   762: ifne -> 217
    //   765: iconst_0
    //   766: ireturn
    //   767: aload_0
    //   768: getfield m : Ljava/lang/Integer;
    //   771: aload_1
    //   772: getfield m : Ljava/lang/Integer;
    //   775: invokevirtual equals : (Ljava/lang/Object;)Z
    //   778: ifne -> 233
    //   781: iconst_0
    //   782: ireturn
    //   783: aload_0
    //   784: getfield n : Ljava/lang/String;
    //   787: aload_1
    //   788: getfield n : Ljava/lang/String;
    //   791: invokevirtual equals : (Ljava/lang/Object;)Z
    //   794: ifne -> 249
    //   797: iconst_0
    //   798: ireturn
    //   799: aload_0
    //   800: getfield o : Ljava/lang/String;
    //   803: aload_1
    //   804: getfield o : Ljava/lang/String;
    //   807: invokevirtual equals : (Ljava/lang/Object;)Z
    //   810: ifne -> 265
    //   813: iconst_0
    //   814: ireturn
    //   815: aload_0
    //   816: getfield p : Ljava/lang/String;
    //   819: aload_1
    //   820: getfield p : Ljava/lang/String;
    //   823: invokevirtual equals : (Ljava/lang/Object;)Z
    //   826: ifne -> 281
    //   829: iconst_0
    //   830: ireturn
    //   831: aload_0
    //   832: getfield q : Ljava/lang/Long;
    //   835: aload_1
    //   836: getfield q : Ljava/lang/Long;
    //   839: invokevirtual equals : (Ljava/lang/Object;)Z
    //   842: ifne -> 297
    //   845: iconst_0
    //   846: ireturn
    //   847: aload_0
    //   848: getfield r : Ljava/lang/Long;
    //   851: aload_1
    //   852: getfield r : Ljava/lang/Long;
    //   855: invokevirtual equals : (Ljava/lang/Object;)Z
    //   858: ifne -> 313
    //   861: iconst_0
    //   862: ireturn
    //   863: aload_0
    //   864: getfield s : Ljava/lang/String;
    //   867: aload_1
    //   868: getfield s : Ljava/lang/String;
    //   871: invokevirtual equals : (Ljava/lang/Object;)Z
    //   874: ifne -> 329
    //   877: iconst_0
    //   878: ireturn
    //   879: aload_0
    //   880: getfield t : Ljava/lang/Boolean;
    //   883: aload_1
    //   884: getfield t : Ljava/lang/Boolean;
    //   887: invokevirtual equals : (Ljava/lang/Object;)Z
    //   890: ifne -> 345
    //   893: iconst_0
    //   894: ireturn
    //   895: aload_0
    //   896: getfield u : Ljava/lang/String;
    //   899: aload_1
    //   900: getfield u : Ljava/lang/String;
    //   903: invokevirtual equals : (Ljava/lang/Object;)Z
    //   906: ifne -> 361
    //   909: iconst_0
    //   910: ireturn
    //   911: aload_0
    //   912: getfield v : Ljava/lang/Long;
    //   915: aload_1
    //   916: getfield v : Ljava/lang/Long;
    //   919: invokevirtual equals : (Ljava/lang/Object;)Z
    //   922: ifne -> 377
    //   925: iconst_0
    //   926: ireturn
    //   927: aload_0
    //   928: getfield w : Ljava/lang/Integer;
    //   931: aload_1
    //   932: getfield w : Ljava/lang/Integer;
    //   935: invokevirtual equals : (Ljava/lang/Object;)Z
    //   938: ifne -> 393
    //   941: iconst_0
    //   942: ireturn
    //   943: aload_0
    //   944: getfield x : Ljava/lang/String;
    //   947: aload_1
    //   948: getfield x : Ljava/lang/String;
    //   951: invokevirtual equals : (Ljava/lang/Object;)Z
    //   954: ifne -> 409
    //   957: iconst_0
    //   958: ireturn
    //   959: aload_0
    //   960: getfield y : Ljava/lang/String;
    //   963: aload_1
    //   964: getfield y : Ljava/lang/String;
    //   967: invokevirtual equals : (Ljava/lang/Object;)Z
    //   970: ifne -> 425
    //   973: iconst_0
    //   974: ireturn
    //   975: aload_0
    //   976: getfield z : Ljava/lang/Boolean;
    //   979: aload_1
    //   980: getfield z : Ljava/lang/Boolean;
    //   983: invokevirtual equals : (Ljava/lang/Object;)Z
    //   986: ifne -> 441
    //   989: iconst_0
    //   990: ireturn
    //   991: aload_0
    //   992: getfield B : Ljava/lang/String;
    //   995: aload_1
    //   996: getfield B : Ljava/lang/String;
    //   999: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1002: ifne -> 473
    //   1005: iconst_0
    //   1006: ireturn
    //   1007: aload_0
    //   1008: getfield C : Ljava/lang/Integer;
    //   1011: aload_1
    //   1012: getfield C : Ljava/lang/Integer;
    //   1015: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1018: ifne -> 489
    //   1021: iconst_0
    //   1022: ireturn
    //   1023: aload_0
    //   1024: getfield D : Ljava/lang/Integer;
    //   1027: aload_1
    //   1028: getfield D : Ljava/lang/Integer;
    //   1031: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1034: ifne -> 505
    //   1037: iconst_0
    //   1038: ireturn
    //   1039: aload_0
    //   1040: getfield E : Ljava/lang/Integer;
    //   1043: aload_1
    //   1044: getfield E : Ljava/lang/Integer;
    //   1047: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1050: ifne -> 521
    //   1053: iconst_0
    //   1054: ireturn
    //   1055: aload_0
    //   1056: getfield F : Ljava/lang/String;
    //   1059: aload_1
    //   1060: getfield F : Ljava/lang/String;
    //   1063: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1066: ifne -> 537
    //   1069: iconst_0
    //   1070: ireturn
    //   1071: aload_0
    //   1072: getfield G : Ljava/lang/Long;
    //   1075: aload_1
    //   1076: getfield G : Ljava/lang/Long;
    //   1079: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1082: ifne -> 553
    //   1085: iconst_0
    //   1086: ireturn
    //   1087: aload_0
    //   1088: getfield H : Ljava/lang/Long;
    //   1091: aload_1
    //   1092: getfield H : Ljava/lang/Long;
    //   1095: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1098: ifne -> 569
    //   1101: iconst_0
    //   1102: ireturn
    //   1103: aload_0
    //   1104: getfield ag : Ldra;
    //   1107: aload_1
    //   1108: getfield ag : Ldra;
    //   1111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1114: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    int i14;
    int i15;
    int i16;
    int i17;
    int i18;
    int i19;
    int i20;
    int i21;
    int i22;
    int i23;
    int i24;
    int i25;
    int i26;
    byte b = 0;
    int i28 = getClass().getName().hashCode();
    if (this.a == null) {
      i = 0;
    } else {
      i = this.a.hashCode();
    } 
    int i29 = drc.a((Object[])this.b);
    int i30 = drc.a((Object[])this.c);
    if (this.d == null) {
      j = 0;
    } else {
      j = this.d.hashCode();
    } 
    if (this.e == null) {
      k = 0;
    } else {
      k = this.e.hashCode();
    } 
    if (this.f == null) {
      m = 0;
    } else {
      m = this.f.hashCode();
    } 
    if (this.g == null) {
      n = 0;
    } else {
      n = this.g.hashCode();
    } 
    if (this.h == null) {
      i1 = 0;
    } else {
      i1 = this.h.hashCode();
    } 
    if (this.i == null) {
      i2 = 0;
    } else {
      i2 = this.i.hashCode();
    } 
    if (this.j == null) {
      i3 = 0;
    } else {
      i3 = this.j.hashCode();
    } 
    if (this.k == null) {
      i4 = 0;
    } else {
      i4 = this.k.hashCode();
    } 
    if (this.l == null) {
      i5 = 0;
    } else {
      i5 = this.l.hashCode();
    } 
    if (this.m == null) {
      i6 = 0;
    } else {
      i6 = this.m.hashCode();
    } 
    if (this.n == null) {
      i7 = 0;
    } else {
      i7 = this.n.hashCode();
    } 
    if (this.o == null) {
      i8 = 0;
    } else {
      i8 = this.o.hashCode();
    } 
    if (this.p == null) {
      i9 = 0;
    } else {
      i9 = this.p.hashCode();
    } 
    if (this.q == null) {
      i10 = 0;
    } else {
      i10 = this.q.hashCode();
    } 
    if (this.r == null) {
      i11 = 0;
    } else {
      i11 = this.r.hashCode();
    } 
    if (this.s == null) {
      i12 = 0;
    } else {
      i12 = this.s.hashCode();
    } 
    if (this.t == null) {
      i13 = 0;
    } else {
      i13 = this.t.hashCode();
    } 
    if (this.u == null) {
      i14 = 0;
    } else {
      i14 = this.u.hashCode();
    } 
    if (this.v == null) {
      i15 = 0;
    } else {
      i15 = this.v.hashCode();
    } 
    if (this.w == null) {
      i16 = 0;
    } else {
      i16 = this.w.hashCode();
    } 
    if (this.x == null) {
      i17 = 0;
    } else {
      i17 = this.x.hashCode();
    } 
    if (this.y == null) {
      i18 = 0;
    } else {
      i18 = this.y.hashCode();
    } 
    if (this.z == null) {
      i19 = 0;
    } else {
      i19 = this.z.hashCode();
    } 
    int i31 = drc.a((Object[])this.A);
    if (this.B == null) {
      i20 = 0;
    } else {
      i20 = this.B.hashCode();
    } 
    if (this.C == null) {
      i21 = 0;
    } else {
      i21 = this.C.hashCode();
    } 
    if (this.D == null) {
      i22 = 0;
    } else {
      i22 = this.D.hashCode();
    } 
    if (this.E == null) {
      i23 = 0;
    } else {
      i23 = this.E.hashCode();
    } 
    if (this.F == null) {
      i24 = 0;
    } else {
      i24 = this.F.hashCode();
    } 
    if (this.G == null) {
      i25 = 0;
    } else {
      i25 = this.G.hashCode();
    } 
    if (this.H == null) {
      i26 = 0;
    } else {
      i26 = this.H.hashCode();
    } 
    int i27 = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        i27 = b;
        return (i26 + (i25 + (i24 + (i23 + (i22 + (i21 + (i20 + ((i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (((i + (i28 + 527) * 31) * 31 + i29) * 31 + i30) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i27;
      } 
    } else {
      return (i26 + (i25 + (i24 + (i23 + (i22 + (i21 + (i20 + ((i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (((i + (i28 + 527) * 31) * 31 + i29) * 31 + i30) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i27;
    } 
    i27 = this.ag.hashCode();
    return (i26 + (i25 + (i24 + (i23 + (i22 + (i21 + (i20 + ((i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (((i + (i28 + 527) * 31) * 31 + i29) * 31 + i30) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i27;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */