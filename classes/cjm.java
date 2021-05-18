import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cjm extends cjn {
  protected cic a;
  
  protected RectF b = new RectF();
  
  protected cez[] c;
  
  protected Paint d;
  
  protected Paint e;
  
  private RectF l = new RectF();
  
  public cjm(cic paramcic, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramcic;
    this.i = new Paint(1);
    this.i.setStyle(Paint.Style.FILL);
    this.i.setColor(Color.rgb(0, 0, 0));
    this.i.setAlpha(120);
    this.d = new Paint(1);
    this.d.setStyle(Paint.Style.FILL);
    this.e = new Paint(1);
    this.e.setStyle(Paint.Style.STROKE);
  }
  
  public void a() {
    cge cge = this.a.f();
    this.c = new cez[cge.d()];
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
      arrayOfCez[i] = new cez(b * j * 4, cge.d(), cik.c());
    } 
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, cle paramcle) {
    this.b.set(paramFloat1 - paramFloat4, paramFloat2, paramFloat1 + paramFloat4, paramFloat3);
    paramcle.a(this.b, this.g.a());
  }
  
  public void a(Canvas paramCanvas) {
    cge cge = this.a.f();
    for (int i = 0; i < cge.d(); i++) {
      cik cik = cge.a(i);
      if (cik.B())
        a(paramCanvas, cik, i); 
    } 
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
    //   180: putfield left : F
    //   183: aload_0
    //   184: getfield l : Landroid/graphics/RectF;
    //   187: fload #7
    //   189: fload #6
    //   191: fadd
    //   192: putfield right : F
    //   195: aload #11
    //   197: aload_0
    //   198: getfield l : Landroid/graphics/RectF;
    //   201: invokevirtual a : (Landroid/graphics/RectF;)V
    //   204: aload_0
    //   205: getfield s : Lclh;
    //   208: aload_0
    //   209: getfield l : Landroid/graphics/RectF;
    //   212: getfield right : F
    //   215: invokevirtual g : (F)Z
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
    //   244: getfield left : F
    //   247: invokevirtual h : (F)Z
    //   250: ifne -> 405
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
    //   341: if_icmpne -> 448
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
    //   373: if_icmpge -> 471
    //   376: aload_0
    //   377: getfield s : Lclh;
    //   380: aload #12
    //   382: getfield b : [F
    //   385: iload #9
    //   387: iconst_2
    //   388: iadd
    //   389: faload
    //   390: invokevirtual g : (F)Z
    //   393: ifne -> 453
    //   396: iload #9
    //   398: iconst_4
    //   399: iadd
    //   400: istore #9
    //   402: goto -> 366
    //   405: aload_0
    //   406: getfield l : Landroid/graphics/RectF;
    //   409: aload_0
    //   410: getfield s : Lclh;
    //   413: invokevirtual f : ()F
    //   416: putfield top : F
    //   419: aload_0
    //   420: getfield l : Landroid/graphics/RectF;
    //   423: aload_0
    //   424: getfield s : Lclh;
    //   427: invokevirtual i : ()F
    //   430: putfield bottom : F
    //   433: aload_1
    //   434: aload_0
    //   435: getfield l : Landroid/graphics/RectF;
    //   438: aload_0
    //   439: getfield d : Landroid/graphics/Paint;
    //   442: invokevirtual drawRect : (Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    //   445: goto -> 221
    //   448: iconst_0
    //   449: istore_3
    //   450: goto -> 346
    //   453: aload_0
    //   454: getfield s : Lclh;
    //   457: aload #12
    //   459: getfield b : [F
    //   462: iload #9
    //   464: faload
    //   465: invokevirtual h : (F)Z
    //   468: ifne -> 472
    //   471: return
    //   472: iload_3
    //   473: ifne -> 493
    //   476: aload_0
    //   477: getfield h : Landroid/graphics/Paint;
    //   480: aload_2
    //   481: iload #9
    //   483: iconst_4
    //   484: idiv
    //   485: invokeinterface e : (I)I
    //   490: invokevirtual setColor : (I)V
    //   493: aload_1
    //   494: aload #12
    //   496: getfield b : [F
    //   499: iload #9
    //   501: faload
    //   502: aload #12
    //   504: getfield b : [F
    //   507: iload #9
    //   509: iconst_1
    //   510: iadd
    //   511: faload
    //   512: aload #12
    //   514: getfield b : [F
    //   517: iload #9
    //   519: iconst_2
    //   520: iadd
    //   521: faload
    //   522: aload #12
    //   524: getfield b : [F
    //   527: iload #9
    //   529: iconst_3
    //   530: iadd
    //   531: faload
    //   532: aload_0
    //   533: getfield h : Landroid/graphics/Paint;
    //   536: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   539: iload #8
    //   541: ifeq -> 396
    //   544: aload_1
    //   545: aload #12
    //   547: getfield b : [F
    //   550: iload #9
    //   552: faload
    //   553: aload #12
    //   555: getfield b : [F
    //   558: iload #9
    //   560: iconst_1
    //   561: iadd
    //   562: faload
    //   563: aload #12
    //   565: getfield b : [F
    //   568: iload #9
    //   570: iconst_2
    //   571: iadd
    //   572: faload
    //   573: aload #12
    //   575: getfield b : [F
    //   578: iload #9
    //   580: iconst_3
    //   581: iadd
    //   582: faload
    //   583: aload_0
    //   584: getfield e : Landroid/graphics/Paint;
    //   587: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   590: goto -> 396
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    cge cge = this.a.f();
    int j = paramArrayOfchv.length;
    for (int i = 0; i < j; i++) {
      chv chv1 = paramArrayOfchv[i];
      cik cik = cge.a(chv1.f());
      if (cik != null && cik.q()) {
        BarEntry barEntry = cik.b(chv1.a(), chv1.b());
        if (a((Entry)barEntry, cik)) {
          float f1;
          float f2;
          boolean bool;
          cle cle = this.a.a(cik.C());
          this.i.setColor(cik.j());
          this.i.setAlpha(cik.h());
          if (chv1.g() >= 0 && barEntry.e()) {
            bool = true;
          } else {
            bool = false;
          } 
          if (bool) {
            if (this.a.e()) {
              f1 = barEntry.f();
              f2 = -barEntry.g();
            } else {
              cib cib = barEntry.d()[chv1.g()];
              f1 = cib.a;
              f2 = cib.b;
            } 
          } else {
            f1 = barEntry.c();
            f2 = 0.0F;
          } 
          a(barEntry.k(), f1, f2, cge.a() / 2.0F, cle);
          a(chv1, this.b);
          paramCanvas.drawRect(this.b, this.i);
        } 
      } 
    } 
  }
  
  protected void a(chv paramchv, RectF paramRectF) {
    paramchv.a(paramRectF.centerX(), paramRectF.top);
  }
  
  public void b(Canvas paramCanvas) {
    if (a(this.a)) {
      List<cik> list = this.a.f().i();
      float f = clg.a(4.5F);
      boolean bool = this.a.f_();
      int i = 0;
      label102: while (true) {
        if (i < this.a.f().d()) {
          float f1;
          float f2;
          cik cik = list.get(i);
          if (!a(cik))
            continue; 
          b(cik);
          boolean bool1 = this.a.d(cik.C());
          float f3 = clg.b(this.k, "8");
          if (bool) {
            f1 = -f;
          } else {
            f1 = f3 + f;
          } 
          if (bool) {
            f2 = f3 + f;
          } else {
            f2 = -f;
          } 
          if (bool1) {
            f1 = -f1;
            f2 = -f2 - f3;
            f3 = f1 - f3;
          } else {
            f3 = f1;
          } 
          cez cez1 = this.c[i];
          float f4 = this.g.a();
          if (!cik.c()) {
            int m = 0;
            while (true) {
              if (m < cez1.b.length * this.g.b()) {
                float f5 = (cez1.b[m] + cez1.b[m + 2]) / 2.0F;
                if (this.s.h(f5)) {
                  if (this.s.f(cez1.b[m + 1]) && this.s.g(f5)) {
                    BarEntry barEntry = cik.m(m / 4);
                    float f6 = barEntry.c();
                    chn chn = cik.r();
                    if (f6 >= 0.0F) {
                      f1 = cez1.b[m + 1] + f3;
                    } else {
                      f1 = cez1.b[m + 3] + f2;
                    } 
                    a(paramCanvas, chn, f6, (Entry)barEntry, i, f5, f1, cik.i(m / 4));
                  } 
                  m += 4;
                  continue;
                } 
              } 
              i++;
              continue label102;
            } 
            break;
          } 
          cle cle = this.a.a(cik.C());
          int k = 0;
          int j = 0;
          label100: while (true) {
            if (k < cik.I() * this.g.b()) {
              BarEntry barEntry = cik.m(k);
              float[] arrayOfFloat = barEntry.b();
              float f5 = (cez1.b[j] + cez1.b[j + 2]) / 2.0F;
              int m = cik.i(k);
              if (arrayOfFloat == null) {
                if (this.s.h(f5)) {
                  if (this.s.f(cez1.b[j + 1]) && this.s.g(f5)) {
                    chn chn = cik.r();
                    float f6 = barEntry.c();
                    float f7 = cez1.b[j + 1];
                    if (barEntry.c() >= 0.0F) {
                      f1 = f3;
                    } else {
                      f1 = f2;
                    } 
                    a(paramCanvas, chn, f6, (Entry)barEntry, i, f5, f7 + f1, m);
                    continue;
                  } 
                  continue;
                } 
              } else {
                float[] arrayOfFloat1 = new float[arrayOfFloat.length * 2];
                f1 = -barEntry.g();
                int i1 = 0;
                int n = 0;
                float f6;
                for (f6 = 0.0F; i1 < arrayOfFloat1.length; f6 = f7) {
                  float f7 = arrayOfFloat[n];
                  if (f7 == 0.0F && (f6 == 0.0F || f1 == 0.0F)) {
                    float f8 = f1;
                    f1 = f7;
                    f7 = f6;
                    f6 = f8;
                  } else if (f7 >= 0.0F) {
                    float f8 = f7 + f6;
                    f7 = f8;
                    f6 = f1;
                    f1 = f8;
                  } else {
                    float f8 = f1 - f7;
                    f7 = f6;
                    f6 = f8;
                  } 
                  arrayOfFloat1[i1 + 1] = f1 * f4;
                  i1 += 2;
                  n++;
                  f1 = f6;
                } 
                cle.a(arrayOfFloat1);
                n = 0;
                while (true) {
                  if (n < arrayOfFloat1.length) {
                    float f7 = arrayOfFloat[n / 2];
                    if ((f7 == 0.0F && f1 == 0.0F && f6 > 0.0F) || f7 < 0.0F) {
                      i1 = 1;
                    } else {
                      i1 = 0;
                    } 
                    float f8 = arrayOfFloat1[n + 1];
                    if (i1 != 0) {
                      f7 = f2;
                    } else {
                      f7 = f3;
                    } 
                    f7 = f8 + f7;
                    if (this.s.h(f5)) {
                      if (this.s.f(f7) && this.s.g(f5))
                        a(paramCanvas, cik.r(), arrayOfFloat[n / 2], (Entry)barEntry, i, f5, f7, m); 
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
                  continue label100;
                } 
                break;
              } 
            } 
            i++;
            continue label102;
          } 
          break;
        } 
        return;
      } 
    } 
  }
  
  public void c(Canvas paramCanvas) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */