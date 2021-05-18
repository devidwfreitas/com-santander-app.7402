import android.animation.Animator;
import android.animation.ValueAnimator;
import android.support.annotation.FloatRange;

public class bet extends ValueAnimator {
  private boolean a = false;
  
  private boolean b = false;
  
  private float c = 0.0F;
  
  private float d = 1.0F;
  
  private long e;
  
  private float f = 0.0F;
  
  public bet() {
    setFloatValues(new float[] { 0.0F, 1.0F });
    addListener((Animator.AnimatorListener)new beu(this));
    addUpdateListener(new bev(this));
  }
  
  private void d(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    float f;
    if (paramFloat < this.c) {
      f = this.c;
    } else {
      f = paramFloat;
      if (paramFloat > this.d)
        f = this.d; 
    } 
    this.f = f;
    if (getDuration() > 0L)
      setCurrentPlayTime((long)((f - this.c) / (this.d - this.c) * (float)getDuration())); 
  }
  
  public void a() {
    this.a = true;
  }
  
  public void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    if (this.f == paramFloat)
      return; 
    d(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    float f2;
    float f1 = Math.min(paramFloat1, paramFloat2);
    paramFloat1 = Math.max(paramFloat1, paramFloat2);
    if (this.b) {
      paramFloat2 = paramFloat1;
    } else {
      paramFloat2 = f1;
    } 
    if (this.b) {
      f2 = f1;
    } else {
      f2 = paramFloat1;
    } 
    setFloatValues(new float[] { paramFloat2, f2 });
    super.setDuration((long)((float)this.e * (paramFloat1 - f1)));
    a(c());
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
    a(this.c, this.d);
  }
  
  public void b() {
    d(c());
  }
  
  public void b(float paramFloat) {
    this.c = paramFloat;
    a(paramFloat, this.d);
  }
  
  public float c() {
    return this.f;
  }
  
  public void c(float paramFloat) {
    this.d = paramFloat;
    a(this.c, paramFloat);
  }
  
  public float d() {
    return this.c;
  }
  
  public float e() {
    return this.d;
  }
  
  public void resume() {
    float f = this.f;
    start();
    a(f);
  }
  
  public ValueAnimator setDuration(long paramLong) {
    this.e = paramLong;
    a(this.c, this.d);
    return this;
  }
  
  public void start() {
    if (this.a) {
      a(e());
      return;
    } 
    super.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */