import android.view.View;

public abstract class ciz extends cld implements Runnable {
  protected float[] l = new float[2];
  
  protected clh m;
  
  protected float n = 0.0F;
  
  protected float o = 0.0F;
  
  protected cle p;
  
  protected View q;
  
  public ciz(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView) {
    this.m = paramclh;
    this.n = paramFloat1;
    this.o = paramFloat2;
    this.p = paramcle;
    this.q = paramView;
  }
  
  public float g() {
    return this.n;
  }
  
  public float h() {
    return this.o;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ciz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */