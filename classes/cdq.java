import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Build;

public class cdq {
  protected float a = 1.0F;
  
  protected float b = 1.0F;
  
  private ValueAnimator.AnimatorUpdateListener c;
  
  public cdq() {}
  
  public cdq(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener) {
    this.c = paramAnimatorUpdateListener;
  }
  
  public float a() {
    return this.a;
  }
  
  public void a(float paramFloat) {
    this.a = paramFloat;
  }
  
  public void a(int paramInt) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
  
  public void a(int paramInt1, int paramInt2) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator1.setDuration(paramInt2);
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator2.setDuration(paramInt1);
    if (paramInt1 > paramInt2) {
      objectAnimator2.addUpdateListener(this.c);
    } else {
      objectAnimator1.addUpdateListener(this.c);
    } 
    objectAnimator2.start();
    objectAnimator1.start();
  }
  
  public void a(int paramInt1, int paramInt2, cew paramcew1, cew paramcew2) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator2.setInterpolator(cdr.a(paramcew2));
    objectAnimator2.setDuration(paramInt2);
    ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator1.setInterpolator(cdr.a(paramcew1));
    objectAnimator1.setDuration(paramInt1);
    if (paramInt1 > paramInt2) {
      objectAnimator1.addUpdateListener(this.c);
    } else {
      objectAnimator2.addUpdateListener(this.c);
    } 
    objectAnimator1.start();
    objectAnimator2.start();
  }
  
  public void a(int paramInt1, int paramInt2, cex paramcex1, cex paramcex2) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator2.setInterpolator(paramcex2);
    objectAnimator2.setDuration(paramInt2);
    ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator1.setInterpolator(paramcex1);
    objectAnimator1.setDuration(paramInt1);
    if (paramInt1 > paramInt2) {
      objectAnimator1.addUpdateListener(this.c);
    } else {
      objectAnimator2.addUpdateListener(this.c);
    } 
    objectAnimator1.start();
    objectAnimator2.start();
  }
  
  public void a(int paramInt, cew paramcew) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator.setInterpolator(cdr.a(paramcew));
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
  
  public void a(int paramInt, cex paramcex) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseX", new float[] { 0.0F, 1.0F });
    objectAnimator.setInterpolator(paramcex);
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
  
  public float b() {
    return this.b;
  }
  
  public void b(float paramFloat) {
    this.b = paramFloat;
  }
  
  public void b(int paramInt) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
  
  public void b(int paramInt, cew paramcew) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator.setInterpolator(cdr.a(paramcew));
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
  
  public void b(int paramInt, cex paramcex) {
    if (Build.VERSION.SDK_INT < 11)
      return; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, "phaseY", new float[] { 0.0F, 1.0F });
    objectAnimator.setInterpolator(paramcex);
    objectAnimator.setDuration(paramInt);
    objectAnimator.addUpdateListener(this.c);
    objectAnimator.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cdq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */