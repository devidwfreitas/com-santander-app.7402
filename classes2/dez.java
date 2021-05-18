import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

public final class dez extends Drawable implements Drawable.Callback {
  private int a = 0;
  
  private long b;
  
  private int c;
  
  private int d;
  
  private int e = 255;
  
  private int f;
  
  private int g = 0;
  
  private boolean h = true;
  
  private boolean i;
  
  private dfd j;
  
  private Drawable k;
  
  private Drawable l;
  
  private boolean m;
  
  private boolean n;
  
  private boolean o;
  
  private int p;
  
  public dez(Drawable paramDrawable1, Drawable paramDrawable2) {
    this((dfd)null);
    Drawable drawable2 = paramDrawable1;
    if (paramDrawable1 == null)
      drawable2 = dfb.a(); 
    this.k = drawable2;
    drawable2.setCallback(this);
    dfd dfd1 = this.j;
    dfd1.b |= drawable2.getChangingConfigurations();
    Drawable drawable1 = paramDrawable2;
    if (paramDrawable2 == null)
      drawable1 = dfb.a(); 
    this.l = drawable1;
    drawable1.setCallback(this);
    dfd dfd2 = this.j;
    dfd2.b |= drawable1.getChangingConfigurations();
  }
  
  dez(dfd paramdfd) {
    this.j = new dfd(paramdfd);
  }
  
  public void a(int paramInt) {
    this.c = 0;
    this.d = this.e;
    this.g = 0;
    this.f = paramInt;
    this.a = 1;
    invalidateSelf();
  }
  
  public boolean a() {
    if (!this.m) {
      boolean bool;
      if (this.k.getConstantState() != null && this.l.getConstantState() != null) {
        bool = true;
      } else {
        bool = false;
      } 
      this.n = bool;
      this.m = true;
    } 
    return this.n;
  }
  
  public Drawable b() {
    return this.l;
  }
  
  public void draw(Canvas paramCanvas) {
    boolean bool;
    Drawable drawable1;
    Drawable drawable2;
    int j = 1;
    int i = 1;
    byte b = 0;
    switch (this.a) {
      default:
        j = this.g;
        bool = this.h;
        drawable1 = this.k;
        drawable2 = this.l;
        if (i) {
          if (!bool || j == 0)
            drawable1.draw(paramCanvas); 
          if (j == this.e) {
            drawable2.setAlpha(this.e);
            drawable2.draw(paramCanvas);
          } 
          return;
        } 
        break;
      case 1:
        this.b = SystemClock.uptimeMillis();
        this.a = 2;
        i = b;
      case 2:
        if (this.b >= 0L) {
          float f = (float)(SystemClock.uptimeMillis() - this.b) / this.f;
          if (f >= 1.0F) {
            i = j;
          } else {
            i = 0;
          } 
          if (i != 0)
            this.a = 0; 
          this.g = (int)(Math.min(f, 1.0F) * (this.d + 0) + 0.0F);
        } 
    } 
    if (bool)
      drawable1.setAlpha(this.e - j); 
    drawable1.draw(paramCanvas);
    if (bool)
      drawable1.setAlpha(this.e); 
    if (j > 0) {
      drawable2.setAlpha(j);
      drawable2.draw(paramCanvas);
      drawable2.setAlpha(this.e);
    } 
    invalidateSelf();
  }
  
  public int getChangingConfigurations() {
    return super.getChangingConfigurations() | this.j.a | this.j.b;
  }
  
  public Drawable.ConstantState getConstantState() {
    if (a()) {
      this.j.a = getChangingConfigurations();
      return this.j;
    } 
    return null;
  }
  
  public int getIntrinsicHeight() {
    return Math.max(this.k.getIntrinsicHeight(), this.l.getIntrinsicHeight());
  }
  
  public int getIntrinsicWidth() {
    return Math.max(this.k.getIntrinsicWidth(), this.l.getIntrinsicWidth());
  }
  
  public int getOpacity() {
    if (!this.o) {
      this.p = Drawable.resolveOpacity(this.k.getOpacity(), this.l.getOpacity());
      this.o = true;
    } 
    return this.p;
  }
  
  public void invalidateDrawable(Drawable paramDrawable) {
    Drawable.Callback callback = getCallback();
    if (callback != null)
      callback.invalidateDrawable(this); 
  }
  
  public Drawable mutate() {
    if (!this.i && super.mutate() == this) {
      if (!a())
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."); 
      this.k.mutate();
      this.l.mutate();
      this.i = true;
    } 
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect) {
    this.k.setBounds(paramRect);
    this.l.setBounds(paramRect);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong) {
    Drawable.Callback callback = getCallback();
    if (callback != null)
      callback.scheduleDrawable(this, paramRunnable, paramLong); 
  }
  
  public void setAlpha(int paramInt) {
    if (this.g == this.e)
      this.g = paramInt; 
    this.e = paramInt;
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.k.setColorFilter(paramColorFilter);
    this.l.setColorFilter(paramColorFilter);
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable) {
    Drawable.Callback callback = getCallback();
    if (callback != null)
      callback.unscheduleDrawable(this, paramRunnable); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */