package com.santander.app.components.view.zxing;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.ViewfinderView;
import eqo;
import ese;
import fcz;
import gur;
import java.util.ArrayList;
import java.util.List;

public class QrViewfinderView extends ViewfinderView {
  protected static final String s = QrViewfinderView.class.getSimpleName();
  
  protected static final int[] t = new int[] { 0, 64, 128, 192, 255, 192, 128, 64 };
  
  protected static final long u = 80L;
  
  protected static final int v = 160;
  
  protected static final int w = 20;
  
  protected static final int x = 6;
  
  protected final int A;
  
  protected final int B;
  
  protected final int C;
  
  protected final int D;
  
  protected int E;
  
  protected List<eqo> F;
  
  protected List<eqo> G;
  
  protected CameraPreview H;
  
  protected Rect I;
  
  protected Rect J;
  
  protected final Paint y = new Paint(1);
  
  protected Bitmap z;
  
  public QrViewfinderView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    Resources resources = getResources();
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, ese.zxing_finder);
    this.A = typedArray.getColor(3, resources.getColor(2131624383));
    this.B = typedArray.getColor(1, resources.getColor(2131624379));
    this.C = typedArray.getColor(2, resources.getColor(2131624382));
    this.D = typedArray.getColor(0, resources.getColor(2131624378));
    typedArray.recycle();
    this.E = 0;
    this.F = new ArrayList<eqo>(5);
    this.G = null;
  }
  
  public void a() {
    if (this.H != null) {
      Rect rect1 = this.H.g();
      Rect rect2 = this.H.h();
      if (rect1 != null && rect2 != null) {
        this.I = rect1;
        this.J = rect2;
        return;
      } 
    } 
  }
  
  public void a(Bitmap paramBitmap) {
    this.z = paramBitmap;
    invalidate();
  }
  
  public void a(eqo parameqo) {
    List<eqo> list = this.F;
    list.add(parameqo);
    int i = list.size();
    if (i > 20)
      list.subList(0, i - 10).clear(); 
  }
  
  public void b() {
    Bitmap bitmap = this.z;
    this.z = null;
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
    //   5: getfield I : Landroid/graphics/Rect;
    //   8: ifnull -> 18
    //   11: aload_0
    //   12: getfield J : Landroid/graphics/Rect;
    //   15: ifnonnull -> 19
    //   18: return
    //   19: aload_0
    //   20: getfield I : Landroid/graphics/Rect;
    //   23: astore #7
    //   25: aload_0
    //   26: getfield J : Landroid/graphics/Rect;
    //   29: astore #8
    //   31: aload_1
    //   32: invokevirtual getWidth : ()I
    //   35: istore #5
    //   37: aload_1
    //   38: invokevirtual getHeight : ()I
    //   41: istore #6
    //   43: aload_0
    //   44: getfield y : Landroid/graphics/Paint;
    //   47: astore #9
    //   49: aload_0
    //   50: getfield z : Landroid/graphics/Bitmap;
    //   53: ifnull -> 206
    //   56: aload_0
    //   57: getfield B : I
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
    //   82: getfield y : Landroid/graphics/Paint;
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
    //   111: getfield y : Landroid/graphics/Paint;
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
    //   144: getfield y : Landroid/graphics/Paint;
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
    //   167: getfield y : Landroid/graphics/Paint;
    //   170: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   173: aload_0
    //   174: getfield z : Landroid/graphics/Bitmap;
    //   177: ifnull -> 215
    //   180: aload_0
    //   181: getfield y : Landroid/graphics/Paint;
    //   184: sipush #160
    //   187: invokevirtual setAlpha : (I)V
    //   190: aload_1
    //   191: aload_0
    //   192: getfield z : Landroid/graphics/Bitmap;
    //   195: aconst_null
    //   196: aload #7
    //   198: aload_0
    //   199: getfield y : Landroid/graphics/Paint;
    //   202: invokevirtual drawBitmap : (Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   205: return
    //   206: aload_0
    //   207: getfield A : I
    //   210: istore #4
    //   212: goto -> 62
    //   215: new android/graphics/Paint
    //   218: dup
    //   219: iconst_1
    //   220: invokespecial <init> : (I)V
    //   223: astore #9
    //   225: aload #9
    //   227: aload_0
    //   228: getfield C : I
    //   231: invokevirtual setColor : (I)V
    //   234: aload #9
    //   236: getstatic com/santander/app/components/view/zxing/QrViewfinderView.t : [I
    //   239: aload_0
    //   240: getfield E : I
    //   243: iaload
    //   244: invokevirtual setAlpha : (I)V
    //   247: aload #9
    //   249: ldc 4.0
    //   251: invokevirtual setStrokeWidth : (F)V
    //   254: aload #9
    //   256: getstatic android/graphics/Paint$Style.STROKE : Landroid/graphics/Paint$Style;
    //   259: invokevirtual setStyle : (Landroid/graphics/Paint$Style;)V
    //   262: aload_0
    //   263: aload_0
    //   264: getfield E : I
    //   267: iconst_1
    //   268: iadd
    //   269: getstatic com/santander/app/components/view/zxing/QrViewfinderView.t : [I
    //   272: arraylength
    //   273: irem
    //   274: putfield E : I
    //   277: aload_1
    //   278: aload #7
    //   280: getfield left : I
    //   283: i2f
    //   284: aload #7
    //   286: getfield top : I
    //   289: i2f
    //   290: aload #7
    //   292: getfield right : I
    //   295: i2f
    //   296: aload #7
    //   298: getfield bottom : I
    //   301: i2f
    //   302: aload #9
    //   304: invokevirtual drawRect : (FFFFLandroid/graphics/Paint;)V
    //   307: aload #7
    //   309: invokevirtual width : ()I
    //   312: i2f
    //   313: aload #8
    //   315: invokevirtual width : ()I
    //   318: i2f
    //   319: fdiv
    //   320: fstore_2
    //   321: aload #7
    //   323: invokevirtual height : ()I
    //   326: i2f
    //   327: aload #8
    //   329: invokevirtual height : ()I
    //   332: i2f
    //   333: fdiv
    //   334: fstore_3
    //   335: aload_0
    //   336: getfield F : Ljava/util/List;
    //   339: astore #9
    //   341: aload_0
    //   342: getfield G : Ljava/util/List;
    //   345: astore #8
    //   347: aload #7
    //   349: getfield left : I
    //   352: istore #4
    //   354: aload #7
    //   356: getfield top : I
    //   359: istore #5
    //   361: aload #9
    //   363: invokeinterface isEmpty : ()Z
    //   368: ifeq -> 469
    //   371: aload_0
    //   372: aconst_null
    //   373: putfield G : Ljava/util/List;
    //   376: aload #8
    //   378: ifnull -> 576
    //   381: aload_0
    //   382: getfield y : Landroid/graphics/Paint;
    //   385: bipush #80
    //   387: invokevirtual setAlpha : (I)V
    //   390: aload_0
    //   391: getfield y : Landroid/graphics/Paint;
    //   394: aload_0
    //   395: getfield D : I
    //   398: invokevirtual setColor : (I)V
    //   401: aload #8
    //   403: invokeinterface iterator : ()Ljava/util/Iterator;
    //   408: astore #8
    //   410: aload #8
    //   412: invokeinterface hasNext : ()Z
    //   417: ifeq -> 576
    //   420: aload #8
    //   422: invokeinterface next : ()Ljava/lang/Object;
    //   427: checkcast eqo
    //   430: astore #9
    //   432: aload_1
    //   433: aload #9
    //   435: invokevirtual a : ()F
    //   438: fload_2
    //   439: fmul
    //   440: f2i
    //   441: iload #4
    //   443: iadd
    //   444: i2f
    //   445: aload #9
    //   447: invokevirtual b : ()F
    //   450: fload_3
    //   451: fmul
    //   452: f2i
    //   453: iload #5
    //   455: iadd
    //   456: i2f
    //   457: ldc 3.0
    //   459: aload_0
    //   460: getfield y : Landroid/graphics/Paint;
    //   463: invokevirtual drawCircle : (FFFLandroid/graphics/Paint;)V
    //   466: goto -> 410
    //   469: aload_0
    //   470: new java/util/ArrayList
    //   473: dup
    //   474: iconst_5
    //   475: invokespecial <init> : (I)V
    //   478: putfield F : Ljava/util/List;
    //   481: aload_0
    //   482: aload #9
    //   484: putfield G : Ljava/util/List;
    //   487: aload_0
    //   488: getfield y : Landroid/graphics/Paint;
    //   491: sipush #160
    //   494: invokevirtual setAlpha : (I)V
    //   497: aload_0
    //   498: getfield y : Landroid/graphics/Paint;
    //   501: aload_0
    //   502: getfield D : I
    //   505: invokevirtual setColor : (I)V
    //   508: aload #9
    //   510: invokeinterface iterator : ()Ljava/util/Iterator;
    //   515: astore #9
    //   517: aload #9
    //   519: invokeinterface hasNext : ()Z
    //   524: ifeq -> 376
    //   527: aload #9
    //   529: invokeinterface next : ()Ljava/lang/Object;
    //   534: checkcast eqo
    //   537: astore #10
    //   539: aload_1
    //   540: aload #10
    //   542: invokevirtual a : ()F
    //   545: fload_2
    //   546: fmul
    //   547: f2i
    //   548: iload #4
    //   550: iadd
    //   551: i2f
    //   552: aload #10
    //   554: invokevirtual b : ()F
    //   557: fload_3
    //   558: fmul
    //   559: f2i
    //   560: iload #5
    //   562: iadd
    //   563: i2f
    //   564: ldc 6.0
    //   566: aload_0
    //   567: getfield y : Landroid/graphics/Paint;
    //   570: invokevirtual drawCircle : (FFFLandroid/graphics/Paint;)V
    //   573: goto -> 517
    //   576: aload_0
    //   577: ldc2_w 80
    //   580: aload #7
    //   582: getfield left : I
    //   585: bipush #6
    //   587: isub
    //   588: aload #7
    //   590: getfield top : I
    //   593: bipush #6
    //   595: isub
    //   596: aload #7
    //   598: getfield right : I
    //   601: bipush #6
    //   603: iadd
    //   604: aload #7
    //   606: getfield bottom : I
    //   609: bipush #6
    //   611: iadd
    //   612: invokevirtual postInvalidateDelayed : (JIIII)V
    //   615: return
  }
  
  public void setCameraPreview(CameraPreview paramCameraPreview) {
    this.H = paramCameraPreview;
    paramCameraPreview.a((fcz)new gur(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\zxing\QrViewfinderView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */