import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;

@SuppressLint({"NewApi"})
public abstract class ciw extends ciz implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener {
  protected ObjectAnimator a;
  
  protected float b;
  
  protected float c;
  
  protected float d;
  
  public ciw(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView, float paramFloat3, float paramFloat4, long paramLong) {
    super(paramclh, paramFloat1, paramFloat2, paramcle, paramView);
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.a = ObjectAnimator.ofFloat(this, "phase", new float[] { 0.0F, 1.0F });
    this.a.setDuration(paramLong);
    this.a.addUpdateListener(this);
    this.a.addListener(this);
  }
  
  public abstract void a();
  
  public void a(float paramFloat) {
    this.b = paramFloat;
  }
  
  public float c() {
    return this.b;
  }
  
  public float d() {
    return this.c;
  }
  
  public float e() {
    return this.d;
  }
  
  protected void f() {
    this.a.removeAllListeners();
    this.a.removeAllUpdateListeners();
    this.a.reverse();
    this.a.addUpdateListener(this);
    this.a.addListener(this);
  }
  
  public void onAnimationCancel(Animator paramAnimator) {
    try {
      a();
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } 
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    try {
      a();
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } 
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {}
  
  @SuppressLint({"NewApi"})
  public void run() {
    this.a.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ciw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */