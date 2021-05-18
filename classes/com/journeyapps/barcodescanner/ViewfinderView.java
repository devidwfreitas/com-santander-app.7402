package com.journeyapps.barcodescanner;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import eqo;
import ery;
import ese;
import fcz;
import fdx;
import java.util.ArrayList;
import java.util.List;

public class ViewfinderView extends View {
  protected static final String a = ViewfinderView.class.getSimpleName();
  
  protected static final int[] b = new int[] { 0, 64, 128, 192, 255, 192, 128, 64 };
  
  protected static final long c = 80L;
  
  protected static final int d = 160;
  
  protected static final int e = 20;
  
  protected static final int f = 6;
  
  protected final Paint g = new Paint(1);
  
  protected Bitmap h;
  
  protected final int i;
  
  protected final int j;
  
  protected final int k;
  
  protected final int l;
  
  protected int m;
  
  protected List<eqo> n;
  
  protected List<eqo> o;
  
  protected CameraPreview p;
  
  protected Rect q;
  
  protected Rect r;
  
  public ViewfinderView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    Resources resources = getResources();
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, ese.zxing_finder);
    this.i = typedArray.getColor(ese.zxing_finder_zxing_viewfinder_mask, resources.getColor(ery.zxing_viewfinder_mask));
    this.j = typedArray.getColor(ese.zxing_finder_zxing_result_view, resources.getColor(ery.zxing_result_view));
    this.k = typedArray.getColor(ese.zxing_finder_zxing_viewfinder_laser, resources.getColor(ery.zxing_viewfinder_laser));
    this.l = typedArray.getColor(ese.zxing_finder_zxing_possible_result_points, resources.getColor(ery.zxing_possible_result_points));
    typedArray.recycle();
    this.m = 0;
    this.n = new ArrayList<eqo>(5);
    this.o = null;
  }
  
  public void a() {
    if (this.p != null) {
      Rect rect1 = this.p.g();
      Rect rect2 = this.p.h();
      if (rect1 != null && rect2 != null) {
        this.q = rect1;
        this.r = rect2;
        return;
      } 
    } 
  }
  
  public void a(Bitmap paramBitmap) {
    this.h = paramBitmap;
    invalidate();
  }
  
  public void a(eqo parameqo) {
    List<eqo> list = this.n;
    list.add(parameqo);
    int i = list.size();
    if (i > 20)
      list.subList(0, i - 10).clear(); 
  }
  
  public void b() {
    Bitmap bitmap = this.h;
    this.h = null;
    if (bitmap != null)
      bitmap.recycle(); 
    invalidate();
  }
  
  @SuppressLint({"DrawAllocation"})
  public void onDraw(Canvas paramCanvas) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual a : ()V
    //   4: aload_0
    //   5: getfield q : Landroid/graphics/Rect;
    //   8: ifnull -> 18
    //   11: aload_0
    //   12: getfield r : Landroid/graphics/Rect;
    //   15: ifnonnull -> 19
    //   18: return
    //   19: aload_0
    //   20: getfield q : Landroid/graphics/Rect;
    //   23: astore #7
    //   25: aload_0
    //   26: getfield r : Landroid/graphics/Rect;
    //   29: astore #8
    //   31: aload_1
    //   32: invokevirtual getWidth : ()I
    //   35: istore #5
    //   37: aload_1
    //   38: invokevirtual getHeight : ()I
    //   41: istore #6
    //   43: aload_0
    //   44: getfield g : Landroid/graphics/Paint;
    //   47: astore #9
    //   49: aload_0
    //   50: getfield h : Landroid/graphics/Bitmap;
    //   53: ifnull -> 206
    //   56: aload_0
    //   57: getfield j : I
    //   60: istore #4
    //   62: aload #9
    //   64: iload #4
    //   66: invokevirtual setColor : (I)V
    //   69: aload_1
    //   70: fconst_0
    //   71: fconst_0
    //   72: iload #5
    //   74: i2f
    //   75: aload #7
    //   77: getfield top : I
    //   80: i2f
    //   81: aload_0
    //   82: getfield g : Landroid/graphics/Paint;
    //   85: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   88: aload_1
    //   89: fconst_0
    //   90: aload #7
    //   92: getfield top : I
    //   95: i2f
    //   96: aload #7
    //   98: getfield left : I
    //   101: i2f
    //   102: aload #7
    //   104: getfield bottom : I
    //   107: iconst_1
    //   108: iadd
    //   109: i2f
    //   110: aload_0
    //   111: getfield g : Landroid/graphics/Paint;
    //   114: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   117: aload_1
    //   118: aload #7
    //   120: getfield right : I
    //   123: iconst_1
    //   124: iadd
    //   125: i2f
    //   126: aload #7
    //   128: getfield top : I
    //   131: i2f
    //   132: iload #5
    //   134: i2f
    //   135: aload #7
    //   137: getfield bottom : I
    //   140: iconst_1
    //   141: iadd
    //   142: i2f
    //   143: aload_0
    //   144: getfield g : Landroid/graphics/Paint;
    //   147: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   150: aload_1
    //   151: fconst_0
    //   152: aload #7
    //   154: getfield bottom : I
    //   157: iconst_1
    //   158: iadd
    //   159: i2f
    //   160: iload #5
    //   162: i2f
    //   163: iload #6
    //   165: i2f
    //   166: aload_0
    //   167: getfield g : Landroid/graphics/Paint;
    //   170: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   173: aload_0
    //   174: getfield h : Landroid/graphics/Bitmap;
    //   177: ifnull -> 215
    //   180: aload_0
    //   181: getfield g : Landroid/graphics/Paint;
    //   184: sipush #160
    //   187: invokevirtual setAlpha : (I)V
    //   190: aload_1
    //   191: aload_0
    //   192: getfield h : Landroid/graphics/Bitmap;
    //   195: aconst_null
    //   196: aload #7
    //   198: aload_0
    //   199: getfield g : Landroid/graphics/Paint;
    //   202: invokevirtual drawBitmap : (Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   205: return
    //   206: aload_0
    //   207: getfield i : I
    //   210: istore #4
    //   212: goto -> 62
    //   215: aload_0
    //   216: getfield g : Landroid/graphics/Paint;
    //   219: aload_0
    //   220: getfield k : I
    //   223: invokevirtual setColor : (I)V
    //   226: aload_0
    //   227: getfield g : Landroid/graphics/Paint;
    //   230: getstatic com/journeyapps/barcodescanner/ViewfinderView.b : [I
    //   233: aload_0
    //   234: getfield m : I
    //   237: iaload
    //   238: invokevirtual setAlpha : (I)V
    //   241: aload_0
    //   242: aload_0
    //   243: getfield m : I
    //   246: iconst_1
    //   247: iadd
    //   248: getstatic com/journeyapps/barcodescanner/ViewfinderView.b : [I
    //   251: arraylength
    //   252: irem
    //   253: putfield m : I
    //   256: aload #7
    //   258: invokevirtual height : ()I
    //   261: iconst_2
    //   262: idiv
    //   263: aload #7
    //   265: getfield top : I
    //   268: iadd
    //   269: istore #4
    //   271: aload_1
    //   272: aload #7
    //   274: getfield left : I
    //   277: iconst_2
    //   278: iadd
    //   279: i2f
    //   280: iload #4
    //   282: iconst_1
    //   283: isub
    //   284: i2f
    //   285: aload #7
    //   287: getfield right : I
    //   290: iconst_1
    //   291: isub
    //   292: i2f
    //   293: iload #4
    //   295: iconst_2
    //   296: iadd
    //   297: i2f
    //   298: aload_0
    //   299: getfield g : Landroid/graphics/Paint;
    //   302: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   305: aload #7
    //   307: invokevirtual width : ()I
    //   310: i2f
    //   311: aload #8
    //   313: invokevirtual width : ()I
    //   316: i2f
    //   317: fdiv
    //   318: fstore_2
    //   319: aload #7
    //   321: invokevirtual height : ()I
    //   324: i2f
    //   325: aload #8
    //   327: invokevirtual height : ()I
    //   330: i2f
    //   331: fdiv
    //   332: fstore_3
    //   333: aload_0
    //   334: getfield n : Ljava/util/List;
    //   337: astore #9
    //   339: aload_0
    //   340: getfield o : Ljava/util/List;
    //   343: astore #8
    //   345: aload #7
    //   347: getfield left : I
    //   350: istore #4
    //   352: aload #7
    //   354: getfield top : I
    //   357: istore #5
    //   359: aload #9
    //   361: invokeinterface isEmpty : ()Z
    //   366: ifeq -> 467
    //   369: aload_0
    //   370: aconst_null
    //   371: putfield o : Ljava/util/List;
    //   374: aload #8
    //   376: ifnull -> 575
    //   379: aload_0
    //   380: getfield g : Landroid/graphics/Paint;
    //   383: bipush #80
    //   385: invokevirtual setAlpha : (I)V
    //   388: aload_0
    //   389: getfield g : Landroid/graphics/Paint;
    //   392: aload_0
    //   393: getfield l : I
    //   396: invokevirtual setColor : (I)V
    //   399: aload #8
    //   401: invokeinterface iterator : ()Ljava/util/Iterator;
    //   406: astore #8
    //   408: aload #8
    //   410: invokeinterface hasNext : ()Z
    //   415: ifeq -> 575
    //   418: aload #8
    //   420: invokeinterface next : ()Ljava/lang/Object;
    //   425: checkcast eqo
    //   428: astore #9
    //   430: aload_1
    //   431: aload #9
    //   433: invokevirtual a : ()F
    //   436: fload_2
    //   437: fmul
    //   438: f2i
    //   439: iload #4
    //   441: iadd
    //   442: i2f
    //   443: aload #9
    //   445: invokevirtual b : ()F
    //   448: fload_3
    //   449: fmul
    //   450: f2i
    //   451: iload #5
    //   453: iadd
    //   454: i2f
    //   455: ldc 3.0
    //   457: aload_0
    //   458: getfield g : Landroid/graphics/Paint;
    //   461: invokevirtual drawCircle : (FFFLandroid/graphics/Paint;)V
    //   464: goto -> 408
    //   467: aload_0
    //   468: new java/util/ArrayList
    //   471: dup
    //   472: iconst_5
    //   473: invokespecial <init> : (I)V
    //   476: putfield n : Ljava/util/List;
    //   479: aload_0
    //   480: aload #9
    //   482: putfield o : Ljava/util/List;
    //   485: aload_0
    //   486: getfield g : Landroid/graphics/Paint;
    //   489: sipush #160
    //   492: invokevirtual setAlpha : (I)V
    //   495: aload_0
    //   496: getfield g : Landroid/graphics/Paint;
    //   499: aload_0
    //   500: getfield l : I
    //   503: invokevirtual setColor : (I)V
    //   506: aload #9
    //   508: invokeinterface iterator : ()Ljava/util/Iterator;
    //   513: astore #9
    //   515: aload #9
    //   517: invokeinterface hasNext : ()Z
    //   522: ifeq -> 374
    //   525: aload #9
    //   527: invokeinterface next : ()Ljava/lang/Object;
    //   532: checkcast eqo
    //   535: astore #10
    //   537: aload_1
    //   538: aload #10
    //   540: invokevirtual a : ()F
    //   543: fload_2
    //   544: fmul
    //   545: f2i
    //   546: iload #4
    //   548: iadd
    //   549: i2f
    //   550: aload #10
    //   552: invokevirtual b : ()F
    //   555: fload_3
    //   556: fmul
    //   557: f2i
    //   558: iload #5
    //   560: iadd
    //   561: i2f
    //   562: ldc_w 6.0
    //   565: aload_0
    //   566: getfield g : Landroid/graphics/Paint;
    //   569: invokevirtual drawCircle : (FFFLandroid/graphics/Paint;)V
    //   572: goto -> 515
    //   575: aload_0
    //   576: ldc2_w 80
    //   579: aload #7
    //   581: getfield left : I
    //   584: bipush #6
    //   586: isub
    //   587: aload #7
    //   589: getfield top : I
    //   592: bipush #6
    //   594: isub
    //   595: aload #7
    //   597: getfield right : I
    //   600: bipush #6
    //   602: iadd
    //   603: aload #7
    //   605: getfield bottom : I
    //   608: bipush #6
    //   610: iadd
    //   611: invokevirtual postInvalidateDelayed : (JIIII)V
    //   614: return
  }
  
  public void setCameraPreview(CameraPreview paramCameraPreview) {
    this.p = paramCameraPreview;
    paramCameraPreview.a((fcz)new fdx(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\journeyapps\barcodescanner\ViewfinderView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */