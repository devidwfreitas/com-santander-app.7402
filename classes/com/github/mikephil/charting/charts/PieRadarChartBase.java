package com.github.mikephil.charting.charts;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cdr;
import cew;
import cfg;
import cgo;
import cio;
import cjc;
import cji;
import cla;
import clg;
import com.github.mikephil.charting.data.Entry;

public abstract class PieRadarChartBase<T extends cgo<? extends cio<? extends Entry>>> extends Chart<T> {
  private float a = 270.0F;
  
  private float b = 270.0F;
  
  protected boolean c = true;
  
  protected float d = 0.0F;
  
  public PieRadarChartBase(Context paramContext) {
    super(paramContext);
  }
  
  public PieRadarChartBase(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public PieRadarChartBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean A() {
    return this.c;
  }
  
  public float B() {
    return this.d;
  }
  
  public float C() {
    RectF rectF = this.R.l();
    rectF.left += aq();
    rectF.top += an();
    rectF.right -= ao();
    rectF.bottom -= ap();
    return Math.min(rectF.width(), rectF.height());
  }
  
  public float N() {
    return 0.0F;
  }
  
  public float O() {
    return 0.0F;
  }
  
  public abstract int a(float paramFloat);
  
  public cla a(cla paramcla, float paramFloat1, float paramFloat2) {
    cla cla1 = cla.a(0.0F, 0.0F);
    a(paramcla, paramFloat1, paramFloat2, cla1);
    return cla1;
  }
  
  protected void a() {
    super.a();
    this.N = (cjc)new cji(this);
  }
  
  @SuppressLint({"NewApi"})
  public void a(int paramInt, float paramFloat1, float paramFloat2, cew paramcew) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    setRotationAngle(paramFloat1);
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "rotationAngle", new float[] { paramFloat1, paramFloat2 });
    objectAnimator.setDuration(paramInt);
    objectAnimator.setInterpolator((TimeInterpolator)cdr.a(paramcew));
    objectAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new cfg(this));
    objectAnimator.start();
  }
  
  public void a(cla paramcla1, float paramFloat1, float paramFloat2, cla paramcla2) {
    paramcla2.a = (float)(paramcla1.a + paramFloat1 * Math.cos(Math.toRadians(paramFloat2)));
    paramcla2.b = (float)(paramcla1.b + paramFloat1 * Math.sin(Math.toRadians(paramFloat2)));
  }
  
  public float b(float paramFloat1, float paramFloat2) {
    cla cla = am();
    double d1 = (paramFloat1 - cla.a);
    double d2 = (paramFloat2 - cla.b);
    float f = (float)Math.toDegrees(Math.acos(d2 / Math.sqrt(d1 * d1 + d2 * d2)));
    paramFloat2 = f;
    if (paramFloat1 > cla.a)
      paramFloat2 = 360.0F - f; 
    paramFloat2 += 90.0F;
    paramFloat1 = paramFloat2;
    if (paramFloat2 > 360.0F)
      paramFloat1 = paramFloat2 - 360.0F; 
    cla.a(cla);
    return paramFloat1;
  }
  
  protected void b() {}
  
  public float c(float paramFloat1, float paramFloat2) {
    cla cla = am();
    if (paramFloat1 > cla.a) {
      paramFloat1 -= cla.a;
    } else {
      paramFloat1 = cla.a - paramFloat1;
    } 
    if (paramFloat2 > cla.b) {
      paramFloat2 -= cla.b;
      double d1 = Math.pow(paramFloat1, 2.0D);
      paramFloat1 = (float)Math.sqrt(Math.pow(paramFloat2, 2.0D) + d1);
      cla.a(cla);
      return paramFloat1;
    } 
    paramFloat2 = cla.b - paramFloat2;
    double d = Math.pow(paramFloat1, 2.0D);
    paramFloat1 = (float)Math.sqrt(Math.pow(paramFloat2, 2.0D) + d);
    cla.a(cla);
    return paramFloat1;
  }
  
  public void computeScroll() {
    if (this.N instanceof cji)
      ((cji)this.N).b(); 
  }
  
  protected abstract float i();
  
  public void j() {
    if (this.D == null)
      return; 
    b();
    if (this.L != null)
      this.O.a((cgo)this.D); 
    l();
  }
  
  protected abstract float k();
  
  public void l() {
    // Byte code:
    //   0: fconst_0
    //   1: fstore_3
    //   2: fconst_0
    //   3: fstore #4
    //   5: aload_0
    //   6: getfield L : Lcfn;
    //   9: ifnull -> 876
    //   12: aload_0
    //   13: getfield L : Lcfn;
    //   16: invokevirtual K : ()Z
    //   19: ifeq -> 876
    //   22: aload_0
    //   23: getfield L : Lcfn;
    //   26: invokevirtual m : ()Z
    //   29: ifne -> 876
    //   32: aload_0
    //   33: getfield L : Lcfn;
    //   36: getfield a : F
    //   39: aload_0
    //   40: getfield R : Lclh;
    //   43: invokevirtual o : ()F
    //   46: aload_0
    //   47: getfield L : Lcfn;
    //   50: invokevirtual x : ()F
    //   53: fmul
    //   54: invokestatic min : (FF)F
    //   57: fstore_1
    //   58: getstatic cfh.c : [I
    //   61: aload_0
    //   62: getfield L : Lcfn;
    //   65: invokevirtual l : ()Lcfs;
    //   68: invokevirtual ordinal : ()I
    //   71: iaload
    //   72: tableswitch default -> 96, 1 -> 348, 2 -> 748
    //   96: fconst_0
    //   97: fstore_1
    //   98: fconst_0
    //   99: fstore_2
    //   100: fconst_0
    //   101: fstore_3
    //   102: fload_3
    //   103: aload_0
    //   104: invokevirtual k : ()F
    //   107: fadd
    //   108: fstore_3
    //   109: fload_2
    //   110: aload_0
    //   111: invokevirtual k : ()F
    //   114: fadd
    //   115: fstore_2
    //   116: fload #4
    //   118: aload_0
    //   119: invokevirtual k : ()F
    //   122: fadd
    //   123: fstore #5
    //   125: fload_1
    //   126: aload_0
    //   127: invokevirtual k : ()F
    //   130: fadd
    //   131: fstore_1
    //   132: fload_3
    //   133: fstore #4
    //   135: fload #5
    //   137: fstore_3
    //   138: aload_0
    //   139: getfield d : F
    //   142: invokestatic a : (F)F
    //   145: fstore #6
    //   147: fload #6
    //   149: fstore #5
    //   151: aload_0
    //   152: instanceof com/github/mikephil/charting/charts/RadarChart
    //   155: ifeq -> 201
    //   158: aload_0
    //   159: invokevirtual ad : ()Lcfz;
    //   162: astore #9
    //   164: fload #6
    //   166: fstore #5
    //   168: aload #9
    //   170: invokevirtual K : ()Z
    //   173: ifeq -> 201
    //   176: fload #6
    //   178: fstore #5
    //   180: aload #9
    //   182: invokevirtual h : ()Z
    //   185: ifeq -> 201
    //   188: fload #6
    //   190: aload #9
    //   192: getfield D : I
    //   195: i2f
    //   196: invokestatic max : (FF)F
    //   199: fstore #5
    //   201: aload_0
    //   202: invokevirtual an : ()F
    //   205: fstore #8
    //   207: aload_0
    //   208: invokevirtual ao : ()F
    //   211: fstore #7
    //   213: aload_0
    //   214: invokevirtual ap : ()F
    //   217: fstore #6
    //   219: fload #5
    //   221: fload #4
    //   223: aload_0
    //   224: invokevirtual aq : ()F
    //   227: fadd
    //   228: invokestatic max : (FF)F
    //   231: fstore #4
    //   233: fload #5
    //   235: fload_3
    //   236: fload #8
    //   238: fadd
    //   239: invokestatic max : (FF)F
    //   242: fstore_3
    //   243: fload #5
    //   245: fload_2
    //   246: fload #7
    //   248: fadd
    //   249: invokestatic max : (FF)F
    //   252: fstore_2
    //   253: fload #5
    //   255: aload_0
    //   256: invokevirtual k : ()F
    //   259: fload_1
    //   260: fload #6
    //   262: fadd
    //   263: invokestatic max : (FF)F
    //   266: invokestatic max : (FF)F
    //   269: fstore_1
    //   270: aload_0
    //   271: getfield R : Lclh;
    //   274: fload #4
    //   276: fload_3
    //   277: fload_2
    //   278: fload_1
    //   279: invokevirtual a : (FFFF)V
    //   282: aload_0
    //   283: getfield C : Z
    //   286: ifeq -> 347
    //   289: ldc_w 'MPAndroidChart'
    //   292: new java/lang/StringBuilder
    //   295: dup
    //   296: invokespecial <init> : ()V
    //   299: ldc_w 'offsetLeft: '
    //   302: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: fload #4
    //   307: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   310: ldc_w ', offsetTop: '
    //   313: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: fload_3
    //   317: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   320: ldc_w ', offsetRight: '
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: fload_2
    //   327: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   330: ldc_w ', offsetBottom: '
    //   333: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: fload_1
    //   337: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   340: invokevirtual toString : ()Ljava/lang/String;
    //   343: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   346: pop
    //   347: return
    //   348: aload_0
    //   349: getfield L : Lcfn;
    //   352: invokevirtual j : ()Lcfr;
    //   355: getstatic cfr.LEFT : Lcfr;
    //   358: if_acmpeq -> 374
    //   361: aload_0
    //   362: getfield L : Lcfn;
    //   365: invokevirtual j : ()Lcfr;
    //   368: getstatic cfr.RIGHT : Lcfr;
    //   371: if_acmpne -> 871
    //   374: aload_0
    //   375: getfield L : Lcfn;
    //   378: invokevirtual k : ()Lcfu;
    //   381: getstatic cfu.CENTER : Lcfu;
    //   384: if_acmpne -> 448
    //   387: fload_1
    //   388: ldc_w 13.0
    //   391: invokestatic a : (F)F
    //   394: fadd
    //   395: fstore_1
    //   396: getstatic cfh.b : [I
    //   399: aload_0
    //   400: getfield L : Lcfn;
    //   403: invokevirtual j : ()Lcfr;
    //   406: invokevirtual ordinal : ()I
    //   409: iaload
    //   410: tableswitch default -> 436, 1 -> 439, 2 -> 631, 3 -> 640
    //   436: goto -> 96
    //   439: fconst_0
    //   440: fstore_2
    //   441: fload_1
    //   442: fstore_3
    //   443: fconst_0
    //   444: fstore_1
    //   445: goto -> 102
    //   448: ldc_w 8.0
    //   451: invokestatic a : (F)F
    //   454: fload_1
    //   455: fadd
    //   456: fstore_2
    //   457: aload_0
    //   458: getfield L : Lcfn;
    //   461: getfield b : F
    //   464: fstore_3
    //   465: aload_0
    //   466: getfield L : Lcfn;
    //   469: getfield c : F
    //   472: fstore #5
    //   474: aload_0
    //   475: invokevirtual al : ()Lcla;
    //   478: astore #9
    //   480: aload_0
    //   481: getfield L : Lcfn;
    //   484: invokevirtual j : ()Lcfr;
    //   487: getstatic cfr.RIGHT : Lcfr;
    //   490: if_acmpne -> 604
    //   493: aload_0
    //   494: invokevirtual getWidth : ()I
    //   497: i2f
    //   498: fload_2
    //   499: fsub
    //   500: ldc_w 15.0
    //   503: fadd
    //   504: fstore_1
    //   505: fload #5
    //   507: fload_3
    //   508: fadd
    //   509: ldc_w 15.0
    //   512: fadd
    //   513: fstore_3
    //   514: aload_0
    //   515: fload_1
    //   516: fload_3
    //   517: invokevirtual c : (FF)F
    //   520: fstore #5
    //   522: aload_0
    //   523: aload #9
    //   525: aload_0
    //   526: invokevirtual m : ()F
    //   529: aload_0
    //   530: fload_1
    //   531: fload_3
    //   532: invokevirtual b : (FF)F
    //   535: invokevirtual a : (Lcla;FF)Lcla;
    //   538: astore #10
    //   540: aload_0
    //   541: aload #10
    //   543: getfield a : F
    //   546: aload #10
    //   548: getfield b : F
    //   551: invokevirtual c : (FF)F
    //   554: fstore_1
    //   555: ldc_w 5.0
    //   558: invokestatic a : (F)F
    //   561: fstore #6
    //   563: fload_3
    //   564: aload #9
    //   566: getfield b : F
    //   569: fcmpl
    //   570: iflt -> 613
    //   573: aload_0
    //   574: invokevirtual getHeight : ()I
    //   577: i2f
    //   578: fload_2
    //   579: fsub
    //   580: aload_0
    //   581: invokevirtual getWidth : ()I
    //   584: i2f
    //   585: fcmpl
    //   586: ifle -> 613
    //   589: fload_2
    //   590: fstore_1
    //   591: aload #9
    //   593: invokestatic a : (Lcla;)V
    //   596: aload #10
    //   598: invokestatic a : (Lcla;)V
    //   601: goto -> 396
    //   604: fload_2
    //   605: ldc_w 15.0
    //   608: fsub
    //   609: fstore_1
    //   610: goto -> 505
    //   613: fload #5
    //   615: fload_1
    //   616: fcmpg
    //   617: ifge -> 866
    //   620: fload_1
    //   621: fload #5
    //   623: fsub
    //   624: fload #6
    //   626: fadd
    //   627: fstore_1
    //   628: goto -> 591
    //   631: fload_1
    //   632: fstore_2
    //   633: fconst_0
    //   634: fstore_3
    //   635: fconst_0
    //   636: fstore_1
    //   637: goto -> 102
    //   640: getstatic cfh.a : [I
    //   643: aload_0
    //   644: getfield L : Lcfn;
    //   647: invokevirtual k : ()Lcfu;
    //   650: invokevirtual ordinal : ()I
    //   653: iaload
    //   654: tableswitch default -> 676, 1 -> 679, 2 -> 715
    //   676: goto -> 96
    //   679: aload_0
    //   680: getfield L : Lcfn;
    //   683: getfield b : F
    //   686: aload_0
    //   687: getfield R : Lclh;
    //   690: invokevirtual n : ()F
    //   693: aload_0
    //   694: getfield L : Lcfn;
    //   697: invokevirtual x : ()F
    //   700: fmul
    //   701: invokestatic min : (FF)F
    //   704: fstore #4
    //   706: fconst_0
    //   707: fstore_2
    //   708: fconst_0
    //   709: fstore_3
    //   710: fconst_0
    //   711: fstore_1
    //   712: goto -> 102
    //   715: aload_0
    //   716: getfield L : Lcfn;
    //   719: getfield b : F
    //   722: aload_0
    //   723: getfield R : Lclh;
    //   726: invokevirtual n : ()F
    //   729: aload_0
    //   730: getfield L : Lcfn;
    //   733: invokevirtual x : ()F
    //   736: fmul
    //   737: invokestatic min : (FF)F
    //   740: fstore_1
    //   741: fconst_0
    //   742: fstore_2
    //   743: fconst_0
    //   744: fstore_3
    //   745: goto -> 102
    //   748: aload_0
    //   749: getfield L : Lcfn;
    //   752: invokevirtual k : ()Lcfu;
    //   755: getstatic cfu.TOP : Lcfu;
    //   758: if_acmpeq -> 774
    //   761: aload_0
    //   762: getfield L : Lcfn;
    //   765: invokevirtual k : ()Lcfu;
    //   768: getstatic cfu.BOTTOM : Lcfu;
    //   771: if_acmpne -> 96
    //   774: aload_0
    //   775: invokevirtual i : ()F
    //   778: aload_0
    //   779: getfield L : Lcfn;
    //   782: getfield b : F
    //   785: fadd
    //   786: aload_0
    //   787: getfield R : Lclh;
    //   790: invokevirtual n : ()F
    //   793: aload_0
    //   794: getfield L : Lcfn;
    //   797: invokevirtual x : ()F
    //   800: fmul
    //   801: invokestatic min : (FF)F
    //   804: fstore_1
    //   805: getstatic cfh.a : [I
    //   808: aload_0
    //   809: getfield L : Lcfn;
    //   812: invokevirtual k : ()Lcfu;
    //   815: invokevirtual ordinal : ()I
    //   818: iaload
    //   819: tableswitch default -> 840, 1 -> 843, 2 -> 859
    //   840: goto -> 96
    //   843: fconst_0
    //   844: fstore_2
    //   845: fconst_0
    //   846: fstore_3
    //   847: fconst_0
    //   848: fstore #5
    //   850: fload_1
    //   851: fstore #4
    //   853: fload #5
    //   855: fstore_1
    //   856: goto -> 102
    //   859: fconst_0
    //   860: fstore_2
    //   861: fconst_0
    //   862: fstore_3
    //   863: goto -> 102
    //   866: fconst_0
    //   867: fstore_1
    //   868: goto -> 591
    //   871: fconst_0
    //   872: fstore_1
    //   873: goto -> 396
    //   876: fconst_0
    //   877: fstore_1
    //   878: fconst_0
    //   879: fstore_2
    //   880: fconst_0
    //   881: fstore #4
    //   883: goto -> 138
  }
  
  public abstract float m();
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    return (this.J && this.N != null) ? this.N.onTouch((View)this, paramMotionEvent) : super.onTouchEvent(paramMotionEvent);
  }
  
  public int s() {
    return this.D.n();
  }
  
  public void setMinOffset(float paramFloat) {
    this.d = paramFloat;
  }
  
  public void setRotationAngle(float paramFloat) {
    this.b = paramFloat;
    this.a = clg.d(this.b);
  }
  
  public void setRotationEnabled(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public float y() {
    return this.b;
  }
  
  public float z() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\PieRadarChartBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */