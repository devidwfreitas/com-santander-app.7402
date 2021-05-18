import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Xfermode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.Choreographer;
import android.view.animation.DecelerateInterpolator;

public class mcx extends Drawable implements ValueAnimator.AnimatorUpdateListener, Animatable {
  private static final float a = 0.2F;
  
  private static final float b = 0.02F;
  
  private static final int c = -2147483648;
  
  private static final PorterDuffXfermode s = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
  
  private static ColorFilter t = (ColorFilter)new ColorMatrixColorFilter(new float[] { 
        0.264F, 0.472F, 0.088F, 0.0F, 0.0F, 0.264F, 0.472F, 0.088F, 0.0F, 0.0F, 
        0.264F, 0.472F, 0.088F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F });
  
  private Drawable d;
  
  private int e;
  
  private int f;
  
  private int g;
  
  private int h;
  
  private int i;
  
  private int j;
  
  private int k;
  
  private ValueAnimator l;
  
  private float m;
  
  private Paint n;
  
  private Bitmap o;
  
  private Matrix p;
  
  private boolean q;
  
  private boolean r;
  
  private ColorFilter u;
  
  private Choreographer.FrameCallback v;
  
  public mcx(Context paramContext, int paramInt) {
    Drawable drawable;
    this.g = Integer.MIN_VALUE;
    this.h = Integer.MIN_VALUE;
    this.i = Integer.MIN_VALUE;
    this.j = 0;
    this.k = 0;
    this.l = null;
    this.m = 0.3F;
    this.p = new Matrix();
    this.q = false;
    this.r = false;
    this.u = null;
    this.v = new mcy(this);
    if (Build.VERSION.SDK_INT >= 21) {
      drawable = paramContext.getDrawable(paramInt);
    } else {
      drawable = drawable.getResources().getDrawable(paramInt);
    } 
    a(drawable);
  }
  
  public mcx(Drawable paramDrawable) {
    this.g = Integer.MIN_VALUE;
    this.h = Integer.MIN_VALUE;
    this.i = Integer.MIN_VALUE;
    this.j = 0;
    this.k = 0;
    this.l = null;
    this.m = 0.3F;
    this.p = new Matrix();
    this.q = false;
    this.r = false;
    this.u = null;
    this.v = new mcy(this);
    a(paramDrawable);
  }
  
  private void a(float paramFloat) {
    this.m = paramFloat;
    this.k = this.f - (int)((this.f + this.g) * this.m);
    invalidateSelf();
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt1 <= 0 || paramInt2 <= 0 || paramInt3 <= 0) {
      Log.w("ContentValues", "updateMask: size must > 0");
      this.o = null;
      return;
    } 
    int i = (int)Math.ceil(((paramInt1 + paramInt2) / paramInt2));
    Bitmap bitmap = Bitmap.createBitmap(paramInt2 * i, paramInt3, Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    Paint paint = new Paint(1);
    int j = paramInt3 / 2;
    Path path = new Path();
    path.moveTo(0.0F, j);
    float f3 = paramInt2 / 4.0F;
    float f2 = 0.0F;
    float f1 = -j;
    for (paramInt1 = 0; paramInt1 < i * 2; paramInt1++) {
      f2 += f3;
      path.quadTo(f2, f1, f2 + f3, j);
      f2 += f3;
      f1 = bitmap.getHeight() - f1;
    } 
    path.lineTo(bitmap.getWidth(), paramInt3);
    path.lineTo(0.0F, paramInt3);
    path.close();
    canvas.drawPath(path, paint);
    this.o = bitmap;
  }
  
  private void a(Rect paramRect) {
    if (paramRect.width() > 0 && paramRect.height() > 0 && (this.e < 0 || this.f < 0)) {
      this.e = paramRect.width();
      this.f = paramRect.height();
      if (this.g == Integer.MIN_VALUE)
        this.g = Math.max(8, (int)(this.f * 0.2F)); 
      if (this.h == Integer.MIN_VALUE)
        this.h = this.e; 
      if (this.i == Integer.MIN_VALUE)
        this.i = Math.max(1, (int)(this.e * 0.02F)); 
      a(this.e, this.h, this.g);
      return;
    } 
  }
  
  private void a(Drawable paramDrawable) {
    this.d = paramDrawable;
    this.p.reset();
    this.n = new Paint();
    this.n.setFilterBitmap(false);
    this.n.setColor(-1);
    this.n.setXfermode((Xfermode)s);
    this.e = this.d.getIntrinsicWidth();
    this.f = this.d.getIntrinsicHeight();
    if (this.e > 0 && this.f > 0) {
      this.h = this.e;
      this.g = Math.max(8, (int)(this.f * 0.2F));
      this.i = Math.max(1, (int)(this.e * 0.02F));
      a(this.e, this.h, this.g);
    } 
    a(0.0F);
    start();
  }
  
  private ValueAnimator b() {
    ValueAnimator valueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    valueAnimator.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    valueAnimator.setRepeatMode(1);
    valueAnimator.setRepeatCount(-1);
    valueAnimator.setDuration(5000L);
    return valueAnimator;
  }
  
  private int c() {
    return (this.f - this.k) * 10000 / (this.f + this.g);
  }
  
  public void a(int paramInt) {
    this.i = Math.min(paramInt, this.e / 2);
  }
  
  public void a(ValueAnimator paramValueAnimator) {
    if (this.l != paramValueAnimator) {
      if (this.l != null) {
        this.l.removeUpdateListener(this);
        this.l.cancel();
      } 
      this.l = paramValueAnimator;
      if (this.l != null) {
        this.l.addUpdateListener(this);
        return;
      } 
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.r = paramBoolean;
    if (this.r) {
      if (this.l == null)
        this.l = b(); 
      this.l.addUpdateListener(this);
      this.l.start();
      return;
    } 
    if (this.l != null) {
      this.l.removeUpdateListener(this);
      this.l.cancel();
    } 
    setLevel(c());
  }
  
  public boolean a() {
    return this.r;
  }
  
  public void b(int paramInt) {
    paramInt = Math.max(1, Math.min(paramInt, this.f / 2)) * 2;
    if (this.g != paramInt) {
      this.g = paramInt;
      a(this.e, this.h, this.g);
      invalidateSelf();
    } 
  }
  
  public void c(int paramInt) {
    paramInt = Math.max(8, Math.min(this.e * 2, paramInt));
    if (paramInt != this.h) {
      this.h = paramInt;
      a(this.e, this.h, this.g);
      invalidateSelf();
    } 
  }
  
  public void draw(Canvas paramCanvas) {
    this.d.setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
    this.d.draw(paramCanvas);
    this.d.setColorFilter(this.u);
    if (this.m > 0.001F) {
      int i = paramCanvas.saveLayer(0.0F, 0.0F, this.e, this.f, null, 31);
      if (this.k > 0)
        paramCanvas.clipRect(0, this.k, this.e, this.f); 
      this.d.draw(paramCanvas);
      if (this.m < 0.999F) {
        this.j += this.i;
        if (this.j > this.h)
          this.j -= this.h; 
        if (this.o != null) {
          this.p.setTranslate(-this.j, this.k);
          paramCanvas.drawBitmap(this.o, this.p, this.n);
        } 
        paramCanvas.restoreToCount(i);
        return;
      } 
    } 
  }
  
  public int getIntrinsicHeight() {
    return this.f;
  }
  
  public int getIntrinsicWidth() {
    return this.e;
  }
  
  public int getOpacity() {
    return -3;
  }
  
  public boolean isRunning() {
    return this.q;
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    if (this.r) {
      a(paramValueAnimator.getAnimatedFraction());
      if (!this.q)
        invalidateSelf(); 
    } 
  }
  
  protected void onBoundsChange(Rect paramRect) {
    super.onBoundsChange(paramRect);
    a(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt) {
    a(paramInt / 10000.0F);
    return true;
  }
  
  public void setAlpha(int paramInt) {
    this.d.setAlpha(paramInt);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    this.d.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.u = paramColorFilter;
    invalidateSelf();
  }
  
  public void start() {
    this.q = true;
    Choreographer.getInstance().postFrameCallback(this.v);
  }
  
  public void stop() {
    this.q = false;
    Choreographer.getInstance().removeFrameCallback(this.v);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */