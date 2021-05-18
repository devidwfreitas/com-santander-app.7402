import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.data.Entry;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

public class cjx extends cka {
  protected cii a;
  
  protected Paint b;
  
  protected WeakReference<Bitmap> c;
  
  protected Canvas d;
  
  protected Bitmap.Config e = Bitmap.Config.ARGB_8888;
  
  protected Path l = new Path();
  
  protected Path m = new Path();
  
  protected Path n = new Path();
  
  private float[] o = new float[4];
  
  private HashMap<cio, cjz> p = new HashMap<cio, cjz>();
  
  private float[] q = new float[2];
  
  public cjx(cii paramcii, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramcii;
    this.b = new Paint(1);
    this.b.setStyle(Paint.Style.FILL);
    this.b.setColor(-1);
  }
  
  private void a(cip paramcip, int paramInt1, int paramInt2, Path paramPath) {
    boolean bool;
    Entry entry1 = null;
    float f1 = paramcip.W().a(paramcip, this.a);
    float f2 = this.g.a();
    if (paramcip.b() == cgv.STEPPED) {
      bool = true;
    } else {
      bool = false;
    } 
    paramPath.reset();
    Entry entry2 = paramcip.m(paramInt1);
    paramPath.moveTo(entry2.k(), f1);
    paramPath.lineTo(entry2.k(), entry2.c() * f2);
    paramInt1++;
    entry2 = null;
    while (paramInt1 <= paramInt2) {
      entry2 = paramcip.m(paramInt1);
      if (bool && entry1 != null)
        paramPath.lineTo(entry2.k(), entry1.c() * f2); 
      paramPath.lineTo(entry2.k(), entry2.c() * f2);
      paramInt1++;
      entry1 = entry2;
    } 
    if (entry2 != null)
      paramPath.lineTo(entry2.k(), f1); 
    paramPath.close();
  }
  
  public void a() {}
  
  public void a(Bitmap.Config paramConfig) {
    this.e = paramConfig;
    c();
  }
  
  public void a(Canvas paramCanvas) {
    int i = (int)this.s.o();
    int j = (int)this.s.n();
    if (this.c == null || ((Bitmap)this.c.get()).getWidth() != i || ((Bitmap)this.c.get()).getHeight() != j)
      if (i > 0 && j > 0) {
        this.c = new WeakReference<Bitmap>(Bitmap.createBitmap(i, j, this.e));
        this.d = new Canvas(this.c.get());
      } else {
        return;
      }  
    ((Bitmap)this.c.get()).eraseColor(0);
    for (cip cip : this.a.aL().i()) {
      if (cip.B())
        a(paramCanvas, cip); 
    } 
    paramCanvas.drawBitmap(this.c.get(), 0.0F, 0.0F, this.h);
  }
  
  protected void a(Canvas paramCanvas, cip paramcip) {
    if (paramcip.I() < 1)
      return; 
    this.h.setStrokeWidth(paramcip.aa());
    this.h.setPathEffect((PathEffect)paramcip.i());
    switch (cjy.a[paramcip.b().ordinal()]) {
      default:
        b(paramCanvas, paramcip);
        this.h.setPathEffect(null);
        return;
      case 3:
        b(paramcip);
        this.h.setPathEffect(null);
        return;
      case 4:
        break;
    } 
    a(paramcip);
    this.h.setPathEffect(null);
  }
  
  protected void a(Canvas paramCanvas, cip paramcip, Path paramPath, cle paramcle, cjo paramcjo) {
    float f = paramcip.W().a(paramcip, this.a);
    paramPath.lineTo(paramcip.m(paramcjo.a + paramcjo.c).k(), f);
    paramPath.lineTo(paramcip.m(paramcjo.a).k(), f);
    paramPath.close();
    paramcle.a(paramPath);
    Drawable drawable = paramcip.Y();
    if (drawable != null) {
      a(paramCanvas, paramPath, drawable);
      return;
    } 
    a(paramCanvas, paramPath, paramcip.X(), paramcip.Z());
  }
  
  protected void a(Canvas paramCanvas, cip paramcip, cle paramcle, cjo paramcjo) {
    Path path = this.n;
    int k = paramcjo.a;
    int i = paramcjo.c;
    int j = paramcjo.a + i;
    i = 0;
    while (true) {
      int i1 = k + i * 128;
      int n = i1 + 128;
      int m = n;
      if (n > j)
        m = j; 
      if (i1 <= m) {
        a(paramcip, i1, m, path);
        paramcle.a(path);
        Drawable drawable = paramcip.Y();
        if (drawable != null) {
          a(paramCanvas, path, drawable);
        } else {
          a(paramCanvas, path, paramcip.X(), paramcip.Z());
        } 
      } 
      i++;
      if (i1 > m)
        return; 
    } 
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    cgt cgt = this.a.aL();
    int j = paramArrayOfchv.length;
    for (int i = 0; i < j; i++) {
      chv chv1 = paramArrayOfchv[i];
      cip cip = cgt.a(chv1.f());
      if (cip != null && cip.q()) {
        Entry entry = cip.b(chv1.a(), chv1.b());
        if (a(entry, cip)) {
          ckz ckz = this.a.a(cip.C()).b(entry.k(), entry.c() * this.g.a());
          chv1.a((float)ckz.a, (float)ckz.b);
          a(paramCanvas, (float)ckz.a, (float)ckz.b, cip);
        } 
      } 
    } 
  }
  
  protected void a(cip paramcip) {
    float f = this.g.a();
    cle cle = this.a.a(paramcip.C());
    this.f.a(this.a, paramcip);
    this.l.reset();
    if (this.f.c >= 1) {
      Entry entry = paramcip.m(this.f.a);
      this.l.moveTo(entry.k(), entry.c() * f);
      int i = this.f.a + 1;
      while (i <= this.f.c + this.f.a) {
        Entry entry1 = paramcip.m(i);
        float f1 = entry.k();
        f1 = (entry1.k() - entry.k()) / 2.0F + f1;
        this.l.cubicTo(f1, entry.c() * f, f1, entry1.c() * f, entry1.k(), entry1.c() * f);
        i++;
        entry = entry1;
      } 
    } 
    if (paramcip.ab()) {
      this.m.reset();
      this.m.addPath(this.l);
      a(this.d, paramcip, this.m, cle, this.f);
    } 
    this.h.setColor(paramcip.n());
    this.h.setStyle(Paint.Style.STROKE);
    cle.a(this.l);
    this.d.drawPath(this.l, this.h);
    this.h.setPathEffect(null);
  }
  
  public Bitmap.Config b() {
    return this.e;
  }
  
  public void b(Canvas paramCanvas) {
    if (a(this.a)) {
      List<cip> list = this.a.aL().i();
      int i = 0;
      label25: while (i < list.size()) {
        cip cip = list.get(i);
        if (!a(cip))
          continue; 
        b(cip);
        cle cle = this.a.a(cip.C());
        int j = (int)(cip.d() * 1.75F);
        if (!cip.F())
          j /= 2; 
        this.f.a(this.a, cip);
        float[] arrayOfFloat = cle.a(cip, this.g.b(), this.g.a(), this.f.a, this.f.b);
        int k = 0;
        while (true) {
          if (k < arrayOfFloat.length) {
            float f1 = arrayOfFloat[k];
            float f2 = arrayOfFloat[k + 1];
            if (this.s.h(f1)) {
              if (this.s.g(f1) && this.s.f(f2)) {
                Entry entry = cip.m(k / 2 + this.f.a);
                a(paramCanvas, cip.r(), entry.c(), entry, i, f1, f2 - j, cip.i(k / 2));
              } 
              k += 2;
              continue;
            } 
          } 
          i++;
          continue label25;
        } 
      } 
    } 
  }
  
  protected void b(Canvas paramCanvas, cip paramcip) {
    // Byte code:
    //   0: aload_2
    //   1: invokeinterface I : ()I
    //   6: istore #5
    //   8: aload_2
    //   9: invokeinterface Q : ()Z
    //   14: istore #9
    //   16: iload #9
    //   18: ifeq -> 200
    //   21: iconst_4
    //   22: istore #4
    //   24: aload_0
    //   25: getfield a : Lcii;
    //   28: aload_2
    //   29: invokeinterface C : ()Lcgc;
    //   34: invokeinterface a : (Lcgc;)Lcle;
    //   39: astore #11
    //   41: aload_0
    //   42: getfield g : Lcdq;
    //   45: invokevirtual a : ()F
    //   48: fstore_3
    //   49: aload_0
    //   50: getfield h : Landroid/graphics/Paint;
    //   53: getstatic android/graphics/Paint$Style.STROKE : Landroid/graphics/Paint$Style;
    //   56: invokevirtual setStyle : (Landroid/graphics/Paint$Style;)V
    //   59: aload_2
    //   60: invokeinterface h : ()Z
    //   65: ifeq -> 206
    //   68: aload_0
    //   69: getfield d : Landroid/graphics/Canvas;
    //   72: astore #10
    //   74: aload_0
    //   75: getfield f : Lcjo;
    //   78: aload_0
    //   79: getfield a : Lcii;
    //   82: aload_2
    //   83: invokevirtual a : (Lcid;Lcil;)V
    //   86: aload_2
    //   87: invokeinterface ab : ()Z
    //   92: ifeq -> 112
    //   95: iload #5
    //   97: ifle -> 112
    //   100: aload_0
    //   101: aload_1
    //   102: aload_2
    //   103: aload #11
    //   105: aload_0
    //   106: getfield f : Lcjo;
    //   109: invokevirtual a : (Landroid/graphics/Canvas;Lcip;Lcle;Lcjo;)V
    //   112: aload_2
    //   113: invokeinterface l : ()Ljava/util/List;
    //   118: invokeinterface size : ()I
    //   123: iconst_1
    //   124: if_icmple -> 507
    //   127: aload_0
    //   128: getfield o : [F
    //   131: arraylength
    //   132: iload #4
    //   134: iconst_2
    //   135: imul
    //   136: if_icmpgt -> 149
    //   139: aload_0
    //   140: iload #4
    //   142: iconst_4
    //   143: imul
    //   144: newarray float
    //   146: putfield o : [F
    //   149: aload_0
    //   150: getfield f : Lcjo;
    //   153: getfield a : I
    //   156: istore #5
    //   158: iload #5
    //   160: aload_0
    //   161: getfield f : Lcjo;
    //   164: getfield c : I
    //   167: aload_0
    //   168: getfield f : Lcjo;
    //   171: getfield a : I
    //   174: iadd
    //   175: if_icmpgt -> 261
    //   178: aload_2
    //   179: iload #5
    //   181: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   186: astore_1
    //   187: aload_1
    //   188: ifnonnull -> 212
    //   191: iload #5
    //   193: iconst_1
    //   194: iadd
    //   195: istore #5
    //   197: goto -> 158
    //   200: iconst_2
    //   201: istore #4
    //   203: goto -> 24
    //   206: aload_1
    //   207: astore #10
    //   209: goto -> 74
    //   212: aload_0
    //   213: getfield o : [F
    //   216: iconst_0
    //   217: aload_1
    //   218: invokevirtual k : ()F
    //   221: fastore
    //   222: aload_0
    //   223: getfield o : [F
    //   226: iconst_1
    //   227: aload_1
    //   228: invokevirtual c : ()F
    //   231: fload_3
    //   232: fmul
    //   233: fastore
    //   234: iload #5
    //   236: aload_0
    //   237: getfield f : Lcjo;
    //   240: getfield b : I
    //   243: if_icmpge -> 480
    //   246: aload_2
    //   247: iload #5
    //   249: iconst_1
    //   250: iadd
    //   251: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   256: astore_1
    //   257: aload_1
    //   258: ifnonnull -> 271
    //   261: aload_0
    //   262: getfield h : Landroid/graphics/Paint;
    //   265: aconst_null
    //   266: invokevirtual setPathEffect : (Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    //   269: pop
    //   270: return
    //   271: iload #9
    //   273: ifeq -> 455
    //   276: aload_0
    //   277: getfield o : [F
    //   280: iconst_2
    //   281: aload_1
    //   282: invokevirtual k : ()F
    //   285: fastore
    //   286: aload_0
    //   287: getfield o : [F
    //   290: iconst_3
    //   291: aload_0
    //   292: getfield o : [F
    //   295: iconst_1
    //   296: faload
    //   297: fastore
    //   298: aload_0
    //   299: getfield o : [F
    //   302: iconst_4
    //   303: aload_0
    //   304: getfield o : [F
    //   307: iconst_2
    //   308: faload
    //   309: fastore
    //   310: aload_0
    //   311: getfield o : [F
    //   314: iconst_5
    //   315: aload_0
    //   316: getfield o : [F
    //   319: iconst_3
    //   320: faload
    //   321: fastore
    //   322: aload_0
    //   323: getfield o : [F
    //   326: bipush #6
    //   328: aload_1
    //   329: invokevirtual k : ()F
    //   332: fastore
    //   333: aload_0
    //   334: getfield o : [F
    //   337: bipush #7
    //   339: aload_1
    //   340: invokevirtual c : ()F
    //   343: fload_3
    //   344: fmul
    //   345: fastore
    //   346: aload #11
    //   348: aload_0
    //   349: getfield o : [F
    //   352: invokevirtual a : ([F)V
    //   355: aload_0
    //   356: getfield s : Lclh;
    //   359: aload_0
    //   360: getfield o : [F
    //   363: iconst_0
    //   364: faload
    //   365: invokevirtual h : (F)Z
    //   368: ifeq -> 261
    //   371: aload_0
    //   372: getfield s : Lclh;
    //   375: aload_0
    //   376: getfield o : [F
    //   379: iconst_2
    //   380: faload
    //   381: invokevirtual g : (F)Z
    //   384: ifeq -> 191
    //   387: aload_0
    //   388: getfield s : Lclh;
    //   391: aload_0
    //   392: getfield o : [F
    //   395: iconst_1
    //   396: faload
    //   397: invokevirtual i : (F)Z
    //   400: ifne -> 419
    //   403: aload_0
    //   404: getfield s : Lclh;
    //   407: aload_0
    //   408: getfield o : [F
    //   411: iconst_3
    //   412: faload
    //   413: invokevirtual j : (F)Z
    //   416: ifeq -> 191
    //   419: aload_0
    //   420: getfield h : Landroid/graphics/Paint;
    //   423: aload_2
    //   424: iload #5
    //   426: invokeinterface e : (I)I
    //   431: invokevirtual setColor : (I)V
    //   434: aload #10
    //   436: aload_0
    //   437: getfield o : [F
    //   440: iconst_0
    //   441: iload #4
    //   443: iconst_2
    //   444: imul
    //   445: aload_0
    //   446: getfield h : Landroid/graphics/Paint;
    //   449: invokevirtual drawLines : ([FIILandroid/graphics/Paint;)V
    //   452: goto -> 191
    //   455: aload_0
    //   456: getfield o : [F
    //   459: iconst_2
    //   460: aload_1
    //   461: invokevirtual k : ()F
    //   464: fastore
    //   465: aload_0
    //   466: getfield o : [F
    //   469: iconst_3
    //   470: aload_1
    //   471: invokevirtual c : ()F
    //   474: fload_3
    //   475: fmul
    //   476: fastore
    //   477: goto -> 346
    //   480: aload_0
    //   481: getfield o : [F
    //   484: iconst_2
    //   485: aload_0
    //   486: getfield o : [F
    //   489: iconst_0
    //   490: faload
    //   491: fastore
    //   492: aload_0
    //   493: getfield o : [F
    //   496: iconst_3
    //   497: aload_0
    //   498: getfield o : [F
    //   501: iconst_1
    //   502: faload
    //   503: fastore
    //   504: goto -> 346
    //   507: aload_0
    //   508: getfield o : [F
    //   511: arraylength
    //   512: iload #5
    //   514: iload #4
    //   516: imul
    //   517: iload #4
    //   519: invokestatic max : (II)I
    //   522: iconst_2
    //   523: imul
    //   524: if_icmpge -> 545
    //   527: aload_0
    //   528: iload #5
    //   530: iload #4
    //   532: imul
    //   533: iload #4
    //   535: invokestatic max : (II)I
    //   538: iconst_4
    //   539: imul
    //   540: newarray float
    //   542: putfield o : [F
    //   545: aload_2
    //   546: aload_0
    //   547: getfield f : Lcjo;
    //   550: getfield a : I
    //   553: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   558: ifnull -> 261
    //   561: iconst_0
    //   562: istore #6
    //   564: aload_0
    //   565: getfield f : Lcjo;
    //   568: getfield a : I
    //   571: istore #5
    //   573: iload #5
    //   575: aload_0
    //   576: getfield f : Lcjo;
    //   579: getfield c : I
    //   582: aload_0
    //   583: getfield f : Lcjo;
    //   586: getfield a : I
    //   589: iadd
    //   590: if_icmpgt -> 851
    //   593: iload #5
    //   595: ifne -> 650
    //   598: iconst_0
    //   599: istore #7
    //   601: aload_2
    //   602: iload #7
    //   604: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   609: astore #12
    //   611: aload_2
    //   612: iload #5
    //   614: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   619: astore_1
    //   620: iload #6
    //   622: istore #7
    //   624: aload #12
    //   626: ifnull -> 637
    //   629: aload_1
    //   630: ifnonnull -> 659
    //   633: iload #6
    //   635: istore #7
    //   637: iload #5
    //   639: iconst_1
    //   640: iadd
    //   641: istore #5
    //   643: iload #7
    //   645: istore #6
    //   647: goto -> 573
    //   650: iload #5
    //   652: iconst_1
    //   653: isub
    //   654: istore #7
    //   656: goto -> 601
    //   659: aload_0
    //   660: getfield o : [F
    //   663: astore #13
    //   665: iload #6
    //   667: iconst_1
    //   668: iadd
    //   669: istore #8
    //   671: aload #13
    //   673: iload #6
    //   675: aload #12
    //   677: invokevirtual k : ()F
    //   680: fastore
    //   681: aload_0
    //   682: getfield o : [F
    //   685: astore #13
    //   687: iload #8
    //   689: iconst_1
    //   690: iadd
    //   691: istore #7
    //   693: aload #13
    //   695: iload #8
    //   697: aload #12
    //   699: invokevirtual c : ()F
    //   702: fload_3
    //   703: fmul
    //   704: fastore
    //   705: iload #7
    //   707: istore #6
    //   709: iload #9
    //   711: ifeq -> 804
    //   714: aload_0
    //   715: getfield o : [F
    //   718: astore #13
    //   720: iload #7
    //   722: iconst_1
    //   723: iadd
    //   724: istore #6
    //   726: aload #13
    //   728: iload #7
    //   730: aload_1
    //   731: invokevirtual k : ()F
    //   734: fastore
    //   735: aload_0
    //   736: getfield o : [F
    //   739: astore #13
    //   741: iload #6
    //   743: iconst_1
    //   744: iadd
    //   745: istore #7
    //   747: aload #13
    //   749: iload #6
    //   751: aload #12
    //   753: invokevirtual c : ()F
    //   756: fload_3
    //   757: fmul
    //   758: fastore
    //   759: aload_0
    //   760: getfield o : [F
    //   763: astore #13
    //   765: iload #7
    //   767: iconst_1
    //   768: iadd
    //   769: istore #8
    //   771: aload #13
    //   773: iload #7
    //   775: aload_1
    //   776: invokevirtual k : ()F
    //   779: fastore
    //   780: aload_0
    //   781: getfield o : [F
    //   784: astore #13
    //   786: iload #8
    //   788: iconst_1
    //   789: iadd
    //   790: istore #6
    //   792: aload #13
    //   794: iload #8
    //   796: aload #12
    //   798: invokevirtual c : ()F
    //   801: fload_3
    //   802: fmul
    //   803: fastore
    //   804: aload_0
    //   805: getfield o : [F
    //   808: astore #12
    //   810: iload #6
    //   812: iconst_1
    //   813: iadd
    //   814: istore #8
    //   816: aload #12
    //   818: iload #6
    //   820: aload_1
    //   821: invokevirtual k : ()F
    //   824: fastore
    //   825: aload_0
    //   826: getfield o : [F
    //   829: astore #12
    //   831: iload #8
    //   833: iconst_1
    //   834: iadd
    //   835: istore #7
    //   837: aload #12
    //   839: iload #8
    //   841: aload_1
    //   842: invokevirtual c : ()F
    //   845: fload_3
    //   846: fmul
    //   847: fastore
    //   848: goto -> 637
    //   851: iload #6
    //   853: ifle -> 261
    //   856: aload #11
    //   858: aload_0
    //   859: getfield o : [F
    //   862: invokevirtual a : ([F)V
    //   865: aload_0
    //   866: getfield f : Lcjo;
    //   869: getfield c : I
    //   872: iconst_1
    //   873: iadd
    //   874: iload #4
    //   876: imul
    //   877: iload #4
    //   879: invokestatic max : (II)I
    //   882: istore #4
    //   884: aload_0
    //   885: getfield h : Landroid/graphics/Paint;
    //   888: aload_2
    //   889: invokeinterface n : ()I
    //   894: invokevirtual setColor : (I)V
    //   897: aload #10
    //   899: aload_0
    //   900: getfield o : [F
    //   903: iconst_0
    //   904: iload #4
    //   906: iconst_2
    //   907: imul
    //   908: aload_0
    //   909: getfield h : Landroid/graphics/Paint;
    //   912: invokevirtual drawLines : ([FIILandroid/graphics/Paint;)V
    //   915: goto -> 261
  }
  
  protected void b(cip paramcip) {
    Math.max(0.0F, Math.min(1.0F, this.g.b()));
    float f1 = this.g.a();
    cle cle = this.a.a(paramcip.C());
    this.f.a(this.a, paramcip);
    float f2 = paramcip.c();
    this.l.reset();
    if (this.f.c >= 1) {
      int i = this.f.a + 1;
      int j = this.f.a;
      j = this.f.c;
      Entry entry3 = paramcip.m(Math.max(i - 2, 0));
      Entry entry1 = paramcip.m(Math.max(i - 1, 0));
      if (entry1 == null)
        return; 
      this.l.moveTo(entry1.k(), entry1.c() * f1);
      i = this.f.a + 1;
      j = -1;
      Entry entry2 = entry1;
      while (i <= this.f.c + this.f.a) {
        if (j != i)
          entry2 = paramcip.m(i); 
        if (i + 1 < paramcip.I()) {
          j = i + 1;
        } else {
          j = i;
        } 
        Entry entry = paramcip.m(j);
        float f3 = entry2.k();
        float f4 = entry3.k();
        float f5 = entry2.c();
        float f6 = entry3.c();
        float f7 = entry.k();
        float f8 = entry1.k();
        float f9 = entry.c();
        float f10 = entry1.c();
        this.l.cubicTo((f3 - f4) * f2 + entry1.k(), ((f5 - f6) * f2 + entry1.c()) * f1, entry2.k() - (f7 - f8) * f2, (entry2.c() - (f9 - f10) * f2) * f1, entry2.k(), entry2.c() * f1);
        i++;
        entry3 = entry;
        entry = entry2;
        entry2 = entry3;
        entry3 = entry1;
        entry1 = entry;
      } 
    } 
    if (paramcip.ab()) {
      this.m.reset();
      this.m.addPath(this.l);
      a(this.d, paramcip, this.m, cle, this.f);
    } 
    this.h.setColor(paramcip.n());
    this.h.setStyle(Paint.Style.STROKE);
    cle.a(this.l);
    this.d.drawPath(this.l, this.h);
    this.h.setPathEffect(null);
  }
  
  public void c() {
    if (this.d != null) {
      this.d.setBitmap(null);
      this.d = null;
    } 
    if (this.c != null) {
      ((Bitmap)this.c.get()).recycle();
      this.c.clear();
      this.c = null;
    } 
  }
  
  public void c(Canvas paramCanvas) {
    d(paramCanvas);
  }
  
  protected void d(Canvas paramCanvas) {
    this.h.setStyle(Paint.Style.FILL);
    float f = this.g.a();
    this.q[0] = 0.0F;
    this.q[1] = 0.0F;
    List<cip> list = this.a.aL().i();
    int i = 0;
    label44: while (i < list.size()) {
      cip cip = list.get(i);
      if (cip.B()) {
        if (cip.F()) {
          boolean bool1;
          boolean bool2;
          cjz cjz;
          if (cip.I() == 0)
            continue; 
          this.b.setColor(cip.U());
          cle cle = this.a.a(cip.C());
          this.f.a(this.a, cip);
          float f1 = cip.d();
          float f2 = cip.e();
          if (cip.V() && f2 < f1 && f2 > 0.0F) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          if (bool1 && cip.U() == 1122867) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          if (this.p.containsKey(cip)) {
            cjz = this.p.get(cip);
          } else {
            cjz = new cjz(this, null);
            this.p.put(cip, cjz);
          } 
          if (cjz.a(cip))
            cjz.a(cip, bool1, bool2); 
          int k = this.f.c;
          int m = this.f.a;
          int j = this.f.a;
          while (true) {
            if (j <= m + k) {
              Entry entry = cip.m(j);
              if (entry != null) {
                this.q[0] = entry.k();
                this.q[1] = entry.c() * f;
                cle.a(this.q);
                if (this.s.h(this.q[0])) {
                  if (this.s.g(this.q[0]) && this.s.f(this.q[1])) {
                    Bitmap bitmap = cjz.a(j);
                    if (bitmap != null)
                      paramCanvas.drawBitmap(bitmap, this.q[0] - f1, this.q[1] - f1, this.h); 
                  } 
                  j++;
                  continue;
                } 
              } 
            } 
            i++;
            continue label44;
          } 
        } 
        continue;
      } 
      continue;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */