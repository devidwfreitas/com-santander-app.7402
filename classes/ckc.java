import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.github.mikephil.charting.charts.PieChart;
import java.lang.ref.WeakReference;

public class ckc extends cjt {
  static float e = 0.0F;
  
  static float f = 0.0F;
  
  static float l = 0.0F;
  
  static float m = 0.0F;
  
  static int p = 0;
  
  private RectF A = new RectF();
  
  private Path B = new Path();
  
  protected PieChart a;
  
  protected Paint b;
  
  protected Paint c;
  
  protected Paint d;
  
  protected WeakReference<Bitmap> n;
  
  protected Canvas o;
  
  protected Path q = new Path();
  
  protected RectF r = new RectF();
  
  private TextPaint t;
  
  private Paint u;
  
  private StaticLayout v;
  
  private CharSequence w;
  
  private RectF x = new RectF();
  
  private RectF[] y = new RectF[] { new RectF(), new RectF(), new RectF() };
  
  private Path z = new Path();
  
  public ckc(PieChart paramPieChart, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramPieChart;
    this.b = new Paint(1);
    this.b.setColor(-1);
    this.b.setStyle(Paint.Style.FILL);
    this.c = new Paint(1);
    this.c.setColor(-1);
    this.c.setStyle(Paint.Style.FILL);
    this.c.setAlpha(105);
    this.t = new TextPaint(1);
    this.t.setColor(-16777216);
    this.t.setTextSize(clg.a(12.0F));
    this.k.setTextSize(clg.a(13.0F));
    this.k.setColor(-1);
    this.k.setTextAlign(Paint.Align.CENTER);
    this.u = new Paint(1);
    this.u.setColor(-1);
    this.u.setTextAlign(Paint.Align.CENTER);
    this.u.setTextSize(clg.a(13.0F));
    this.d = new Paint(1);
    this.d.setStyle(Paint.Style.STROKE);
  }
  
  protected float a(cis paramcis) {
    return !paramcis.c() ? paramcis.b() : ((paramcis.b() / this.s.p() > paramcis.L() / ((cgy)this.a.aC()).p() * 2.0F) ? 0.0F : paramcis.b());
  }
  
  protected float a(cla paramcla, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6) {
    float f2 = paramFloat6 / 2.0F + paramFloat5;
    float f1 = paramcla.a + (float)Math.cos(((paramFloat5 + paramFloat6) * 0.017453292F)) * paramFloat1;
    paramFloat5 = paramcla.b + (float)Math.sin(((paramFloat5 + paramFloat6) * 0.017453292F)) * paramFloat1;
    paramFloat6 = paramcla.a;
    float f3 = (float)Math.cos((0.017453292F * f2));
    float f4 = paramcla.b;
    f2 = (float)Math.sin((f2 * 0.017453292F));
    double d1 = (paramFloat1 - (float)(Math.sqrt(Math.pow((f1 - paramFloat3), 2.0D) + Math.pow((paramFloat5 - paramFloat4), 2.0D)) / 2.0D * Math.tan((180.0D - paramFloat2) / 2.0D * 0.017453292519943295D)));
    double d2 = Math.pow((paramFloat6 + f3 * paramFloat1 - (f1 + paramFloat3) / 2.0F), 2.0D);
    return (float)(d1 - Math.sqrt(Math.pow((f2 * paramFloat1 + f4 - (paramFloat5 + paramFloat4) / 2.0F), 2.0D) + d2));
  }
  
  public void a() {}
  
  public void a(Canvas paramCanvas) {
    int i = (int)this.s.o();
    int j = (int)this.s.n();
    if (this.n == null || ((Bitmap)this.n.get()).getWidth() != i || ((Bitmap)this.n.get()).getHeight() != j)
      if (i > 0 && j > 0) {
        this.n = new WeakReference<Bitmap>(Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_4444));
        this.o = new Canvas(this.n.get());
      } else {
        return;
      }  
    ((Bitmap)this.n.get()).eraseColor(0);
    for (cis cis : ((cgy)this.a.aC()).i()) {
      if (cis.B() && cis.I() > 0)
        a(paramCanvas, cis); 
    } 
  }
  
  protected void a(Canvas paramCanvas, cis paramcis) {
    float f1;
    float f2;
    boolean bool;
    float f4 = this.a.z();
    float f5 = this.g.b();
    float f6 = this.g.a();
    RectF rectF = this.a.n();
    int k = paramcis.I();
    float[] arrayOfFloat = this.a.c();
    cla cla = this.a.o();
    float f7 = this.a.m();
    if (this.a.f() && !this.a.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      f1 = this.a.q() / 100.0F * f7;
    } else {
      f1 = 0.0F;
    } 
    int i = 0;
    int j;
    for (j = 0; j < k; j++) {
      if (Math.abs(paramcis.m(j).c()) > clg.d)
        i++; 
    } 
    if (i <= 1) {
      f2 = 0.0F;
    } else {
      f2 = a(paramcis);
    } 
    j = 0;
    float f3 = 0.0F;
    while (true) {
      if (j < k) {
        float f = arrayOfFloat[j];
        if (Math.abs(paramcis.m(j).c()) > clg.d && !this.a.d(j)) {
          boolean bool1;
          if (f2 > 0.0F && f <= 180.0F) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          this.h.setColor(paramcis.e(j));
          if (i == 1) {
            f8 = 0.0F;
          } else {
            f8 = f2 / 0.017453292F * f7;
          } 
          float f10 = f4 + (f8 / 2.0F + f3) * f6;
          float f9 = (f - f8) * f6;
          float f8 = f9;
          if (f9 < 0.0F)
            f8 = 0.0F; 
          this.z.reset();
          f9 = cla.a;
          float f11 = (float)Math.cos((0.017453292F * f10)) * f7 + f9;
          f9 = cla.b;
          float f12 = (float)Math.sin((0.017453292F * f10)) * f7 + f9;
          if (f8 >= 360.0F && f8 % 360.0F <= clg.d) {
            this.z.addCircle(cla.a, cla.b, f7, Path.Direction.CW);
          } else {
            this.z.moveTo(f11, f12);
            this.z.arcTo(rectF, f10, f8);
          } 
          this.A.set(cla.a - f1, cla.b - f1, cla.a + f1, cla.b + f1);
          if (bool && (f1 > 0.0F || bool1)) {
            if (bool1) {
              f10 = a(cla, f7, f * f6, f11, f12, f10, f8);
              f9 = f10;
              if (f10 < 0.0F)
                f9 = -f10; 
              f9 = Math.max(f1, f9);
            } else {
              f9 = f1;
            } 
            if (i == 1 || f9 == 0.0F) {
              f10 = 0.0F;
            } else {
              f10 = f2 / 0.017453292F * f9;
            } 
            f12 = f10 / 2.0F;
            f11 = (f - f10) * f6;
            f10 = f11;
            if (f11 < 0.0F)
              f10 = 0.0F; 
            f11 = (f12 + f3) * f6 + f4 + f10;
            if (f8 >= 360.0F && f8 % 360.0F <= clg.d) {
              this.z.addCircle(cla.a, cla.b, f9, Path.Direction.CCW);
            } else {
              Path path = this.z;
              f8 = cla.a;
              f12 = (float)Math.cos((0.017453292F * f11));
              float f13 = cla.b;
              path.lineTo(f8 + f12 * f9, f9 * (float)Math.sin((0.017453292F * f11)) + f13);
              this.z.arcTo(this.A, f11, -f10);
            } 
          } else if (f8 % 360.0F > clg.d) {
            if (bool1) {
              f9 = f10 + f8 / 2.0F;
              f8 = a(cla, f7, f * f6, f11, f12, f10, f8);
              f10 = cla.a;
              f11 = (float)Math.cos((0.017453292F * f9));
              f12 = cla.b;
              f9 = (float)Math.sin((0.017453292F * f9));
              this.z.lineTo(f10 + f11 * f8, f8 * f9 + f12);
            } else {
              this.z.lineTo(cla.a, cla.b);
            } 
          } 
          this.z.close();
          this.o.drawPath(this.z, this.h);
        } 
        j++;
        f3 += f * f5;
        continue;
      } 
      cla.a(cla);
      return;
    } 
  }
  
  protected void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2) {
    paramCanvas.drawText(paramString, paramFloat1, paramFloat2, this.u);
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    float f1;
    boolean bool;
    float f2 = this.g.b();
    float f3 = this.g.a();
    float f4 = this.a.z();
    float[] arrayOfFloat1 = this.a.c();
    float[] arrayOfFloat2 = this.a.d();
    cla cla = this.a.o();
    float f5 = this.a.m();
    if (this.a.f() && !this.a.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      f1 = this.a.q() / 100.0F * f5;
    } else {
      f1 = 0.0F;
    } 
    RectF rectF = this.r;
    rectF.set(0.0F, 0.0F, 0.0F, 0.0F);
    int i = 0;
    while (true) {
      if (i < paramArrayOfchv.length) {
        int j = (int)paramArrayOfchv[i].a();
        if (j < arrayOfFloat1.length) {
          cis cis = ((cgy)this.a.aC()).d(paramArrayOfchv[i].f());
          if (cis != null && cis.q()) {
            float f7;
            float f9;
            int n = cis.I();
            int k = 0;
            int m;
            for (m = 0; m < n; m++) {
              if (Math.abs(cis.m(m).c()) > clg.d)
                k++; 
            } 
            if (j == 0) {
              f7 = 0.0F;
            } else {
              f7 = arrayOfFloat2[j - 1] * f2;
            } 
            if (k <= 1) {
              f9 = 0.0F;
            } else {
              f9 = cis.b();
            } 
            float f11 = arrayOfFloat1[j];
            float f6 = cis.d();
            float f13 = f5 + f6;
            rectF.set(this.a.n());
            rectF.inset(-f6, -f6);
            if (f9 > 0.0F && f11 <= 180.0F) {
              m = 1;
            } else {
              m = 0;
            } 
            this.h.setColor(cis.e(j));
            if (k == 1) {
              f8 = 0.0F;
            } else {
              f8 = f9 / 0.017453292F * f5;
            } 
            if (k == 1) {
              f6 = 0.0F;
            } else {
              f6 = f9 / 0.017453292F * f13;
            } 
            float f12 = f4 + (f8 / 2.0F + f7) * f3;
            float f10 = (f11 - f8) * f3;
            float f8 = f10;
            if (f10 < 0.0F)
              f8 = 0.0F; 
            float f14 = (f6 / 2.0F + f7) * f3 + f4;
            f10 = (f11 - f6) * f3;
            f6 = f10;
            if (f10 < 0.0F)
              f6 = 0.0F; 
            this.z.reset();
            if (f8 >= 360.0F && f8 % 360.0F <= clg.d) {
              this.z.addCircle(cla.a, cla.b, f13, Path.Direction.CW);
            } else {
              Path path = this.z;
              f10 = cla.a;
              float f15 = (float)Math.cos((0.017453292F * f14));
              float f16 = cla.b;
              path.moveTo(f10 + f15 * f13, f13 * (float)Math.sin((0.017453292F * f14)) + f16);
              this.z.arcTo(rectF, f14, f6);
            } 
            f6 = 0.0F;
            if (m != 0) {
              f6 = cla.a;
              f10 = (float)Math.cos((0.017453292F * f12));
              f13 = cla.b;
              f6 = a(cla, f5, f11 * f3, f10 * f5 + f6, (float)Math.sin((0.017453292F * f12)) * f5 + f13, f12, f8);
            } 
            this.A.set(cla.a - f1, cla.b - f1, cla.a + f1, cla.b + f1);
            if (bool && (f1 > 0.0F || m != 0)) {
              if (m != 0) {
                f10 = f6;
                if (f6 < 0.0F)
                  f10 = -f6; 
                f6 = Math.max(f1, f10);
              } else {
                f6 = f1;
              } 
              if (k == 1 || f6 == 0.0F) {
                f9 = 0.0F;
              } else {
                f9 /= 0.017453292F * f6;
              } 
              f12 = f9 / 2.0F;
              f10 = (f11 - f9) * f3;
              f9 = f10;
              if (f10 < 0.0F)
                f9 = 0.0F; 
              f7 = (f12 + f7) * f3 + f4 + f9;
              if (f8 >= 360.0F && f8 % 360.0F <= clg.d) {
                this.z.addCircle(cla.a, cla.b, f6, Path.Direction.CCW);
              } else {
                Path path = this.z;
                f8 = cla.a;
                f10 = (float)Math.cos((0.017453292F * f7));
                f11 = cla.b;
                path.lineTo(f8 + f10 * f6, f6 * (float)Math.sin((0.017453292F * f7)) + f11);
                this.z.arcTo(this.A, f7, -f9);
              } 
            } else if (f8 % 360.0F > clg.d) {
              if (m != 0) {
                f10 = f8 / 2.0F + f12;
                f7 = cla.a;
                f8 = (float)Math.cos((0.017453292F * f10));
                f9 = cla.b;
                f10 = (float)Math.sin((f10 * 0.017453292F));
                this.z.lineTo(f7 + f8 * f6, f6 * f10 + f9);
              } else {
                this.z.lineTo(cla.a, cla.b);
              } 
            } 
            this.z.close();
            this.o.drawPath(this.z, this.h);
          } 
        } 
        i++;
        continue;
      } 
      cla.a(cla);
      return;
    } 
  }
  
  public Paint b() {
    return this.b;
  }
  
  public void b(Canvas paramCanvas) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   4: invokevirtual o : ()Lcla;
    //   7: astore #26
    //   9: aload_0
    //   10: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   13: invokevirtual m : ()F
    //   16: fstore #5
    //   18: aload_0
    //   19: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   22: invokevirtual z : ()F
    //   25: fstore #6
    //   27: aload_0
    //   28: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   31: invokevirtual c : ()[F
    //   34: astore #27
    //   36: aload_0
    //   37: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   40: invokevirtual d : ()[F
    //   43: astore #28
    //   45: aload_0
    //   46: getfield g : Lcdq;
    //   49: invokevirtual b : ()F
    //   52: fstore #7
    //   54: aload_0
    //   55: getfield g : Lcdq;
    //   58: invokevirtual a : ()F
    //   61: fstore #8
    //   63: aload_0
    //   64: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   67: invokevirtual q : ()F
    //   70: ldc_w 100.0
    //   73: fdiv
    //   74: fstore #9
    //   76: fload #5
    //   78: ldc_w 10.0
    //   81: fdiv
    //   82: ldc_w 3.6
    //   85: fmul
    //   86: fstore_2
    //   87: aload_0
    //   88: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   91: invokevirtual f : ()Z
    //   94: ifeq -> 108
    //   97: fload #5
    //   99: fload #5
    //   101: fload #9
    //   103: fmul
    //   104: fsub
    //   105: fconst_2
    //   106: fdiv
    //   107: fstore_2
    //   108: fload #5
    //   110: fload_2
    //   111: fsub
    //   112: fstore #10
    //   114: aload_0
    //   115: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   118: invokevirtual aC : ()Lcgo;
    //   121: checkcast cgy
    //   124: astore #29
    //   126: aload #29
    //   128: invokevirtual i : ()Ljava/util/List;
    //   131: astore #30
    //   133: aload #29
    //   135: invokevirtual p : ()F
    //   138: fstore #11
    //   140: aload_0
    //   141: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   144: invokevirtual t : ()Z
    //   147: istore #24
    //   149: iconst_0
    //   150: istore #18
    //   152: aload_1
    //   153: invokevirtual save : ()I
    //   156: pop
    //   157: ldc_w 5.0
    //   160: invokestatic a : (F)F
    //   163: fstore #12
    //   165: iconst_0
    //   166: istore #19
    //   168: iload #19
    //   170: aload #30
    //   172: invokeinterface size : ()I
    //   177: if_icmpge -> 902
    //   180: aload #30
    //   182: iload #19
    //   184: invokeinterface get : (I)Ljava/lang/Object;
    //   189: checkcast cis
    //   192: astore #31
    //   194: aload #31
    //   196: invokeinterface A : ()Z
    //   201: istore #25
    //   203: iload #25
    //   205: ifne -> 222
    //   208: iload #24
    //   210: ifne -> 222
    //   213: iload #19
    //   215: iconst_1
    //   216: iadd
    //   217: istore #19
    //   219: goto -> 168
    //   222: aload #31
    //   224: invokeinterface e : ()Lcha;
    //   229: astore #32
    //   231: aload #31
    //   233: invokeinterface f : ()Lcha;
    //   238: astore #33
    //   240: aload_0
    //   241: aload #31
    //   243: invokevirtual b : (Lcio;)V
    //   246: aload_0
    //   247: getfield k : Landroid/graphics/Paint;
    //   250: ldc_w 'Q'
    //   253: invokestatic b : (Landroid/graphics/Paint;Ljava/lang/String;)I
    //   256: i2f
    //   257: fstore_2
    //   258: ldc_w 4.0
    //   261: invokestatic a : (F)F
    //   264: pop
    //   265: aload #31
    //   267: invokeinterface r : ()Lchn;
    //   272: astore #34
    //   274: aload #31
    //   276: invokeinterface I : ()I
    //   281: istore #23
    //   283: aload_0
    //   284: getfield d : Landroid/graphics/Paint;
    //   287: aload #31
    //   289: invokeinterface g : ()I
    //   294: invokevirtual setColor : (I)V
    //   297: aload_0
    //   298: getfield d : Landroid/graphics/Paint;
    //   301: aload #31
    //   303: invokeinterface h : ()F
    //   308: invokestatic a : (F)F
    //   311: invokevirtual setStrokeWidth : (F)V
    //   314: aload_0
    //   315: aload #31
    //   317: invokevirtual a : (Lcis;)F
    //   320: fstore #13
    //   322: iconst_0
    //   323: istore #20
    //   325: iload #20
    //   327: iload #23
    //   329: if_icmpge -> 912
    //   332: aload #31
    //   334: iload #20
    //   336: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   341: checkcast com/github/mikephil/charting/data/PieEntry
    //   344: astore #35
    //   346: iload #18
    //   348: ifne -> 768
    //   351: fconst_0
    //   352: fstore_2
    //   353: fload #6
    //   355: fload_2
    //   356: aload #27
    //   358: iload #18
    //   360: faload
    //   361: fload #13
    //   363: ldc 0.017453292
    //   365: fload #10
    //   367: fmul
    //   368: fdiv
    //   369: fconst_2
    //   370: fdiv
    //   371: fsub
    //   372: fconst_2
    //   373: fdiv
    //   374: fadd
    //   375: fload #8
    //   377: fmul
    //   378: fadd
    //   379: fstore #4
    //   381: aload_0
    //   382: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   385: invokevirtual v : ()Z
    //   388: ifeq -> 782
    //   391: aload #35
    //   393: invokevirtual c : ()F
    //   396: fload #11
    //   398: fdiv
    //   399: ldc_w 100.0
    //   402: fmul
    //   403: fstore_2
    //   404: ldc 0.017453292
    //   406: fload #4
    //   408: fmul
    //   409: f2d
    //   410: invokestatic cos : (D)D
    //   413: d2f
    //   414: fstore #16
    //   416: ldc 0.017453292
    //   418: fload #4
    //   420: fmul
    //   421: f2d
    //   422: invokestatic sin : (D)D
    //   425: d2f
    //   426: fstore #14
    //   428: iload #24
    //   430: ifeq -> 791
    //   433: aload #32
    //   435: getstatic cha.OUTSIDE_SLICE : Lcha;
    //   438: if_acmpne -> 791
    //   441: iconst_1
    //   442: istore #21
    //   444: iload #25
    //   446: ifeq -> 797
    //   449: aload #33
    //   451: getstatic cha.OUTSIDE_SLICE : Lcha;
    //   454: if_acmpne -> 797
    //   457: iconst_1
    //   458: istore #22
    //   460: iload #24
    //   462: ifeq -> 473
    //   465: aload #32
    //   467: getstatic cha.INSIDE_SLICE : Lcha;
    //   470: if_acmpne -> 473
    //   473: iload #25
    //   475: ifeq -> 486
    //   478: aload #33
    //   480: getstatic cha.INSIDE_SLICE : Lcha;
    //   483: if_acmpne -> 486
    //   486: iload #21
    //   488: ifne -> 496
    //   491: iload #22
    //   493: ifeq -> 753
    //   496: aload #31
    //   498: invokeinterface j : ()F
    //   503: fstore #15
    //   505: aload #31
    //   507: invokeinterface F : ()F
    //   512: fstore #17
    //   514: aload #31
    //   516: invokeinterface i : ()F
    //   521: ldc_w 100.0
    //   524: fdiv
    //   525: fstore_3
    //   526: aload_0
    //   527: getfield a : Lcom/github/mikephil/charting/charts/PieChart;
    //   530: invokevirtual f : ()Z
    //   533: ifeq -> 803
    //   536: fload_3
    //   537: fload #5
    //   539: fload #5
    //   541: fload #9
    //   543: fmul
    //   544: fsub
    //   545: fmul
    //   546: fload #5
    //   548: fload #9
    //   550: fmul
    //   551: fadd
    //   552: fstore_3
    //   553: aload #31
    //   555: invokeinterface G : ()Z
    //   560: ifeq -> 811
    //   563: fload #17
    //   565: fload #10
    //   567: fmul
    //   568: ldc 0.017453292
    //   570: fload #4
    //   572: fmul
    //   573: f2d
    //   574: invokestatic sin : (D)D
    //   577: invokestatic abs : (D)D
    //   580: d2f
    //   581: fmul
    //   582: fstore_3
    //   583: aload #26
    //   585: getfield a : F
    //   588: fstore #17
    //   590: aload #26
    //   592: getfield b : F
    //   595: fstore #17
    //   597: fconst_1
    //   598: fload #15
    //   600: fadd
    //   601: fload #10
    //   603: fmul
    //   604: fload #16
    //   606: fmul
    //   607: aload #26
    //   609: getfield a : F
    //   612: fadd
    //   613: fstore #16
    //   615: fconst_1
    //   616: fload #15
    //   618: fadd
    //   619: fload #10
    //   621: fmul
    //   622: fload #14
    //   624: fmul
    //   625: aload #26
    //   627: getfield b : F
    //   630: fadd
    //   631: fstore #14
    //   633: fload #4
    //   635: f2d
    //   636: ldc2_w 360.0
    //   639: drem
    //   640: ldc2_w 90.0
    //   643: dcmpl
    //   644: iflt -> 820
    //   647: fload #4
    //   649: f2d
    //   650: ldc2_w 360.0
    //   653: drem
    //   654: ldc2_w 270.0
    //   657: dcmpg
    //   658: ifgt -> 820
    //   661: aload_0
    //   662: getfield k : Landroid/graphics/Paint;
    //   665: getstatic android/graphics/Paint$Align.RIGHT : Landroid/graphics/Paint$Align;
    //   668: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   671: iload #21
    //   673: ifeq -> 686
    //   676: aload_0
    //   677: getfield u : Landroid/graphics/Paint;
    //   680: getstatic android/graphics/Paint$Align.RIGHT : Landroid/graphics/Paint$Align;
    //   683: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   686: fload #16
    //   688: fload_3
    //   689: fsub
    //   690: fload #12
    //   692: fsub
    //   693: fstore_3
    //   694: fload #14
    //   696: ldc_w 10.0
    //   699: fadd
    //   700: fstore #4
    //   702: iload #21
    //   704: ifeq -> 868
    //   707: iload #22
    //   709: ifeq -> 868
    //   712: aload_0
    //   713: aload_1
    //   714: aload #34
    //   716: fload_2
    //   717: aload #35
    //   719: iconst_0
    //   720: fload_3
    //   721: fload #4
    //   723: aload #31
    //   725: iload #20
    //   727: invokeinterface i : (I)I
    //   732: invokevirtual a : (Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V
    //   735: iload #20
    //   737: aload #29
    //   739: invokevirtual n : ()I
    //   742: if_icmpge -> 753
    //   745: aload #35
    //   747: invokevirtual b : ()Ljava/lang/String;
    //   750: ifnull -> 753
    //   753: iload #18
    //   755: iconst_1
    //   756: iadd
    //   757: istore #18
    //   759: iload #20
    //   761: iconst_1
    //   762: iadd
    //   763: istore #20
    //   765: goto -> 325
    //   768: aload #28
    //   770: iload #18
    //   772: iconst_1
    //   773: isub
    //   774: faload
    //   775: fload #7
    //   777: fmul
    //   778: fstore_2
    //   779: goto -> 353
    //   782: aload #35
    //   784: invokevirtual c : ()F
    //   787: fstore_2
    //   788: goto -> 404
    //   791: iconst_0
    //   792: istore #21
    //   794: goto -> 444
    //   797: iconst_0
    //   798: istore #22
    //   800: goto -> 460
    //   803: fload_3
    //   804: fload #5
    //   806: fmul
    //   807: fstore_3
    //   808: goto -> 553
    //   811: fload #17
    //   813: fload #10
    //   815: fmul
    //   816: fstore_3
    //   817: goto -> 583
    //   820: aload_0
    //   821: getfield k : Landroid/graphics/Paint;
    //   824: getstatic android/graphics/Paint$Align.LEFT : Landroid/graphics/Paint$Align;
    //   827: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   830: iload #21
    //   832: ifeq -> 845
    //   835: aload_0
    //   836: getfield u : Landroid/graphics/Paint;
    //   839: getstatic android/graphics/Paint$Align.LEFT : Landroid/graphics/Paint$Align;
    //   842: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   845: fload #16
    //   847: fload_3
    //   848: fadd
    //   849: fload #12
    //   851: fadd
    //   852: fstore_3
    //   853: ldc_w 10.0
    //   856: fload #14
    //   858: fadd
    //   859: ldc_w 10.0
    //   862: fadd
    //   863: fstore #4
    //   865: goto -> 702
    //   868: iload #21
    //   870: ifeq -> 894
    //   873: iload #20
    //   875: aload #29
    //   877: invokevirtual n : ()I
    //   880: if_icmpge -> 753
    //   883: aload #35
    //   885: invokevirtual b : ()Ljava/lang/String;
    //   888: ifnull -> 753
    //   891: goto -> 753
    //   894: iload #22
    //   896: ifeq -> 753
    //   899: goto -> 753
    //   902: aload #26
    //   904: invokestatic a : (Lcla;)V
    //   907: aload_1
    //   908: invokevirtual restore : ()V
    //   911: return
    //   912: goto -> 213
  }
  
  public Paint c() {
    return this.c;
  }
  
  public void c(Canvas paramCanvas) {
    d(paramCanvas);
    paramCanvas.drawBitmap(this.n.get(), 0.0F, 0.0F, null);
    e(paramCanvas);
  }
  
  protected void d(Canvas paramCanvas) {
    if (this.a.f() && this.o != null) {
      float f1 = this.a.m();
      float f2 = this.a.q() / 100.0F * f1;
      cla cla = this.a.o();
      if (Color.alpha(this.b.getColor()) > 0)
        this.o.drawCircle(cla.a, cla.b, f2, this.b); 
      if (Color.alpha(this.c.getColor()) > 0 && this.a.r() > this.a.q()) {
        int i = this.c.getAlpha();
        float f = this.a.r() / 100.0F;
        this.c.setAlpha((int)(i * this.g.b() * this.g.a()));
        this.B.reset();
        this.B.addCircle(cla.a, cla.b, f1 * f, Path.Direction.CW);
        this.B.addCircle(cla.a, cla.b, f2, Path.Direction.CCW);
        this.o.drawPath(this.B, this.c);
        this.c.setAlpha(i);
      } 
      cla.a(cla);
    } 
  }
  
  protected void e(Canvas paramCanvas) {
    CharSequence charSequence = this.a.g();
    if (this.a.h() && charSequence != null) {
      cla cla1 = this.a.o();
      cla cla2 = this.a.p();
      float f1 = cla1.a;
      float f2 = cla2.a + f1;
      f1 = cla1.b;
      float f3 = cla2.b + f1;
      if (this.a.f() && !this.a.e()) {
        f1 = this.a.m() * this.a.q() / 100.0F;
      } else {
        f1 = this.a.m();
      } 
      RectF rectF1 = this.y[0];
      rectF1.left = f2 - f1;
      rectF1.top = f3 - f1;
      rectF1.right = f2 + f1;
      rectF1.bottom = f1 + f3;
      RectF rectF2 = this.y[1];
      rectF2.set(rectF1);
      f1 = this.a.w() / 100.0F;
      if (f1 > 0.0D)
        rectF2.inset((rectF2.width() - rectF2.width() * f1) / 2.0F, (rectF2.height() - f1 * rectF2.height()) / 2.0F); 
      if (!charSequence.equals(this.w) || !rectF2.equals(this.x)) {
        this.x.set(rectF2);
        this.w = charSequence;
        f1 = this.x.width();
        this.v = new StaticLayout(charSequence, 0, charSequence.length(), this.t, (int)Math.max(Math.ceil(f1), 1.0D), Layout.Alignment.ALIGN_CENTER, 1.0F, 0.0F, false);
      } 
      f1 = this.v.getHeight();
      paramCanvas.save();
      if (Build.VERSION.SDK_INT >= 18) {
        Path path = this.q;
        path.reset();
        path.addOval(rectF1, Path.Direction.CW);
        paramCanvas.clipPath(path);
      } 
      f2 = rectF2.left;
      f3 = rectF2.top;
      paramCanvas.translate(f2, (rectF2.height() - f1) / 2.0F + f3);
      this.v.draw(paramCanvas);
      paramCanvas.restore();
      cla.a(cla1);
      cla.a(cla2);
    } 
  }
  
  protected void f(Canvas paramCanvas) {
    if (this.a.u()) {
      cis cis = ((cgy)this.a.aC()).a();
      if (cis.B()) {
        float f2 = this.g.b();
        float f3 = this.g.a();
        cla cla = this.a.o();
        float f4 = this.a.m();
        float f5 = (f4 - this.a.q() * f4 / 100.0F) / 2.0F;
        float[] arrayOfFloat = this.a.c();
        float f1 = this.a.z();
        int i;
        for (i = 0; i < cis.I(); i++) {
          float f = arrayOfFloat[i];
          if (Math.abs(cis.m(i).c()) > clg.d) {
            float f6 = (float)((f4 - f5) * Math.cos(Math.toRadians(((f1 + f) * f3))) + cla.a);
            float f7 = (float)((f4 - f5) * Math.sin(Math.toRadians(((f1 + f) * f3))) + cla.b);
            this.h.setColor(cis.e(i));
            this.o.drawCircle(f6, f7, f5, this.h);
          } 
          f1 += f * f2;
        } 
        cla.a(cla);
        return;
      } 
    } 
  }
  
  public TextPaint g() {
    return this.t;
  }
  
  public Paint h() {
    return this.u;
  }
  
  public void i() {
    if (this.o != null) {
      this.o.setBitmap(null);
      this.o = null;
    } 
    if (this.n != null) {
      ((Bitmap)this.n.get()).recycle();
      this.n.clear();
      this.n = null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */