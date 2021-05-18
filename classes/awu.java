import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class awu extends Drawable implements Drawable.Callback {
  private static final String c = awu.class.getSimpleName();
  
  @Nullable
  awk a;
  
  @Nullable
  axy b;
  
  private boolean d;
  
  private final Matrix e = new Matrix();
  
  private awr f;
  
  private final bet g = new bet();
  
  private float h = 1.0F;
  
  private float i = 1.0F;
  
  private final Set<axb> j = new HashSet<axb>();
  
  private final ArrayList<axc> k = new ArrayList<axc>();
  
  @Nullable
  private azu l;
  
  @Nullable
  private String m;
  
  @Nullable
  private awl n;
  
  @Nullable
  private azt o;
  
  private boolean p;
  
  @Nullable
  private beb q;
  
  private int r = 255;
  
  private boolean s;
  
  public awu() {
    this.g.setRepeatCount(0);
    this.g.setInterpolator((TimeInterpolator)new LinearInterpolator());
    this.g.addUpdateListener(new awv(this));
  }
  
  @Nullable
  private Context A() {
    Drawable.Callback callback = getCallback();
    return (callback == null) ? null : ((callback instanceof View) ? ((View)callback).getContext() : null);
  }
  
  private float a(@NonNull Canvas paramCanvas) {
    return Math.min(paramCanvas.getWidth() / this.f.c().width(), paramCanvas.getHeight() / this.f.c().height());
  }
  
  private void b(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    axb axb = new axb(paramString1, paramString2, paramColorFilter);
    if (paramColorFilter == null && this.j.contains(axb)) {
      this.j.remove(axb);
    } else {
      this.j.add(new axb(paramString1, paramString2, paramColorFilter));
    } 
    if (this.q == null)
      return; 
    this.q.a(paramString1, paramString2, paramColorFilter);
  }
  
  private void d(boolean paramBoolean) {
    if (this.q == null) {
      this.k.add(new aww(this, paramBoolean));
      return;
    } 
    if (paramBoolean) {
      this.g.start();
      return;
    } 
    this.g.resume();
  }
  
  private void e(boolean paramBoolean) {
    if (this.q == null) {
      this.k.add(new awy(this, paramBoolean));
      return;
    } 
    float f = this.g.c();
    this.g.reverse();
    if (paramBoolean || o() == 1.0F) {
      this.g.a(this.g.d());
      return;
    } 
    this.g.a(f);
  }
  
  private void u() {
    this.q = new beb(this, beg.a(this.f), this.f.j(), this.f);
  }
  
  private void v() {
    if (this.q != null) {
      Iterator<axb> iterator = this.j.iterator();
      while (true) {
        if (iterator.hasNext()) {
          axb axb = iterator.next();
          this.q.a(axb.a, axb.b, axb.c);
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void w() {
    e();
    this.q = null;
    this.l = null;
    invalidateSelf();
  }
  
  private void x() {
    if (this.f == null)
      return; 
    float f = r();
    setBounds(0, 0, (int)(this.f.c().width() * f), (int)(f * this.f.c().height()));
  }
  
  private azu y() {
    if (getCallback() == null)
      return null; 
    if (this.l != null && !this.l.a(A())) {
      this.l.a();
      this.l = null;
    } 
    if (this.l == null)
      this.l = new azu(getCallback(), this.m, this.n, this.f.n()); 
    return this.l;
  }
  
  private azt z() {
    if (getCallback() == null)
      return null; 
    if (this.o == null)
      this.o = new azt(getCallback(), this.a); 
    return this.o;
  }
  
  @Nullable
  public Bitmap a(String paramString, @Nullable Bitmap paramBitmap) {
    azu azu1 = y();
    if (azu1 == null) {
      Log.w("LOTTIE", "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
      return null;
    } 
    Bitmap bitmap = azu1.a(paramString, paramBitmap);
    invalidateSelf();
    return bitmap;
  }
  
  @Nullable
  public Typeface a(String paramString1, String paramString2) {
    azt azt1 = z();
    return (azt1 != null) ? azt1.a(paramString1, paramString2) : null;
  }
  
  public void a(float paramFloat) {
    this.g.b(paramFloat);
  }
  
  public void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat1, @FloatRange(from = 0.0D, to = 1.0D) float paramFloat2) {
    this.g.a(paramFloat1, paramFloat2);
    this.g.setCurrentPlayTime(0L);
    d(paramFloat1);
    d(false);
  }
  
  public void a(int paramInt) {
    if (this.f == null) {
      this.k.add(new awz(this, paramInt));
      return;
    } 
    a(paramInt / this.f.o());
  }
  
  public void a(int paramInt1, int paramInt2) {
    if (this.f == null) {
      this.k.add(new awx(this, paramInt1, paramInt2));
      return;
    } 
    a(paramInt1 / this.f.o(), paramInt2 / this.f.o());
  }
  
  public void a(Animator.AnimatorListener paramAnimatorListener) {
    this.g.addListener(paramAnimatorListener);
  }
  
  public void a(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener) {
    this.g.addUpdateListener(paramAnimatorUpdateListener);
  }
  
  public void a(ColorFilter paramColorFilter) {
    b((String)null, (String)null, paramColorFilter);
  }
  
  public void a(awk paramawk) {
    this.a = paramawk;
    if (this.o != null)
      this.o.a(paramawk); 
  }
  
  public void a(awl paramawl) {
    this.n = paramawl;
    if (this.l != null)
      this.l.a(paramawl); 
  }
  
  public void a(axy paramaxy) {
    this.b = paramaxy;
  }
  
  public void a(@Nullable String paramString) {
    this.m = paramString;
  }
  
  public void a(String paramString, @Nullable ColorFilter paramColorFilter) {
    b(paramString, (String)null, paramColorFilter);
  }
  
  public void a(String paramString1, String paramString2, @Nullable ColorFilter paramColorFilter) {
    b(paramString1, paramString2, paramColorFilter);
  }
  
  public void a(boolean paramBoolean) {
    if (Build.VERSION.SDK_INT < 19) {
      Log.w(c, "Merge paths are not supported pre-Kit Kat.");
      return;
    } 
    this.p = paramBoolean;
    if (this.f != null) {
      u();
      return;
    } 
  }
  
  public boolean a() {
    return (this.q != null && this.q.f());
  }
  
  public boolean a(awr paramawr) {
    if (this.f == paramawr)
      return false; 
    w();
    this.f = paramawr;
    c(this.h);
    x();
    u();
    v();
    Iterator<?> iterator = (new ArrayList(this.k)).iterator();
    while (iterator.hasNext()) {
      ((axc)iterator.next()).a(paramawr);
      iterator.remove();
    } 
    this.k.clear();
    paramawr.a(this.s);
    this.g.b();
    return true;
  }
  
  @Nullable
  public Bitmap b(String paramString) {
    azu azu1 = y();
    return (azu1 != null) ? azu1.a(paramString) : null;
  }
  
  public void b(float paramFloat) {
    this.g.c(paramFloat);
  }
  
  public void b(float paramFloat1, float paramFloat2) {
    a(paramFloat1);
    b(paramFloat2);
  }
  
  public void b(int paramInt) {
    if (this.f == null) {
      this.k.add(new axa(this, paramInt));
      return;
    } 
    b(paramInt / this.f.o());
  }
  
  public void b(int paramInt1, int paramInt2) {
    a(paramInt1);
    b(paramInt2);
  }
  
  public void b(Animator.AnimatorListener paramAnimatorListener) {
    this.g.removeListener(paramAnimatorListener);
  }
  
  public void b(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener) {
    this.g.removeUpdateListener(paramAnimatorUpdateListener);
  }
  
  public void b(boolean paramBoolean) {
    this.s = paramBoolean;
    if (this.f != null)
      this.f.a(paramBoolean); 
  }
  
  public boolean b() {
    return (this.q != null && this.q.g());
  }
  
  public void c(float paramFloat) {
    boolean bool;
    this.h = paramFloat;
    bet bet1 = this.g;
    if (paramFloat < 0.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    bet1.a(bool);
    if (this.f != null)
      this.g.setDuration((long)((float)this.f.d() / Math.abs(paramFloat))); 
  }
  
  public void c(boolean paramBoolean) {
    boolean bool;
    bet bet1 = this.g;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    bet1.setRepeatCount(bool);
  }
  
  public boolean c() {
    return this.p;
  }
  
  @Nullable
  public String d() {
    return this.m;
  }
  
  public void d(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    this.g.a(paramFloat);
    if (this.q != null)
      this.q.a(paramFloat); 
  }
  
  public void draw(@NonNull Canvas paramCanvas) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #8
    //   3: ldc_w 'Drawable#draw'
    //   6: invokestatic a : (Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield q : Lbeb;
    //   13: ifnonnull -> 17
    //   16: return
    //   17: aload_0
    //   18: getfield i : F
    //   21: fstore #4
    //   23: fconst_1
    //   24: fstore_3
    //   25: aload_0
    //   26: aload_1
    //   27: invokespecial a : (Landroid/graphics/Canvas;)F
    //   30: fstore #6
    //   32: aload_0
    //   33: getfield q : Lbeb;
    //   36: invokevirtual g : ()Z
    //   39: ifne -> 59
    //   42: iload #8
    //   44: istore #7
    //   46: fload #4
    //   48: fstore_2
    //   49: aload_0
    //   50: getfield q : Lbeb;
    //   53: invokevirtual f : ()Z
    //   56: ifeq -> 103
    //   59: fload #4
    //   61: fload #6
    //   63: fdiv
    //   64: fstore #5
    //   66: fload #4
    //   68: fload #6
    //   70: invokestatic min : (FF)F
    //   73: fstore #4
    //   75: iload #8
    //   77: istore #7
    //   79: fload #5
    //   81: fstore_3
    //   82: fload #4
    //   84: fstore_2
    //   85: fload #5
    //   87: ldc_w 1.001
    //   90: fcmpl
    //   91: ifle -> 103
    //   94: iconst_1
    //   95: istore #7
    //   97: fload #4
    //   99: fstore_2
    //   100: fload #5
    //   102: fstore_3
    //   103: iload #7
    //   105: ifeq -> 165
    //   108: aload_1
    //   109: invokevirtual save : ()I
    //   112: pop
    //   113: fload_3
    //   114: fload_3
    //   115: fmul
    //   116: fstore_3
    //   117: aload_0
    //   118: getfield f : Lawr;
    //   121: invokevirtual c : ()Landroid/graphics/Rect;
    //   124: invokevirtual width : ()I
    //   127: i2f
    //   128: fload_2
    //   129: fmul
    //   130: fconst_2
    //   131: fdiv
    //   132: f2i
    //   133: istore #8
    //   135: aload_0
    //   136: getfield f : Lawr;
    //   139: invokevirtual c : ()Landroid/graphics/Rect;
    //   142: invokevirtual height : ()I
    //   145: i2f
    //   146: fload_2
    //   147: fmul
    //   148: fconst_2
    //   149: fdiv
    //   150: f2i
    //   151: istore #9
    //   153: aload_1
    //   154: fload_3
    //   155: fload_3
    //   156: iload #8
    //   158: i2f
    //   159: iload #9
    //   161: i2f
    //   162: invokevirtual scale : (FFFF)V
    //   165: aload_0
    //   166: getfield e : Landroid/graphics/Matrix;
    //   169: invokevirtual reset : ()V
    //   172: aload_0
    //   173: getfield e : Landroid/graphics/Matrix;
    //   176: fload_2
    //   177: fload_2
    //   178: invokevirtual preScale : (FF)Z
    //   181: pop
    //   182: aload_0
    //   183: getfield q : Lbeb;
    //   186: aload_1
    //   187: aload_0
    //   188: getfield e : Landroid/graphics/Matrix;
    //   191: aload_0
    //   192: getfield r : I
    //   195: invokevirtual a : (Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    //   198: iload #7
    //   200: ifeq -> 207
    //   203: aload_1
    //   204: invokevirtual restore : ()V
    //   207: ldc_w 'Drawable#draw'
    //   210: invokestatic b : (Ljava/lang/String;)F
    //   213: pop
    //   214: return
  }
  
  public void e() {
    if (this.l != null)
      this.l.a(); 
  }
  
  public void e(float paramFloat) {
    this.i = paramFloat;
    x();
  }
  
  @Nullable
  public axh f() {
    return (this.f != null) ? this.f.b() : null;
  }
  
  public void g() {
    this.j.clear();
    b((String)null, (String)null, (ColorFilter)null);
  }
  
  public int getAlpha() {
    return this.r;
  }
  
  public int getIntrinsicHeight() {
    return (this.f == null) ? -1 : (int)(this.f.c().height() * this.i);
  }
  
  public int getIntrinsicWidth() {
    return (this.f == null) ? -1 : (int)(this.f.c().width() * this.i);
  }
  
  public int getOpacity() {
    return -3;
  }
  
  public void h() {
    this.d = true;
    this.g.a();
  }
  
  public boolean i() {
    return (this.g.getRepeatCount() == -1);
  }
  
  public void invalidateDrawable(@NonNull Drawable paramDrawable) {
    Drawable.Callback callback = getCallback();
    if (callback == null)
      return; 
    callback.invalidateDrawable(this);
  }
  
  public void invalidateSelf() {
    Drawable.Callback callback = getCallback();
    if (callback != null)
      callback.invalidateDrawable(this); 
  }
  
  public boolean j() {
    return this.g.isRunning();
  }
  
  public void k() {
    d(true);
  }
  
  public void l() {
    boolean bool;
    if (this.g.getAnimatedFraction() == this.g.e() || this.d) {
      bool = true;
    } else {
      bool = false;
    } 
    d(bool);
  }
  
  public void m() {
    e(false);
  }
  
  public void n() {
    o();
    e(true);
  }
  
  public float o() {
    return this.g.c();
  }
  
  @Nullable
  public axy p() {
    return this.b;
  }
  
  public boolean q() {
    return (this.b == null && this.f.k().size() > 0);
  }
  
  public float r() {
    return this.i;
  }
  
  public awr s() {
    return this.f;
  }
  
  public void scheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable, long paramLong) {
    Drawable.Callback callback = getCallback();
    if (callback == null)
      return; 
    callback.scheduleDrawable(this, paramRunnable, paramLong);
  }
  
  public void setAlpha(@IntRange(from = 0L, to = 255L) int paramInt) {
    this.r = paramInt;
  }
  
  public void setColorFilter(@Nullable ColorFilter paramColorFilter) {
    throw new UnsupportedOperationException("Use addColorFilter instead.");
  }
  
  public void t() {
    this.k.clear();
    this.g.cancel();
  }
  
  public void unscheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable) {
    Drawable.Callback callback = getCallback();
    if (callback == null)
      return; 
    callback.unscheduleDrawable(this, paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */