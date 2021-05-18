import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cju extends cjm {
  private RectF l = new RectF();
  
  public cju(cic paramcic, cdq paramcdq, clh paramclh) {
    super(paramcic, paramcdq, paramclh);
    this.k.setTextAlign(Paint.Align.LEFT);
  }
  
  public void a() {
    cge cge = this.a.f();
    this.c = (cez[])new cfa[cge.d()];
    for (int i = 0; i < this.c.length; i++) {
      byte b;
      cik cik = cge.a(i);
      cez[] arrayOfCez = this.c;
      int j = cik.I();
      if (cik.c()) {
        b = cik.b();
      } else {
        b = 1;
      } 
      arrayOfCez[i] = new cfa(b * j * 4, cge.d(), cik.c());
    } 
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, cle paramcle) {
    this.b.set(paramFloat2, paramFloat1 - paramFloat4, paramFloat3, paramFloat1 + paramFloat4);
    paramcle.b(this.b, this.g.a());
  }
  
  protected void a(Canvas paramCanvas, cik paramcik, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcic;
    //   4: aload_2
    //   5: invokeinterface C : ()Lcgc;
    //   10: invokeinterface a : (Lcgc;)Lcle;
    //   15: astore #11
    //   17: aload_0
    //   18: getfield e : Landroid/graphics/Paint;
    //   21: aload_2
    //   22: invokeinterface g : ()I
    //   27: invokevirtual setColor : (I)V
    //   30: aload_0
    //   31: getfield e : Landroid/graphics/Paint;
    //   34: aload_2
    //   35: invokeinterface f : ()F
    //   40: invokestatic a : (F)F
    //   43: invokevirtual setStrokeWidth : (F)V
    //   46: aload_2
    //   47: invokeinterface f : ()F
    //   52: fconst_0
    //   53: fcmpl
    //   54: ifle -> 230
    //   57: iconst_1
    //   58: istore #8
    //   60: aload_0
    //   61: getfield g : Lcdq;
    //   64: invokevirtual b : ()F
    //   67: fstore #4
    //   69: aload_0
    //   70: getfield g : Lcdq;
    //   73: invokevirtual a : ()F
    //   76: fstore #5
    //   78: aload_0
    //   79: getfield a : Lcic;
    //   82: invokeinterface d : ()Z
    //   87: ifeq -> 253
    //   90: aload_0
    //   91: getfield d : Landroid/graphics/Paint;
    //   94: aload_2
    //   95: invokeinterface e : ()I
    //   100: invokevirtual setColor : (I)V
    //   103: aload_0
    //   104: getfield a : Lcic;
    //   107: invokeinterface f : ()Lcge;
    //   112: invokevirtual a : ()F
    //   115: fconst_2
    //   116: fdiv
    //   117: fstore #6
    //   119: aload_2
    //   120: invokeinterface I : ()I
    //   125: i2f
    //   126: fload #4
    //   128: fmul
    //   129: f2d
    //   130: invokestatic ceil : (D)D
    //   133: d2i
    //   134: aload_2
    //   135: invokeinterface I : ()I
    //   140: invokestatic min : (II)I
    //   143: istore #10
    //   145: iconst_0
    //   146: istore #9
    //   148: iload #9
    //   150: iload #10
    //   152: if_icmpge -> 253
    //   155: aload_2
    //   156: iload #9
    //   158: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   163: checkcast com/github/mikephil/charting/data/BarEntry
    //   166: invokevirtual k : ()F
    //   169: fstore #7
    //   171: aload_0
    //   172: getfield l : Landroid/graphics/RectF;
    //   175: fload #7
    //   177: fload #6
    //   179: fsub
    //   180: putfield top : F
    //   183: aload_0
    //   184: getfield l : Landroid/graphics/RectF;
    //   187: fload #7
    //   189: fload #6
    //   191: fadd
    //   192: putfield bottom : F
    //   195: aload #11
    //   197: aload_0
    //   198: getfield l : Landroid/graphics/RectF;
    //   201: invokevirtual a : (Landroid/graphics/RectF;)V
    //   204: aload_0
    //   205: getfield s : Lclh;
    //   208: aload_0
    //   209: getfield l : Landroid/graphics/RectF;
    //   212: getfield bottom : F
    //   215: invokevirtual i : (F)Z
    //   218: ifne -> 236
    //   221: iload #9
    //   223: iconst_1
    //   224: iadd
    //   225: istore #9
    //   227: goto -> 148
    //   230: iconst_0
    //   231: istore #8
    //   233: goto -> 60
    //   236: aload_0
    //   237: getfield s : Lclh;
    //   240: aload_0
    //   241: getfield l : Landroid/graphics/RectF;
    //   244: getfield top : F
    //   247: invokevirtual j : (F)Z
    //   250: ifne -> 397
    //   253: aload_0
    //   254: getfield c : [Lcez;
    //   257: iload_3
    //   258: aaload
    //   259: astore #12
    //   261: aload #12
    //   263: fload #4
    //   265: fload #5
    //   267: invokevirtual a : (FF)V
    //   270: aload #12
    //   272: iload_3
    //   273: invokevirtual c : (I)V
    //   276: aload #12
    //   278: aload_0
    //   279: getfield a : Lcic;
    //   282: aload_2
    //   283: invokeinterface C : ()Lcgc;
    //   288: invokeinterface d : (Lcgc;)Z
    //   293: invokevirtual a : (Z)V
    //   296: aload #12
    //   298: aload_0
    //   299: getfield a : Lcic;
    //   302: invokeinterface f : ()Lcge;
    //   307: invokevirtual a : ()F
    //   310: invokevirtual a : (F)V
    //   313: aload #12
    //   315: aload_2
    //   316: invokevirtual a : (Lcik;)V
    //   319: aload #11
    //   321: aload #12
    //   323: getfield b : [F
    //   326: invokevirtual a : ([F)V
    //   329: aload_2
    //   330: invokeinterface l : ()Ljava/util/List;
    //   335: invokeinterface size : ()I
    //   340: iconst_1
    //   341: if_icmpne -> 440
    //   344: iconst_1
    //   345: istore_3
    //   346: iload_3
    //   347: ifeq -> 363
    //   350: aload_0
    //   351: getfield h : Landroid/graphics/Paint;
    //   354: aload_2
    //   355: invokeinterface n : ()I
    //   360: invokevirtual setColor : (I)V
    //   363: iconst_0
    //   364: istore #9
    //   366: iload #9
    //   368: aload #12
    //   370: invokevirtual b : ()I
    //   373: if_icmpge -> 396
    //   376: aload_0
    //   377: getfield s : Lclh;
    //   380: aload #12
    //   382: getfield b : [F
    //   385: iload #9
    //   387: iconst_3
    //   388: iadd
    //   389: faload
    //   390: invokevirtual i : (F)Z
    //   393: ifne -> 445
    //   396: return
    //   397: aload_0
    //   398: getfield l : Landroid/graphics/RectF;
    //   401: aload_0
    //   402: getfield s : Lclh;
    //   405: invokevirtual g : ()F
    //   408: putfield left : F
    //   411: aload_0
    //   412: getfield l : Landroid/graphics/RectF;
    //   415: aload_0
    //   416: getfield s : Lclh;
    //   419: invokevirtual h : ()F
    //   422: putfield right : F
    //   425: aload_1
    //   426: aload_0
    //   427: getfield l : Landroid/graphics/RectF;
    //   430: aload_0
    //   431: getfield d : Landroid/graphics/Paint;
    //   434: invokevirtual drawRect : (Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    //   437: goto -> 221
    //   440: iconst_0
    //   441: istore_3
    //   442: goto -> 346
    //   445: aload_0
    //   446: getfield s : Lclh;
    //   449: aload #12
    //   451: getfield b : [F
    //   454: iload #9
    //   456: iconst_1
    //   457: iadd
    //   458: faload
    //   459: invokevirtual j : (F)Z
    //   462: ifne -> 474
    //   465: iload #9
    //   467: iconst_4
    //   468: iadd
    //   469: istore #9
    //   471: goto -> 366
    //   474: iload_3
    //   475: ifne -> 495
    //   478: aload_0
    //   479: getfield h : Landroid/graphics/Paint;
    //   482: aload_2
    //   483: iload #9
    //   485: iconst_4
    //   486: idiv
    //   487: invokeinterface e : (I)I
    //   492: invokevirtual setColor : (I)V
    //   495: aload_1
    //   496: aload #12
    //   498: getfield b : [F
    //   501: iload #9
    //   503: faload
    //   504: aload #12
    //   506: getfield b : [F
    //   509: iload #9
    //   511: iconst_1
    //   512: iadd
    //   513: faload
    //   514: aload #12
    //   516: getfield b : [F
    //   519: iload #9
    //   521: iconst_2
    //   522: iadd
    //   523: faload
    //   524: aload #12
    //   526: getfield b : [F
    //   529: iload #9
    //   531: iconst_3
    //   532: iadd
    //   533: faload
    //   534: aload_0
    //   535: getfield h : Landroid/graphics/Paint;
    //   538: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   541: iload #8
    //   543: ifeq -> 465
    //   546: aload_1
    //   547: aload #12
    //   549: getfield b : [F
    //   552: iload #9
    //   554: faload
    //   555: aload #12
    //   557: getfield b : [F
    //   560: iload #9
    //   562: iconst_1
    //   563: iadd
    //   564: faload
    //   565: aload #12
    //   567: getfield b : [F
    //   570: iload #9
    //   572: iconst_2
    //   573: iadd
    //   574: faload
    //   575: aload #12
    //   577: getfield b : [F
    //   580: iload #9
    //   582: iconst_3
    //   583: iadd
    //   584: faload
    //   585: aload_0
    //   586: getfield e : Landroid/graphics/Paint;
    //   589: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   592: goto -> 465
  }
  
  protected void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, int paramInt) {
    this.k.setColor(paramInt);
    paramCanvas.drawText(paramString, paramFloat1, paramFloat2, this.k);
  }
  
  protected void a(chv paramchv, RectF paramRectF) {
    paramchv.a(paramRectF.centerY(), paramRectF.right);
  }
  
  protected boolean a(cig paramcig) {
    return (paramcig.aC().n() < paramcig.s() * this.s.t());
  }
  
  public void b(Canvas paramCanvas) {
    if (a(this.a)) {
      List<cik> list = this.a.f().i();
      float f = clg.a(5.0F);
      boolean bool = this.a.f_();
      int i = 0;
      label121: while (i < this.a.f().d()) {
        cik cik = list.get(i);
        if (!a(cik))
          continue; 
        boolean bool1 = this.a.d(cik.C());
        b(cik);
        float f1 = clg.b(this.k, "10") / 2.0F;
        chn chn = cik.r();
        cez cez = this.c[i];
        float f2 = this.g.a();
        if (!cik.c()) {
          int m = 0;
          while (true) {
            if (m < cez.b.length * this.g.b()) {
              float f3 = (cez.b[m + 1] + cez.b[m + 3]) / 2.0F;
              if (this.s.i(cez.b[m + 1])) {
                if (this.s.e(cez.b[m]) && this.s.j(cez.b[m + 1])) {
                  float f6;
                  BarEntry barEntry = cik.m(m / 4);
                  float f8 = barEntry.c();
                  String str = chn.a(f8, (Entry)barEntry, i, this.s);
                  f2 = clg.a(this.k, str);
                  if (bool) {
                    f4 = f;
                  } else {
                    f4 = -(f2 + f);
                  } 
                  if (bool) {
                    f6 = -(f2 + f);
                  } else {
                    f6 = f;
                  } 
                  float f7 = f6;
                  float f5 = f4;
                  if (bool1) {
                    f5 = -f4 - f2;
                    f7 = -f6 - f2;
                  } 
                  float f4 = cez.b[m + 2];
                  if (f8 < 0.0F)
                    f5 = f7; 
                  a(paramCanvas, str, f4 + f5, f3 + f1, cik.i(m / 2));
                } 
                m += 4;
                continue;
              } 
            } 
            i++;
            continue label121;
          } 
        } 
        cle cle = this.a.a(cik.C());
        int k = 0;
        int j = 0;
        label119: while (true) {
          if (k < cik.I() * this.g.b()) {
            BarEntry barEntry = cik.m(k);
            int m = cik.i(k);
            float[] arrayOfFloat = barEntry.b();
            if (arrayOfFloat == null) {
              if (this.s.i(cez.b[j + 1])) {
                if (this.s.e(cez.b[j]) && this.s.j(cez.b[j + 1])) {
                  float f5;
                  String str = chn.a(barEntry.c(), (Entry)barEntry, i, this.s);
                  float f7 = clg.a(this.k, str);
                  if (bool) {
                    f3 = f;
                  } else {
                    f3 = -(f7 + f);
                  } 
                  if (bool) {
                    f5 = -(f7 + f);
                  } else {
                    f5 = f;
                  } 
                  float f6 = f5;
                  float f4 = f3;
                  if (bool1) {
                    f4 = -f3 - f7;
                    f6 = -f5 - f7;
                  } 
                  float f3 = cez.b[j + 2];
                  if (barEntry.c() < 0.0F)
                    f4 = f6; 
                  a(paramCanvas, str, f3 + f4, cez.b[j + 1] + f1, m);
                  continue;
                } 
                continue;
              } 
            } else {
              float[] arrayOfFloat1 = new float[arrayOfFloat.length * 2];
              float f3 = -barEntry.g();
              int i1 = 0;
              int n = 0;
              float f4;
              for (f4 = 0.0F; i1 < arrayOfFloat1.length; f4 = f5) {
                float f5 = arrayOfFloat[n];
                if (f5 == 0.0F && (f4 == 0.0F || f3 == 0.0F)) {
                  float f6 = f3;
                  f3 = f5;
                  f5 = f4;
                  f4 = f6;
                } else if (f5 >= 0.0F) {
                  float f6 = f5 + f4;
                  f5 = f6;
                  f4 = f3;
                  f3 = f6;
                } else {
                  float f6 = f3 - f5;
                  f5 = f4;
                  f4 = f6;
                } 
                arrayOfFloat1[i1] = f3 * f2;
                i1 += 2;
                n++;
                f3 = f4;
              } 
              cle.a(arrayOfFloat1);
              n = 0;
              while (true) {
                if (n < arrayOfFloat1.length) {
                  float f7;
                  float f9 = arrayOfFloat[n / 2];
                  String str = chn.a(f9, (Entry)barEntry, i, this.s);
                  float f10 = clg.a(this.k, str);
                  if (bool) {
                    f5 = f;
                  } else {
                    f5 = -(f10 + f);
                  } 
                  if (bool) {
                    f7 = -(f10 + f);
                  } else {
                    f7 = f;
                  } 
                  float f8 = f7;
                  float f6 = f5;
                  if (bool1) {
                    f6 = -f5 - f10;
                    f8 = -f7 - f10;
                  } 
                  if ((f9 == 0.0F && f3 == 0.0F && f4 > 0.0F) || f9 < 0.0F) {
                    i1 = 1;
                  } else {
                    i1 = 0;
                  } 
                  float f5 = arrayOfFloat1[n];
                  if (i1 == 0)
                    f8 = f6; 
                  f5 += f8;
                  f6 = (cez.b[j + 1] + cez.b[j + 3]) / 2.0F;
                  if (this.s.i(f6)) {
                    if (this.s.e(f5) && this.s.j(f6))
                      a(paramCanvas, str, f5, f6 + f1, m); 
                    n += 2;
                    continue;
                  } 
                } 
                if (arrayOfFloat == null) {
                  j += 4;
                } else {
                  j += arrayOfFloat.length * 4;
                } 
                k++;
                continue label119;
              } 
              break;
            } 
          } 
          i++;
          continue label121;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */