import android.graphics.Path;
import android.graphics.PointF;
import android.support.annotation.Nullable;
import java.util.List;

public class ayq implements ayp, ayz {
  private static final float a = 0.47829F;
  
  private static final float b = 0.25F;
  
  private final Path c = new Path();
  
  private final String d;
  
  private final awu e;
  
  private final bcx f;
  
  private final ayy<?, Float> g;
  
  private final ayy<?, PointF> h;
  
  private final ayy<?, Float> i;
  
  @Nullable
  private final ayy<?, Float> j;
  
  private final ayy<?, Float> k;
  
  @Nullable
  private final ayy<?, Float> l;
  
  private final ayy<?, Float> m;
  
  @Nullable
  private ayw n;
  
  private boolean o;
  
  public ayq(awu paramawu, bdy parambdy, bcu parambcu) {
    this.e = paramawu;
    this.d = parambcu.a();
    this.f = parambcu.b();
    this.g = parambcu.c().a();
    this.h = parambcu.d().a();
    this.i = parambcu.e().a();
    this.k = parambcu.g().a();
    this.m = parambcu.i().a();
    if (this.f == bcx.Star) {
      this.j = parambcu.f().a();
      this.l = parambcu.h().a();
    } else {
      this.j = null;
      this.l = null;
    } 
    parambdy.a(this.g);
    parambdy.a(this.h);
    parambdy.a(this.i);
    parambdy.a(this.k);
    parambdy.a(this.m);
    if (this.f == bcx.Star) {
      parambdy.a(this.j);
      parambdy.a(this.l);
    } 
    this.g.a(this);
    this.h.a(this);
    this.i.a(this);
    this.k.a(this);
    this.m.a(this);
    if (this.f == bcx.Star) {
      this.k.a(this);
      this.m.a(this);
    } 
  }
  
  private void c() {
    this.o = false;
    this.e.invalidateSelf();
  }
  
  private void d() {
    // Byte code:
    //   0: aload_0
    //   1: getfield g : Layy;
    //   4: invokevirtual b : ()Ljava/lang/Object;
    //   7: checkcast java/lang/Float
    //   10: invokevirtual floatValue : ()F
    //   13: fstore #14
    //   15: aload_0
    //   16: getfield i : Layy;
    //   19: ifnonnull -> 404
    //   22: dconst_0
    //   23: dstore_1
    //   24: dload_1
    //   25: ldc2_w 90.0
    //   28: dsub
    //   29: invokestatic toRadians : (D)D
    //   32: dstore_1
    //   33: ldc2_w 6.283185307179586
    //   36: fload #14
    //   38: f2d
    //   39: ddiv
    //   40: d2f
    //   41: fstore #23
    //   43: fload #23
    //   45: fconst_2
    //   46: fdiv
    //   47: fstore #20
    //   49: fload #14
    //   51: fload #14
    //   53: f2i
    //   54: i2f
    //   55: fsub
    //   56: fstore #24
    //   58: fload #24
    //   60: fconst_0
    //   61: fcmpl
    //   62: ifeq -> 840
    //   65: dload_1
    //   66: fconst_1
    //   67: fload #24
    //   69: fsub
    //   70: fload #20
    //   72: fmul
    //   73: f2d
    //   74: dadd
    //   75: dstore_1
    //   76: aload_0
    //   77: getfield k : Layy;
    //   80: invokevirtual b : ()Ljava/lang/Object;
    //   83: checkcast java/lang/Float
    //   86: invokevirtual floatValue : ()F
    //   89: fstore #9
    //   91: aload_0
    //   92: getfield j : Layy;
    //   95: invokevirtual b : ()Ljava/lang/Object;
    //   98: checkcast java/lang/Float
    //   101: invokevirtual floatValue : ()F
    //   104: fstore #10
    //   106: aload_0
    //   107: getfield l : Layy;
    //   110: ifnull -> 834
    //   113: aload_0
    //   114: getfield l : Layy;
    //   117: invokevirtual b : ()Ljava/lang/Object;
    //   120: checkcast java/lang/Float
    //   123: invokevirtual floatValue : ()F
    //   126: ldc 100.0
    //   128: fdiv
    //   129: fstore #7
    //   131: fconst_0
    //   132: fstore #8
    //   134: aload_0
    //   135: getfield m : Layy;
    //   138: ifnull -> 159
    //   141: aload_0
    //   142: getfield m : Layy;
    //   145: invokevirtual b : ()Ljava/lang/Object;
    //   148: checkcast java/lang/Float
    //   151: invokevirtual floatValue : ()F
    //   154: ldc 100.0
    //   156: fdiv
    //   157: fstore #8
    //   159: fload #24
    //   161: fconst_0
    //   162: fcmpl
    //   163: ifeq -> 422
    //   166: fload #9
    //   168: fload #10
    //   170: fsub
    //   171: fload #24
    //   173: fmul
    //   174: fload #10
    //   176: fadd
    //   177: fstore #11
    //   179: fload #11
    //   181: f2d
    //   182: dload_1
    //   183: invokestatic cos : (D)D
    //   186: dmul
    //   187: d2f
    //   188: fstore #12
    //   190: fload #11
    //   192: f2d
    //   193: dload_1
    //   194: invokestatic sin : (D)D
    //   197: dmul
    //   198: d2f
    //   199: fstore #13
    //   201: aload_0
    //   202: getfield c : Landroid/graphics/Path;
    //   205: fload #12
    //   207: fload #13
    //   209: invokevirtual moveTo : (FF)V
    //   212: dload_1
    //   213: fload #23
    //   215: fload #24
    //   217: fmul
    //   218: fconst_2
    //   219: fdiv
    //   220: f2d
    //   221: dadd
    //   222: dstore_1
    //   223: fload #14
    //   225: f2d
    //   226: invokestatic ceil : (D)D
    //   229: ldc2_w 2.0
    //   232: dmul
    //   233: dstore_3
    //   234: iconst_0
    //   235: istore #29
    //   237: iconst_0
    //   238: istore #28
    //   240: fload #12
    //   242: fstore #16
    //   244: fload #13
    //   246: fstore #15
    //   248: iload #29
    //   250: i2d
    //   251: dload_3
    //   252: dcmpg
    //   253: ifge -> 771
    //   256: iload #28
    //   258: ifeq -> 467
    //   261: fload #9
    //   263: fstore #12
    //   265: fload #11
    //   267: fconst_0
    //   268: fcmpl
    //   269: ifeq -> 827
    //   272: iload #29
    //   274: i2d
    //   275: dload_3
    //   276: ldc2_w 2.0
    //   279: dsub
    //   280: dcmpl
    //   281: ifne -> 827
    //   284: fload #23
    //   286: fload #24
    //   288: fmul
    //   289: fconst_2
    //   290: fdiv
    //   291: fstore #17
    //   293: fload #12
    //   295: fstore #13
    //   297: fload #11
    //   299: fconst_0
    //   300: fcmpl
    //   301: ifeq -> 322
    //   304: fload #12
    //   306: fstore #13
    //   308: iload #29
    //   310: i2d
    //   311: dload_3
    //   312: dconst_1
    //   313: dsub
    //   314: dcmpl
    //   315: ifne -> 322
    //   318: fload #11
    //   320: fstore #13
    //   322: fload #13
    //   324: f2d
    //   325: dload_1
    //   326: invokestatic cos : (D)D
    //   329: dmul
    //   330: d2f
    //   331: fstore #21
    //   333: fload #13
    //   335: f2d
    //   336: dload_1
    //   337: invokestatic sin : (D)D
    //   340: dmul
    //   341: d2f
    //   342: fstore #22
    //   344: fload #7
    //   346: fconst_0
    //   347: fcmpl
    //   348: ifne -> 474
    //   351: fload #8
    //   353: fconst_0
    //   354: fcmpl
    //   355: ifne -> 474
    //   358: aload_0
    //   359: getfield c : Landroid/graphics/Path;
    //   362: fload #21
    //   364: fload #22
    //   366: invokevirtual lineTo : (FF)V
    //   369: fload #17
    //   371: f2d
    //   372: dstore #5
    //   374: iload #28
    //   376: ifne -> 765
    //   379: iconst_1
    //   380: istore #28
    //   382: iload #29
    //   384: iconst_1
    //   385: iadd
    //   386: istore #29
    //   388: fload #22
    //   390: fstore #15
    //   392: fload #21
    //   394: fstore #16
    //   396: dload_1
    //   397: dload #5
    //   399: dadd
    //   400: dstore_1
    //   401: goto -> 248
    //   404: aload_0
    //   405: getfield i : Layy;
    //   408: invokevirtual b : ()Ljava/lang/Object;
    //   411: checkcast java/lang/Float
    //   414: invokevirtual floatValue : ()F
    //   417: f2d
    //   418: dstore_1
    //   419: goto -> 24
    //   422: fload #9
    //   424: f2d
    //   425: dload_1
    //   426: invokestatic cos : (D)D
    //   429: dmul
    //   430: d2f
    //   431: fstore #12
    //   433: fload #9
    //   435: f2d
    //   436: dload_1
    //   437: invokestatic sin : (D)D
    //   440: dmul
    //   441: d2f
    //   442: fstore #13
    //   444: aload_0
    //   445: getfield c : Landroid/graphics/Path;
    //   448: fload #12
    //   450: fload #13
    //   452: invokevirtual moveTo : (FF)V
    //   455: dload_1
    //   456: fload #20
    //   458: f2d
    //   459: dadd
    //   460: dstore_1
    //   461: fconst_0
    //   462: fstore #11
    //   464: goto -> 223
    //   467: fload #10
    //   469: fstore #12
    //   471: goto -> 265
    //   474: fload #15
    //   476: f2d
    //   477: fload #16
    //   479: f2d
    //   480: invokestatic atan2 : (DD)D
    //   483: ldc2_w 1.5707963267948966
    //   486: dsub
    //   487: d2f
    //   488: fstore #12
    //   490: fload #12
    //   492: f2d
    //   493: invokestatic cos : (D)D
    //   496: d2f
    //   497: fstore #14
    //   499: fload #12
    //   501: f2d
    //   502: invokestatic sin : (D)D
    //   505: d2f
    //   506: fstore #27
    //   508: fload #22
    //   510: f2d
    //   511: fload #21
    //   513: f2d
    //   514: invokestatic atan2 : (DD)D
    //   517: ldc2_w 1.5707963267948966
    //   520: dsub
    //   521: d2f
    //   522: fstore #12
    //   524: fload #12
    //   526: f2d
    //   527: invokestatic cos : (D)D
    //   530: d2f
    //   531: fstore #25
    //   533: fload #12
    //   535: f2d
    //   536: invokestatic sin : (D)D
    //   539: d2f
    //   540: fstore #26
    //   542: iload #28
    //   544: ifeq -> 702
    //   547: fload #7
    //   549: fstore #12
    //   551: iload #28
    //   553: ifeq -> 709
    //   556: fload #8
    //   558: fstore #13
    //   560: iload #28
    //   562: ifeq -> 716
    //   565: fload #10
    //   567: fstore #18
    //   569: iload #28
    //   571: ifeq -> 723
    //   574: fload #9
    //   576: fstore #19
    //   578: fload #14
    //   580: fload #18
    //   582: fload #12
    //   584: fmul
    //   585: ldc 0.47829
    //   587: fmul
    //   588: fmul
    //   589: fstore #14
    //   591: fload #18
    //   593: fload #12
    //   595: fmul
    //   596: ldc 0.47829
    //   598: fmul
    //   599: fload #27
    //   601: fmul
    //   602: fstore #18
    //   604: fload #19
    //   606: fload #13
    //   608: fmul
    //   609: ldc 0.47829
    //   611: fmul
    //   612: fload #25
    //   614: fmul
    //   615: fstore #12
    //   617: fload #19
    //   619: fload #13
    //   621: fmul
    //   622: ldc 0.47829
    //   624: fmul
    //   625: fload #26
    //   627: fmul
    //   628: fstore #13
    //   630: fload #24
    //   632: fconst_0
    //   633: fcmpl
    //   634: ifeq -> 808
    //   637: iload #29
    //   639: ifne -> 730
    //   642: fload #18
    //   644: fload #24
    //   646: fmul
    //   647: fstore #18
    //   649: fload #14
    //   651: fload #24
    //   653: fmul
    //   654: fstore #19
    //   656: fload #13
    //   658: fstore #14
    //   660: fload #12
    //   662: fstore #13
    //   664: fload #19
    //   666: fstore #12
    //   668: aload_0
    //   669: getfield c : Landroid/graphics/Path;
    //   672: fload #16
    //   674: fload #12
    //   676: fsub
    //   677: fload #15
    //   679: fload #18
    //   681: fsub
    //   682: fload #13
    //   684: fload #21
    //   686: fadd
    //   687: fload #14
    //   689: fload #22
    //   691: fadd
    //   692: fload #21
    //   694: fload #22
    //   696: invokevirtual cubicTo : (FFFFFF)V
    //   699: goto -> 369
    //   702: fload #8
    //   704: fstore #12
    //   706: goto -> 551
    //   709: fload #7
    //   711: fstore #13
    //   713: goto -> 560
    //   716: fload #9
    //   718: fstore #18
    //   720: goto -> 569
    //   723: fload #10
    //   725: fstore #19
    //   727: goto -> 578
    //   730: iload #29
    //   732: i2d
    //   733: dload_3
    //   734: dconst_1
    //   735: dsub
    //   736: dcmpl
    //   737: ifne -> 808
    //   740: fload #13
    //   742: fload #24
    //   744: fmul
    //   745: fstore #19
    //   747: fload #12
    //   749: fload #24
    //   751: fmul
    //   752: fstore #13
    //   754: fload #14
    //   756: fstore #12
    //   758: fload #19
    //   760: fstore #14
    //   762: goto -> 668
    //   765: iconst_0
    //   766: istore #28
    //   768: goto -> 382
    //   771: aload_0
    //   772: getfield h : Layy;
    //   775: invokevirtual b : ()Ljava/lang/Object;
    //   778: checkcast android/graphics/PointF
    //   781: astore #30
    //   783: aload_0
    //   784: getfield c : Landroid/graphics/Path;
    //   787: aload #30
    //   789: getfield x : F
    //   792: aload #30
    //   794: getfield y : F
    //   797: invokevirtual offset : (FF)V
    //   800: aload_0
    //   801: getfield c : Landroid/graphics/Path;
    //   804: invokevirtual close : ()V
    //   807: return
    //   808: fload #13
    //   810: fstore #19
    //   812: fload #12
    //   814: fstore #13
    //   816: fload #14
    //   818: fstore #12
    //   820: fload #19
    //   822: fstore #14
    //   824: goto -> 668
    //   827: fload #20
    //   829: fstore #17
    //   831: goto -> 293
    //   834: fconst_0
    //   835: fstore #7
    //   837: goto -> 131
    //   840: goto -> 76
  }
  
  private void f() {
    int i = (int)Math.floor(((Float)this.g.b()).floatValue());
    if (this.i == null) {
      d1 = 0.0D;
    } else {
      d1 = ((Float)this.i.b()).floatValue();
    } 
    double d1 = Math.toRadians(d1 - 90.0D);
    float f3 = (float)(6.283185307179586D / i);
    float f4 = ((Float)this.m.b()).floatValue() / 100.0F;
    float f5 = ((Float)this.k.b()).floatValue();
    float f1 = (float)(f5 * Math.cos(d1));
    float f2 = (float)(f5 * Math.sin(d1));
    this.c.moveTo(f1, f2);
    double d3 = f3;
    double d2 = Math.ceil(i);
    i = 0;
    d1 += d3;
    while (i < d2) {
      float f7 = (float)(f5 * Math.cos(d1));
      float f6 = (float)(f5 * Math.sin(d1));
      if (f4 != 0.0F) {
        float f9 = (float)(Math.atan2(f2, f1) - 1.5707963267948966D);
        float f8 = (float)Math.cos(f9);
        f9 = (float)Math.sin(f9);
        float f11 = (float)(Math.atan2(f6, f7) - 1.5707963267948966D);
        float f10 = (float)Math.cos(f11);
        f11 = (float)Math.sin(f11);
        this.c.cubicTo(f1 - f8 * f5 * f4 * 0.25F, f2 - f5 * f4 * 0.25F * f9, f7 + f10 * f5 * f4 * 0.25F, f11 * f5 * f4 * 0.25F + f6, f7, f6);
      } else {
        this.c.lineTo(f7, f6);
      } 
      d3 = f3;
      i++;
      f1 = f7;
      d1 += d3;
      f2 = f6;
    } 
    PointF pointF = this.h.b();
    this.c.offset(pointF.x, pointF.y);
    this.c.close();
  }
  
  public void a() {
    c();
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList1.size(); i++) {
      aye aye = paramList1.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Simultaneously) {
        this.n = (ayw)aye;
        this.n.a(this);
      } 
    } 
  }
  
  public String b() {
    return this.d;
  }
  
  public Path e() {
    if (this.o)
      return this.c; 
    this.c.reset();
    switch (ayr.a[this.f.ordinal()]) {
      default:
        this.c.close();
        bey.a(this.c, this.n);
        this.o = true;
        return this.c;
      case 1:
        d();
      case 2:
        break;
    } 
    f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */