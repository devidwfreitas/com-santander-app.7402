import android.graphics.DashPathEffect;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public abstract class cgx<T extends Entry> extends cgh<T> implements cir<T> {
  protected boolean v = true;
  
  protected boolean w = true;
  
  protected float x = 0.5F;
  
  protected DashPathEffect y = null;
  
  public cgx(List<T> paramList, String paramString) {
    super(paramList, paramString);
    this.x = clg.a(0.5F);
  }
  
  public boolean ac() {
    return this.v;
  }
  
  public boolean ad() {
    return this.w;
  }
  
  public float ae() {
    return this.x;
  }
  
  public void af() {
    this.y = null;
  }
  
  public boolean ag() {
    return (this.y != null);
  }
  
  public DashPathEffect ah() {
    return this.y;
  }
  
  public void b(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.y = new DashPathEffect(new float[] { paramFloat1, paramFloat2 }, paramFloat3);
  }
  
  public void g(boolean paramBoolean) {
    this.w = paramBoolean;
  }
  
  public void h(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public void i(boolean paramBoolean) {
    h(paramBoolean);
    g(paramBoolean);
  }
  
  public void k(float paramFloat) {
    this.x = clg.a(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */