import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.List;

public abstract class clg {
  public static final double a = 0.017453292519943295D;
  
  public static final float b = 0.017453292F;
  
  public static final double c;
  
  public static final float d;
  
  private static DisplayMetrics e;
  
  private static int f = 50;
  
  private static int g = 8000;
  
  private static Rect h;
  
  private static Paint.FontMetrics i;
  
  private static Rect j;
  
  private static final int[] k;
  
  private static chn l;
  
  private static Rect m;
  
  private static Paint.FontMetrics n;
  
  static {
    c = Double.longBitsToDouble(1L);
    d = Float.intBitsToFloat(1);
    h = new Rect();
    i = new Paint.FontMetrics();
    j = new Rect();
    k = new int[] { 1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000 };
    l = e();
    m = new Rect();
    n = new Paint.FontMetrics();
  }
  
  public static float a(double paramDouble) {
    if (Double.isInfinite(paramDouble) || Double.isNaN(paramDouble) || paramDouble == 0.0D)
      return 0.0F; 
    if (paramDouble < 0.0D) {
      double d1 = -paramDouble;
      float f1 = (float)Math.pow(10.0D, (1 - (int)(float)Math.ceil((float)Math.log10(d1))));
      return (float)Math.round(f1 * paramDouble) / f1;
    } 
    double d = paramDouble;
    float f = (float)Math.pow(10.0D, (1 - (int)(float)Math.ceil((float)Math.log10(d))));
    return (float)Math.round(f * paramDouble) / f;
  }
  
  public static float a(float paramFloat) {
    if (e == null) {
      Log.e("MPChartLib-Utils", "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place.");
      return paramFloat;
    } 
    return paramFloat * e.densityDpi / 160.0F;
  }
  
  public static float a(Paint paramPaint) {
    return a(paramPaint, i);
  }
  
  public static float a(Paint paramPaint, Paint.FontMetrics paramFontMetrics) {
    paramPaint.getFontMetrics(paramFontMetrics);
    return paramFontMetrics.descent - paramFontMetrics.ascent;
  }
  
  public static int a(Paint paramPaint, String paramString) {
    return (int)paramPaint.measureText(paramString);
  }
  
  public static chn a() {
    return l;
  }
  
  public static ckw a(float paramFloat1, float paramFloat2, float paramFloat3) {
    return b(paramFloat1, paramFloat2, 0.017453292F * paramFloat3);
  }
  
  public static ckw a(ckw paramckw, float paramFloat) {
    return b(paramckw.a, paramckw.b, 0.017453292F * paramFloat);
  }
  
  public static cla a(cla paramcla, float paramFloat1, float paramFloat2) {
    cla cla1 = cla.a(0.0F, 0.0F);
    a(paramcla, paramFloat1, paramFloat2, cla1);
    return cla1;
  }
  
  public static String a(float paramFloat, int paramInt, boolean paramBoolean) {
    return a(paramFloat, paramInt, paramBoolean, '.');
  }
  
  public static String a(float paramFloat, int paramInt, boolean paramBoolean, char paramChar) {
    int j;
    char[] arrayOfChar = new char[35];
    boolean bool1 = false;
    if (paramFloat == 0.0F)
      return "0"; 
    if (paramFloat < 1.0F && paramFloat > -1.0F) {
      j = 1;
    } else {
      j = 0;
    } 
    float f = paramFloat;
    if (paramFloat < 0.0F) {
      bool1 = true;
      f = -paramFloat;
    } 
    int k = paramInt;
    if (paramInt > k.length)
      k = k.length - 1; 
    long l = Math.round(k[k] * f);
    paramInt = arrayOfChar.length - 1;
    int i = 0;
    boolean bool2 = false;
    while (true) {
      int m;
      if (l != 0L || i < k + 1) {
        int n = (int)(l % 10L);
        l /= 10L;
        m = paramInt - 1;
        arrayOfChar[paramInt] = (char)(n + 48);
        paramInt = i + 1;
        if (paramInt == k) {
          i = m - 1;
          arrayOfChar[m] = ',';
          paramInt++;
          bool2 = true;
          continue;
        } 
        if (paramBoolean && l != 0L && paramInt > k)
          if (bool2) {
            if ((paramInt - k) % 4 == 0) {
              i = m - 1;
              arrayOfChar[m] = paramChar;
              paramInt++;
              continue;
            } 
          } else if ((paramInt - k) % 4 == 3) {
            i = m - 1;
            arrayOfChar[m] = paramChar;
            paramInt++;
            continue;
          }  
      } else {
        if (j) {
          arrayOfChar[paramInt] = '0';
          j = i + 1;
          i = paramInt - 1;
          paramInt = j;
        } else {
          j = paramInt;
          paramInt = i;
          i = j;
        } 
        if (bool1) {
          arrayOfChar[i] = '-';
          paramInt++;
        } 
        paramInt = arrayOfChar.length - paramInt;
        return String.valueOf(arrayOfChar, paramInt, arrayOfChar.length - paramInt);
      } 
      i = m;
      continue;
      m = i;
      i = paramInt;
      paramInt = m;
    } 
  }
  
  public static void a(Context paramContext) {
    if (paramContext == null) {
      f = ViewConfiguration.getMinimumFlingVelocity();
      g = ViewConfiguration.getMaximumFlingVelocity();
      Log.e("MPChartLib-Utils", "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL");
      return;
    } 
    ViewConfiguration viewConfiguration = ViewConfiguration.get(paramContext);
    f = viewConfiguration.getScaledMinimumFlingVelocity();
    g = viewConfiguration.getScaledMaximumFlingVelocity();
    e = paramContext.getResources().getDisplayMetrics();
  }
  
  @Deprecated
  public static void a(Resources paramResources) {
    e = paramResources.getDisplayMetrics();
    f = ViewConfiguration.getMinimumFlingVelocity();
    g = ViewConfiguration.getMaximumFlingVelocity();
  }
  
  public static void a(Canvas paramCanvas, StaticLayout paramStaticLayout, float paramFloat1, float paramFloat2, TextPaint paramTextPaint, cla paramcla, float paramFloat3) {
    // Byte code:
    //   0: aload #4
    //   2: getstatic clg.n : Landroid/graphics/Paint$FontMetrics;
    //   5: invokevirtual getFontMetrics : (Landroid/graphics/Paint$FontMetrics;)F
    //   8: fstore #7
    //   10: aload_1
    //   11: invokevirtual getWidth : ()I
    //   14: i2f
    //   15: fstore #11
    //   17: aload_1
    //   18: invokevirtual getLineCount : ()I
    //   21: i2f
    //   22: fload #7
    //   24: fmul
    //   25: fstore #12
    //   27: fconst_0
    //   28: getstatic clg.m : Landroid/graphics/Rect;
    //   31: getfield left : I
    //   34: i2f
    //   35: fsub
    //   36: fstore #10
    //   38: fconst_0
    //   39: fload #12
    //   41: fadd
    //   42: fstore #9
    //   44: aload #4
    //   46: invokevirtual getTextAlign : ()Landroid/graphics/Paint$Align;
    //   49: astore #13
    //   51: aload #4
    //   53: getstatic android/graphics/Paint$Align.LEFT : Landroid/graphics/Paint$Align;
    //   56: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   59: fload #6
    //   61: fconst_0
    //   62: fcmpl
    //   63: ifeq -> 202
    //   66: aload #5
    //   68: getfield a : F
    //   71: ldc 0.5
    //   73: fcmpl
    //   74: ifne -> 94
    //   77: fload_2
    //   78: fstore #8
    //   80: fload_3
    //   81: fstore #7
    //   83: aload #5
    //   85: getfield b : F
    //   88: ldc 0.5
    //   90: fcmpl
    //   91: ifeq -> 146
    //   94: fload #11
    //   96: fload #12
    //   98: fload #6
    //   100: invokestatic a : (FFF)Lckw;
    //   103: astore #14
    //   105: fload_2
    //   106: aload #14
    //   108: getfield a : F
    //   111: aload #5
    //   113: getfield a : F
    //   116: ldc 0.5
    //   118: fsub
    //   119: fmul
    //   120: fsub
    //   121: fstore #8
    //   123: fload_3
    //   124: aload #14
    //   126: getfield b : F
    //   129: aload #5
    //   131: getfield b : F
    //   134: ldc 0.5
    //   136: fsub
    //   137: fmul
    //   138: fsub
    //   139: fstore #7
    //   141: aload #14
    //   143: invokestatic a : (Lckw;)V
    //   146: aload_0
    //   147: invokevirtual save : ()I
    //   150: pop
    //   151: aload_0
    //   152: fload #8
    //   154: fload #7
    //   156: invokevirtual translate : (FF)V
    //   159: aload_0
    //   160: fload #6
    //   162: invokevirtual rotate : (F)V
    //   165: aload_0
    //   166: fload #10
    //   168: fload #11
    //   170: ldc 0.5
    //   172: fmul
    //   173: fsub
    //   174: fload #9
    //   176: fload #12
    //   178: ldc 0.5
    //   180: fmul
    //   181: fsub
    //   182: invokevirtual translate : (FF)V
    //   185: aload_1
    //   186: aload_0
    //   187: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   190: aload_0
    //   191: invokevirtual restore : ()V
    //   194: aload #4
    //   196: aload #13
    //   198: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   201: return
    //   202: aload #5
    //   204: getfield a : F
    //   207: fconst_0
    //   208: fcmpl
    //   209: ifne -> 230
    //   212: fload #9
    //   214: fstore #7
    //   216: fload #10
    //   218: fstore #6
    //   220: aload #5
    //   222: getfield b : F
    //   225: fconst_0
    //   226: fcmpl
    //   227: ifeq -> 256
    //   230: fload #10
    //   232: fload #11
    //   234: aload #5
    //   236: getfield a : F
    //   239: fmul
    //   240: fsub
    //   241: fstore #6
    //   243: fload #9
    //   245: aload #5
    //   247: getfield b : F
    //   250: fload #12
    //   252: fmul
    //   253: fsub
    //   254: fstore #7
    //   256: aload_0
    //   257: invokevirtual save : ()I
    //   260: pop
    //   261: aload_0
    //   262: fload #6
    //   264: fload_2
    //   265: fadd
    //   266: fload #7
    //   268: fload_3
    //   269: fadd
    //   270: invokevirtual translate : (FF)V
    //   273: aload_1
    //   274: aload_0
    //   275: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   278: aload_0
    //   279: invokevirtual restore : ()V
    //   282: goto -> 194
  }
  
  public static void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint, cla paramcla, float paramFloat3) {
    // Byte code:
    //   0: aload #4
    //   2: getstatic clg.n : Landroid/graphics/Paint$FontMetrics;
    //   5: invokevirtual getFontMetrics : (Landroid/graphics/Paint$FontMetrics;)F
    //   8: fstore #11
    //   10: aload #4
    //   12: aload_1
    //   13: iconst_0
    //   14: aload_1
    //   15: invokevirtual length : ()I
    //   18: getstatic clg.m : Landroid/graphics/Rect;
    //   21: invokevirtual getTextBounds : (Ljava/lang/String;IILandroid/graphics/Rect;)V
    //   24: fconst_0
    //   25: getstatic clg.m : Landroid/graphics/Rect;
    //   28: getfield left : I
    //   31: i2f
    //   32: fsub
    //   33: fstore #10
    //   35: getstatic clg.n : Landroid/graphics/Paint$FontMetrics;
    //   38: getfield ascent : F
    //   41: fneg
    //   42: fconst_0
    //   43: fadd
    //   44: fstore #9
    //   46: aload #4
    //   48: invokevirtual getTextAlign : ()Landroid/graphics/Paint$Align;
    //   51: astore #13
    //   53: aload #4
    //   55: getstatic android/graphics/Paint$Align.LEFT : Landroid/graphics/Paint$Align;
    //   58: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   61: fload #6
    //   63: fconst_0
    //   64: fcmpl
    //   65: ifeq -> 216
    //   68: getstatic clg.m : Landroid/graphics/Rect;
    //   71: invokevirtual width : ()I
    //   74: i2f
    //   75: fstore #12
    //   77: aload #5
    //   79: getfield a : F
    //   82: ldc 0.5
    //   84: fcmpl
    //   85: ifne -> 105
    //   88: fload_2
    //   89: fstore #8
    //   91: fload_3
    //   92: fstore #7
    //   94: aload #5
    //   96: getfield b : F
    //   99: ldc 0.5
    //   101: fcmpl
    //   102: ifeq -> 162
    //   105: getstatic clg.m : Landroid/graphics/Rect;
    //   108: invokevirtual width : ()I
    //   111: i2f
    //   112: fload #11
    //   114: fload #6
    //   116: invokestatic a : (FFF)Lckw;
    //   119: astore #14
    //   121: fload_2
    //   122: aload #14
    //   124: getfield a : F
    //   127: aload #5
    //   129: getfield a : F
    //   132: ldc 0.5
    //   134: fsub
    //   135: fmul
    //   136: fsub
    //   137: fstore #8
    //   139: fload_3
    //   140: aload #14
    //   142: getfield b : F
    //   145: aload #5
    //   147: getfield b : F
    //   150: ldc 0.5
    //   152: fsub
    //   153: fmul
    //   154: fsub
    //   155: fstore #7
    //   157: aload #14
    //   159: invokestatic a : (Lckw;)V
    //   162: aload_0
    //   163: invokevirtual save : ()I
    //   166: pop
    //   167: aload_0
    //   168: fload #8
    //   170: fload #7
    //   172: invokevirtual translate : (FF)V
    //   175: aload_0
    //   176: fload #6
    //   178: invokevirtual rotate : (F)V
    //   181: aload_0
    //   182: aload_1
    //   183: fload #10
    //   185: fload #12
    //   187: ldc 0.5
    //   189: fmul
    //   190: fsub
    //   191: fload #9
    //   193: fload #11
    //   195: ldc 0.5
    //   197: fmul
    //   198: fsub
    //   199: aload #4
    //   201: invokevirtual drawText : (Ljava/lang/String;FFLandroid/graphics/Paint;)V
    //   204: aload_0
    //   205: invokevirtual restore : ()V
    //   208: aload #4
    //   210: aload #13
    //   212: invokevirtual setTextAlign : (Landroid/graphics/Paint$Align;)V
    //   215: return
    //   216: aload #5
    //   218: getfield a : F
    //   221: fconst_0
    //   222: fcmpl
    //   223: ifne -> 244
    //   226: fload #9
    //   228: fstore #7
    //   230: fload #10
    //   232: fstore #6
    //   234: aload #5
    //   236: getfield b : F
    //   239: fconst_0
    //   240: fcmpl
    //   241: ifeq -> 275
    //   244: fload #10
    //   246: getstatic clg.m : Landroid/graphics/Rect;
    //   249: invokevirtual width : ()I
    //   252: i2f
    //   253: aload #5
    //   255: getfield a : F
    //   258: fmul
    //   259: fsub
    //   260: fstore #6
    //   262: fload #9
    //   264: fload #11
    //   266: aload #5
    //   268: getfield b : F
    //   271: fmul
    //   272: fsub
    //   273: fstore #7
    //   275: aload_0
    //   276: aload_1
    //   277: fload #6
    //   279: fload_2
    //   280: fadd
    //   281: fload #7
    //   283: fload_3
    //   284: fadd
    //   285: aload #4
    //   287: invokevirtual drawText : (Ljava/lang/String;FFLandroid/graphics/Paint;)V
    //   290: goto -> 208
  }
  
  public static void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, TextPaint paramTextPaint, ckw paramckw, cla paramcla, float paramFloat3) {
    a(paramCanvas, new StaticLayout(paramString, 0, paramString.length(), paramTextPaint, (int)Math.max(Math.ceil(paramckw.a), 1.0D), Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false), paramFloat1, paramFloat2, paramTextPaint, paramcla, paramFloat3);
  }
  
  public static void a(Paint paramPaint, String paramString, ckw paramckw) {
    Rect rect = j;
    rect.set(0, 0, 0, 0);
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    paramckw.a = rect.width();
    paramckw.b = rect.height();
  }
  
  public static void a(MotionEvent paramMotionEvent, VelocityTracker paramVelocityTracker) {
    paramVelocityTracker.computeCurrentVelocity(1000, g);
    int j = paramMotionEvent.getActionIndex();
    int i = paramMotionEvent.getPointerId(j);
    float f1 = paramVelocityTracker.getXVelocity(i);
    float f2 = paramVelocityTracker.getYVelocity(i);
    i = 0;
    int k = paramMotionEvent.getPointerCount();
    while (i < k) {
      if (i != j) {
        int m = paramMotionEvent.getPointerId(i);
        float f = paramVelocityTracker.getXVelocity(m);
        if (paramVelocityTracker.getYVelocity(m) * f2 + f * f1 < 0.0F) {
          paramVelocityTracker.clear();
          break;
        } 
      } 
      i++;
    } 
  }
  
  @SuppressLint({"NewApi"})
  public static void a(View paramView) {
    if (Build.VERSION.SDK_INT >= 16) {
      paramView.postInvalidateOnAnimation();
      return;
    } 
    paramView.postInvalidateDelayed(10L);
  }
  
  public static void a(cla paramcla1, float paramFloat1, float paramFloat2, cla paramcla2) {
    paramcla2.a = (float)(paramcla1.a + paramFloat1 * Math.cos(Math.toRadians(paramFloat2)));
    paramcla2.b = (float)(paramcla1.b + paramFloat1 * Math.sin(Math.toRadians(paramFloat2)));
  }
  
  public static void a(List<Integer> paramList, int[] paramArrayOfint) {
    int i;
    if (paramArrayOfint.length < paramList.size()) {
      i = paramArrayOfint.length;
    } else {
      i = paramList.size();
    } 
    for (int j = 0; j < i; j++)
      paramArrayOfint[j] = ((Integer)paramList.get(j)).intValue(); 
  }
  
  public static void a(List<String> paramList, String[] paramArrayOfString) {
    int i;
    if (paramArrayOfString.length < paramList.size()) {
      i = paramArrayOfString.length;
    } else {
      i = paramList.size();
    } 
    for (int j = 0; j < i; j++)
      paramArrayOfString[j] = paramList.get(j); 
  }
  
  public static int[] a(List<Integer> paramList) {
    int[] arrayOfInt = new int[paramList.size()];
    a(paramList, arrayOfInt);
    return arrayOfInt;
  }
  
  public static double b(double paramDouble) {
    if (paramDouble == Double.POSITIVE_INFINITY)
      return paramDouble; 
    paramDouble += 0.0D;
    long l2 = Double.doubleToRawLongBits(paramDouble);
    if (paramDouble >= 0.0D) {
      long l = 1L;
      return Double.longBitsToDouble(l + l2);
    } 
    long l1 = -1L;
    return Double.longBitsToDouble(l1 + l2);
  }
  
  public static float b(float paramFloat) {
    if (e == null) {
      Log.e("MPChartLib-Utils", "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertPixelsToDp(...). Otherwise conversion does not take place.");
      return paramFloat;
    } 
    return paramFloat / e.densityDpi / 160.0F;
  }
  
  public static float b(Paint paramPaint) {
    return b(paramPaint, i);
  }
  
  public static float b(Paint paramPaint, Paint.FontMetrics paramFontMetrics) {
    paramPaint.getFontMetrics(paramFontMetrics);
    return paramFontMetrics.ascent - paramFontMetrics.top + paramFontMetrics.bottom;
  }
  
  public static int b() {
    return f;
  }
  
  public static int b(Paint paramPaint, String paramString) {
    Rect rect = h;
    rect.set(0, 0, 0, 0);
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    return rect.height();
  }
  
  public static ckw b(float paramFloat1, float paramFloat2, float paramFloat3) {
    return ckw.a(Math.abs((float)Math.cos(paramFloat3) * paramFloat1) + Math.abs((float)Math.sin(paramFloat3) * paramFloat2), Math.abs((float)Math.sin(paramFloat3) * paramFloat1) + Math.abs((float)Math.cos(paramFloat3) * paramFloat2));
  }
  
  public static ckw b(ckw paramckw, float paramFloat) {
    return b(paramckw.a, paramckw.b, paramFloat);
  }
  
  public static String[] b(List<String> paramList) {
    String[] arrayOfString = new String[paramList.size()];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfString[i] = paramList.get(i); 
    return arrayOfString;
  }
  
  public static int c() {
    return g;
  }
  
  public static int c(float paramFloat) {
    paramFloat = a(paramFloat);
    return Float.isInfinite(paramFloat) ? 0 : ((int)Math.ceil(-Math.log10(paramFloat)) + 2);
  }
  
  public static ckw c(Paint paramPaint, String paramString) {
    ckw ckw = ckw.a(0.0F, 0.0F);
    a(paramPaint, paramString, ckw);
    return ckw;
  }
  
  public static float d(float paramFloat) {
    while (paramFloat < 0.0F)
      paramFloat += 360.0F; 
    return paramFloat % 360.0F;
  }
  
  public static int d() {
    return Build.VERSION.SDK_INT;
  }
  
  private static chn e() {
    return new chk(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */