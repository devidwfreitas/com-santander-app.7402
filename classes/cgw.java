import android.annotation.TargetApi;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public abstract class cgw<T extends Entry> extends cgx<T> implements ciq<T> {
  protected Drawable k;
  
  private int l = Color.rgb(140, 234, 255);
  
  private int m = 85;
  
  private float n = 2.5F;
  
  private boolean o = false;
  
  public cgw(List<T> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public int X() {
    return this.l;
  }
  
  public Drawable Y() {
    return this.k;
  }
  
  public int Z() {
    return this.m;
  }
  
  @TargetApi(18)
  public void a(Drawable paramDrawable) {
    this.k = paramDrawable;
  }
  
  public float aa() {
    return this.n;
  }
  
  public boolean ab() {
    return this.o;
  }
  
  public void f(boolean paramBoolean) {
    this.o = paramBoolean;
  }
  
  public void j(float paramFloat) {
    float f1 = 10.0F;
    float f2 = 0.2F;
    if (paramFloat < 0.2F)
      paramFloat = f2; 
    if (paramFloat > 10.0F)
      paramFloat = f1; 
    this.n = clg.a(paramFloat);
  }
  
  public void l(int paramInt) {
    this.l = paramInt;
    this.k = null;
  }
  
  public void n(int paramInt) {
    this.m = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */