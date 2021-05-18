package com.github.mikephil.charting.charts;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import cdq;
import cew;
import cex;
import cfd;
import cfl;
import cfm;
import cfn;
import cfz;
import cgo;
import chk;
import chn;
import cht;
import chv;
import chx;
import cig;
import cio;
import cjc;
import cje;
import cjf;
import cjt;
import cjv;
import cla;
import clg;
import clh;
import com.github.mikephil.charting.data.Entry;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"NewApi"})
public abstract class Chart<T extends cgo<? extends cio<? extends Entry>>> extends ViewGroup implements cig {
  public static final String B = "MPAndroidChart";
  
  public static final int aa = 4;
  
  public static final int ab = 7;
  
  public static final int ac = 11;
  
  public static final int ad = 13;
  
  public static final int ae = 14;
  
  public static final int af = 18;
  
  protected boolean C = false;
  
  protected T D = null;
  
  protected boolean E = true;
  
  protected chk F = new chk(0);
  
  protected Paint G;
  
  protected Paint H;
  
  protected cfz I;
  
  protected boolean J = true;
  
  protected cfl K;
  
  protected cfn L;
  
  protected cjf M;
  
  protected cjc N;
  
  protected cjv O;
  
  protected cjt P;
  
  protected chx Q;
  
  public clh R = new clh();
  
  protected cdq S;
  
  protected chv[] T;
  
  protected float U = 0.0F;
  
  protected boolean V = true;
  
  protected cfm W;
  
  private boolean a = true;
  
  protected ArrayList<Runnable> ag = new ArrayList<Runnable>();
  
  private float b = 0.9F;
  
  private String c = "No chart data available.";
  
  private cje d;
  
  private float e = 0.0F;
  
  private float f = 0.0F;
  
  private float g = 0.0F;
  
  private float h = 0.0F;
  
  private boolean i = false;
  
  private boolean j = false;
  
  public Chart(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public Chart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public Chart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a(View paramView) {
    if (paramView.getBackground() != null)
      paramView.getBackground().setCallback(null); 
    if (paramView instanceof ViewGroup) {
      for (int i = 0; i < ((ViewGroup)paramView).getChildCount(); i++)
        a(((ViewGroup)paramView).getChildAt(i)); 
      ((ViewGroup)paramView).removeAllViews();
    } 
  }
  
  public void S() {
    this.D = null;
    this.i = false;
    this.T = null;
    invalidate();
  }
  
  public void T() {
    this.D.m();
    invalidate();
  }
  
  public boolean U() {
    return !(this.D != null && this.D.n() > 0);
  }
  
  public float V() {
    return this.U;
  }
  
  public chv[] W() {
    return this.T;
  }
  
  public boolean X() {
    return this.E;
  }
  
  public boolean Y() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.T != null) {
      bool1 = bool2;
      if (this.T.length > 0) {
        bool1 = bool2;
        if (this.T[0] != null)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  public cjc Z() {
    return this.N;
  }
  
  public Paint a(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 7:
        return this.H;
      case 11:
        break;
    } 
    return this.G;
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    if (this.D == null) {
      Log.e("MPAndroidChart", "Can't select by touch. No data set.");
      return null;
    } 
    return aF().a(paramFloat1, paramFloat2);
  }
  
  protected void a() {
    setWillNotDraw(false);
    if (Build.VERSION.SDK_INT < 11) {
      this.S = new cdq();
    } else {
      this.S = new cdq((ValueAnimator.AnimatorUpdateListener)new cfd(this));
    } 
    clg.a(getContext());
    this.U = clg.a(500.0F);
    this.K = new cfl();
    this.L = new cfn();
    this.O = new cjv(this.R, this.L);
    this.I = new cfz();
    this.G = new Paint(1);
    this.H = new Paint(1);
    this.H.setColor(Color.rgb(247, 189, 51));
    this.H.setTextAlign(Paint.Align.CENTER);
    this.H.setTextSize(clg.a(12.0F));
    if (this.C)
      Log.i("", "Chart.init()"); 
  }
  
  public void a(float paramFloat1, float paramFloat2, int paramInt) {
    a(paramFloat1, paramFloat2, paramInt, true);
  }
  
  public void a(float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    if (paramInt < 0 || paramInt >= this.D.d()) {
      a((chv)null, paramBoolean);
      return;
    } 
    a(new chv(paramFloat1, paramFloat2, paramInt), paramBoolean);
  }
  
  public void a(float paramFloat, int paramInt) {
    a(paramFloat, paramInt, true);
  }
  
  public void a(float paramFloat, int paramInt, boolean paramBoolean) {
    a(paramFloat, Float.NaN, paramInt, paramBoolean);
  }
  
  public void a(int paramInt1, int paramInt2) {
    this.S.a(paramInt1, paramInt2);
  }
  
  public void a(int paramInt1, int paramInt2, cew paramcew1, cew paramcew2) {
    this.S.a(paramInt1, paramInt2, paramcew1, paramcew2);
  }
  
  public void a(int paramInt1, int paramInt2, cex paramcex1, cex paramcex2) {
    this.S.a(paramInt1, paramInt2, paramcex1, paramcex2);
  }
  
  public void a(int paramInt, cew paramcew) {
    this.S.a(paramInt, paramcew);
  }
  
  public void a(int paramInt, cex paramcex) {
    this.S.a(paramInt, paramcex);
  }
  
  public void a(chv paramchv) {
    a(paramchv, false);
  }
  
  public void a(chv paramchv, boolean paramBoolean) {
    Entry entry = null;
    if (paramchv == null) {
      this.T = null;
    } else {
      if (this.C)
        Log.i("MPAndroidChart", "Highlighted: " + paramchv.toString()); 
      entry = this.D.a(paramchv);
      if (entry == null) {
        this.T = null;
        paramchv = null;
      } else {
        this.T = new chv[] { paramchv };
      } 
    } 
    a(this.T);
    if (paramBoolean && this.M != null)
      if (!Y()) {
        this.M.a();
      } else {
        this.M.a(entry, paramchv);
      }  
    invalidate();
  }
  
  public void a(Runnable paramRunnable) {
    this.ag.remove(paramRunnable);
  }
  
  protected void a(chv[] paramArrayOfchv) {
    if (paramArrayOfchv == null || paramArrayOfchv.length <= 0 || paramArrayOfchv[0] == null) {
      this.N.a(null);
      return;
    } 
    this.N.a(paramArrayOfchv[0]);
  }
  
  public boolean a(String paramString, int paramInt) {
    return a(paramString, "", "MPAndroidChart-Library Save", Bitmap.CompressFormat.JPEG, paramInt);
  }
  
  public boolean a(String paramString1, String paramString2) {
    Bitmap bitmap = aH();
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(Environment.getExternalStorageDirectory().getPath() + paramString2 + "/" + paramString1 + ".png");
      bitmap.compress(Bitmap.CompressFormat.PNG, 40, fileOutputStream);
      fileOutputStream.close();
      return true;
    } catch (Exception exception) {
      exception.printStackTrace();
      return false;
    } 
  }
  
  public boolean a(String paramString1, String paramString2, String paramString3, Bitmap.CompressFormat paramCompressFormat, int paramInt) {
    // Byte code:
    //   0: iload #5
    //   2: iflt -> 16
    //   5: iload #5
    //   7: istore #6
    //   9: iload #5
    //   11: bipush #100
    //   13: if_icmple -> 20
    //   16: bipush #50
    //   18: istore #6
    //   20: invokestatic currentTimeMillis : ()J
    //   23: lstore #7
    //   25: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   28: astore #12
    //   30: new java/io/File
    //   33: dup
    //   34: new java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial <init> : ()V
    //   41: aload #12
    //   43: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   46: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: ldc_w '/DCIM/'
    //   52: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: aload_2
    //   56: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual toString : ()Ljava/lang/String;
    //   62: invokespecial <init> : (Ljava/lang/String;)V
    //   65: astore #14
    //   67: aload #14
    //   69: invokevirtual exists : ()Z
    //   72: ifne -> 85
    //   75: aload #14
    //   77: invokevirtual mkdirs : ()Z
    //   80: ifne -> 85
    //   83: iconst_0
    //   84: ireturn
    //   85: getstatic cfe.a : [I
    //   88: aload #4
    //   90: invokevirtual ordinal : ()I
    //   93: iaload
    //   94: tableswitch default -> 116, 1 -> 373, 2 -> 422
    //   116: ldc_w 'image/jpeg'
    //   119: astore #13
    //   121: aload #13
    //   123: astore #12
    //   125: aload_1
    //   126: astore_2
    //   127: aload_1
    //   128: ldc_w '.jpg'
    //   131: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   134: ifne -> 178
    //   137: aload #13
    //   139: astore #12
    //   141: aload_1
    //   142: astore_2
    //   143: aload_1
    //   144: ldc_w '.jpeg'
    //   147: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   150: ifne -> 178
    //   153: new java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: aload_1
    //   161: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w '.jpg'
    //   167: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual toString : ()Ljava/lang/String;
    //   173: astore_2
    //   174: aload #13
    //   176: astore #12
    //   178: new java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial <init> : ()V
    //   185: aload #14
    //   187: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   190: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: ldc_w '/'
    //   196: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: aload_2
    //   200: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual toString : ()Ljava/lang/String;
    //   206: astore_1
    //   207: new java/io/FileOutputStream
    //   210: dup
    //   211: aload_1
    //   212: invokespecial <init> : (Ljava/lang/String;)V
    //   215: astore #13
    //   217: aload_0
    //   218: invokevirtual aH : ()Landroid/graphics/Bitmap;
    //   221: aload #4
    //   223: iload #6
    //   225: aload #13
    //   227: invokevirtual compress : (Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   230: pop
    //   231: aload #13
    //   233: invokevirtual flush : ()V
    //   236: aload #13
    //   238: invokevirtual close : ()V
    //   241: new java/io/File
    //   244: dup
    //   245: aload_1
    //   246: invokespecial <init> : (Ljava/lang/String;)V
    //   249: invokevirtual length : ()J
    //   252: lstore #9
    //   254: new android/content/ContentValues
    //   257: dup
    //   258: bipush #8
    //   260: invokespecial <init> : (I)V
    //   263: astore #4
    //   265: aload #4
    //   267: ldc_w 'title'
    //   270: aload_2
    //   271: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   274: aload #4
    //   276: ldc_w '_display_name'
    //   279: aload_2
    //   280: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   283: aload #4
    //   285: ldc_w 'date_added'
    //   288: lload #7
    //   290: invokestatic valueOf : (J)Ljava/lang/Long;
    //   293: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   296: aload #4
    //   298: ldc_w 'mime_type'
    //   301: aload #12
    //   303: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   306: aload #4
    //   308: ldc_w 'description'
    //   311: aload_3
    //   312: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   315: aload #4
    //   317: ldc_w 'orientation'
    //   320: iconst_0
    //   321: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   324: invokevirtual put : (Ljava/lang/String;Ljava/lang/Integer;)V
    //   327: aload #4
    //   329: ldc_w '_data'
    //   332: aload_1
    //   333: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   336: aload #4
    //   338: ldc_w '_size'
    //   341: lload #9
    //   343: invokestatic valueOf : (J)Ljava/lang/Long;
    //   346: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   349: aload_0
    //   350: invokevirtual getContext : ()Landroid/content/Context;
    //   353: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   356: getstatic android/provider/MediaStore$Images$Media.EXTERNAL_CONTENT_URI : Landroid/net/Uri;
    //   359: aload #4
    //   361: invokevirtual insert : (Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   364: ifnull -> 478
    //   367: iconst_1
    //   368: istore #11
    //   370: iload #11
    //   372: ireturn
    //   373: ldc_w 'image/png'
    //   376: astore #13
    //   378: aload #13
    //   380: astore #12
    //   382: aload_1
    //   383: astore_2
    //   384: aload_1
    //   385: ldc_w '.png'
    //   388: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   391: ifne -> 178
    //   394: new java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial <init> : ()V
    //   401: aload_1
    //   402: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: ldc_w '.png'
    //   408: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual toString : ()Ljava/lang/String;
    //   414: astore_2
    //   415: aload #13
    //   417: astore #12
    //   419: goto -> 178
    //   422: ldc_w 'image/webp'
    //   425: astore #13
    //   427: aload #13
    //   429: astore #12
    //   431: aload_1
    //   432: astore_2
    //   433: aload_1
    //   434: ldc_w '.webp'
    //   437: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   440: ifne -> 178
    //   443: new java/lang/StringBuilder
    //   446: dup
    //   447: invokespecial <init> : ()V
    //   450: aload_1
    //   451: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: ldc_w '.webp'
    //   457: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: invokevirtual toString : ()Ljava/lang/String;
    //   463: astore_2
    //   464: aload #13
    //   466: astore #12
    //   468: goto -> 178
    //   471: astore_1
    //   472: aload_1
    //   473: invokevirtual printStackTrace : ()V
    //   476: iconst_0
    //   477: ireturn
    //   478: iconst_0
    //   479: istore #11
    //   481: goto -> 370
    // Exception table:
    //   from	to	target	type
    //   207	241	471	java/io/IOException
  }
  
  @Deprecated
  public boolean aA() {
    return aB();
  }
  
  public boolean aB() {
    return this.V;
  }
  
  public T aC() {
    return this.D;
  }
  
  public clh aD() {
    return this.R;
  }
  
  public cjt aE() {
    return this.P;
  }
  
  public chx aF() {
    return this.Q;
  }
  
  public cla aG() {
    return al();
  }
  
  public Bitmap aH() {
    Bitmap bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.RGB_565);
    Canvas canvas = new Canvas(bitmap);
    Drawable drawable = getBackground();
    if (drawable != null) {
      drawable.draw(canvas);
      draw(canvas);
      return bitmap;
    } 
    canvas.drawColor(-1);
    draw(canvas);
    return bitmap;
  }
  
  public void aI() {
    this.ag.clear();
  }
  
  public ArrayList<Runnable> aJ() {
    return this.ag;
  }
  
  public cdq aa() {
    return this.S;
  }
  
  public boolean ab() {
    return this.a;
  }
  
  public float ac() {
    return this.b;
  }
  
  public cfz ad() {
    return this.I;
  }
  
  public chn ae() {
    return (chn)this.F;
  }
  
  public cje af() {
    return this.d;
  }
  
  public float ag() {
    return this.D.f();
  }
  
  public float ah() {
    return this.D.e();
  }
  
  public float ai() {
    return this.I.s;
  }
  
  public float aj() {
    return this.I.t;
  }
  
  public float ak() {
    return this.I.u;
  }
  
  public cla al() {
    return cla.a(getWidth() / 2.0F, getHeight() / 2.0F);
  }
  
  public cla am() {
    return this.R.m();
  }
  
  public float an() {
    return this.e;
  }
  
  public float ao() {
    return this.f;
  }
  
  public float ap() {
    return this.g;
  }
  
  public float aq() {
    return this.h;
  }
  
  public boolean ar() {
    return this.C;
  }
  
  public cfm as() {
    return this.W;
  }
  
  @Deprecated
  public cfm at() {
    return as();
  }
  
  public cfl au() {
    return this.K;
  }
  
  public cfn av() {
    return this.L;
  }
  
  public cjv aw() {
    return this.O;
  }
  
  public RectF ax() {
    return this.R.l();
  }
  
  public void ay() {
    ViewParent viewParent = getParent();
    if (viewParent != null)
      viewParent.requestDisallowInterceptTouchEvent(true); 
  }
  
  public void az() {
    ViewParent viewParent = getParent();
    if (viewParent != null)
      viewParent.requestDisallowInterceptTouchEvent(false); 
  }
  
  protected abstract void b();
  
  public void b(int paramInt) {
    this.S.a(paramInt);
  }
  
  public void b(int paramInt, cew paramcew) {
    this.S.b(paramInt, paramcew);
  }
  
  public void b(int paramInt, cex paramcex) {
    this.S.b(paramInt, paramcex);
  }
  
  protected void b(Canvas paramCanvas) {
    if (this.K != null && this.K.K()) {
      float f1;
      float f2;
      cla cla = this.K.b();
      this.G.setTypeface(this.K.H());
      this.G.setTextSize(this.K.I());
      this.G.setColor(this.K.J());
      this.G.setTextAlign(this.K.c());
      if (cla == null) {
        f2 = getWidth() - this.R.c() - this.K.F();
        f1 = getHeight() - this.R.e() - this.K.G();
      } else {
        f2 = cla.a;
        f1 = cla.b;
      } 
      paramCanvas.drawText(this.K.a(), f2, f1, this.G);
    } 
  }
  
  public void b(Runnable paramRunnable) {
    if (this.R.a()) {
      post(paramRunnable);
      return;
    } 
    this.ag.add(paramRunnable);
  }
  
  public void b(chv[] paramArrayOfchv) {
    this.T = paramArrayOfchv;
    a(paramArrayOfchv);
    invalidate();
  }
  
  protected float[] b(chv paramchv) {
    return new float[] { paramchv.j(), paramchv.k() };
  }
  
  public void c(int paramInt) {
    this.S.b(paramInt);
  }
  
  protected void c(Canvas paramCanvas) {
    if (this.W != null && aB() && Y()) {
      int i = 0;
      while (true) {
        if (i < this.T.length) {
          chv chv1 = this.T[i];
          cio cio = this.D.a(chv1.f());
          Entry entry = this.D.a(this.T[i]);
          int j = cio.h(entry);
          if (entry != null && j <= cio.I() * this.S.b()) {
            float[] arrayOfFloat = b(chv1);
            if (this.R.h(arrayOfFloat[0], arrayOfFloat[1]))
              this.W.a(entry, chv1); 
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected void e(float paramFloat1, float paramFloat2) {
    if (this.D == null || this.D.n() < 2) {
      paramFloat1 = Math.max(Math.abs(paramFloat1), Math.abs(paramFloat2));
    } else {
      paramFloat1 = Math.abs(paramFloat2 - paramFloat1);
    } 
    int i = clg.c(paramFloat1);
    this.F.a(i);
  }
  
  public abstract void j();
  
  protected abstract void l();
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.j)
      a((View)this); 
  }
  
  protected void onDraw(Canvas paramCanvas) {
    boolean bool = true;
    if (this.D == null) {
      if (TextUtils.isEmpty(this.c))
        bool = false; 
      if (bool)
        al(); 
      return;
    } 
    if (!this.i) {
      l();
      this.i = true;
      return;
    } 
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i;
    for (i = 0; i < getChildCount(); i++)
      getChildAt(i).layout(paramInt1, paramInt2, paramInt3, paramInt4); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    int i = (int)clg.a(50.0F);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i, paramInt2)));
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (this.C)
      Log.i("MPAndroidChart", "OnSizeChanged()"); 
    if (paramInt1 > 0 && paramInt2 > 0 && paramInt1 < 10000 && paramInt2 < 10000) {
      this.R.a(paramInt1, paramInt2);
      if (this.C)
        Log.i("MPAndroidChart", "Setting chart dimens, width: " + paramInt1 + ", height: " + paramInt2); 
      Iterator<Runnable> iterator = this.ag.iterator();
      while (iterator.hasNext())
        post(iterator.next()); 
      this.ag.clear();
    } 
    j();
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setData(T paramT) {
    this.D = paramT;
    this.i = false;
    if (paramT != null) {
      e(paramT.e(), paramT.f());
      for (cio cio : this.D.i()) {
        if (cio.s() || cio.r() == this.F)
          cio.a((chn)this.F); 
      } 
      j();
      if (this.C) {
        Log.i("MPAndroidChart", "Data is set.");
        return;
      } 
    } 
  }
  
  public void setDescription(cfl paramcfl) {
    this.K = paramcfl;
  }
  
  public void setDragDecelerationEnabled(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public void setDragDecelerationFrictionCoef(float paramFloat) {
    float f = 0.0F;
    if (paramFloat < 0.0F)
      paramFloat = f; 
    f = paramFloat;
    if (paramFloat >= 1.0F)
      f = 0.999F; 
    this.b = f;
  }
  
  @Deprecated
  public void setDrawMarkerViews(boolean paramBoolean) {
    setDrawMarkers(paramBoolean);
  }
  
  public void setDrawMarkers(boolean paramBoolean) {
    this.V = paramBoolean;
  }
  
  public void setExtraBottomOffset(float paramFloat) {
    this.g = clg.a(paramFloat);
  }
  
  public void setExtraLeftOffset(float paramFloat) {
    this.h = clg.a(paramFloat);
  }
  
  public void setExtraOffsets(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    setExtraLeftOffset(paramFloat1);
    setExtraTopOffset(paramFloat2);
    setExtraRightOffset(paramFloat3);
    setExtraBottomOffset(paramFloat4);
  }
  
  public void setExtraRightOffset(float paramFloat) {
    this.f = clg.a(paramFloat);
  }
  
  public void setExtraTopOffset(float paramFloat) {
    this.e = clg.a(paramFloat);
  }
  
  public void setHardwareAccelerationEnabled(boolean paramBoolean) {
    if (Build.VERSION.SDK_INT >= 11) {
      if (paramBoolean) {
        setLayerType(2, null);
        return;
      } 
      setLayerType(1, null);
      return;
    } 
    Log.e("MPAndroidChart", "Cannot enable/disable hardware acceleration for devices below API level 11.");
  }
  
  public void setHighlightPerTapEnabled(boolean paramBoolean) {
    this.E = paramBoolean;
  }
  
  public void setHighlighter(cht paramcht) {
    this.Q = (chx)paramcht;
  }
  
  public void setLogEnabled(boolean paramBoolean) {
    this.C = paramBoolean;
  }
  
  public void setMarker(cfm paramcfm) {
    this.W = paramcfm;
  }
  
  @Deprecated
  public void setMarkerView(cfm paramcfm) {
    setMarker(paramcfm);
  }
  
  public void setMaxHighlightDistance(float paramFloat) {
    this.U = clg.a(paramFloat);
  }
  
  public void setNoDataText(String paramString) {
    this.c = paramString;
  }
  
  public void setNoDataTextColor(int paramInt) {
    this.H.setColor(paramInt);
  }
  
  public void setNoDataTextTypeface(Typeface paramTypeface) {
    this.H.setTypeface(paramTypeface);
  }
  
  public void setOnChartGestureListener(cje paramcje) {
    this.d = paramcje;
  }
  
  public void setOnChartValueSelectedListener(cjf paramcjf) {
    this.M = paramcjf;
  }
  
  public void setOnTouchListener(cjc paramcjc) {
    this.N = paramcjc;
  }
  
  public void setPaint(Paint paramPaint, int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 7:
        this.H = paramPaint;
        return;
      case 11:
        break;
    } 
    this.G = paramPaint;
  }
  
  public void setRenderer(cjt paramcjt) {
    if (paramcjt != null)
      this.P = paramcjt; 
  }
  
  public void setTouchEnabled(boolean paramBoolean) {
    this.J = paramBoolean;
  }
  
  public void setUnbindEnabled(boolean paramBoolean) {
    this.j = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\Chart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */