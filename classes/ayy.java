import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public abstract class ayy<K, A> {
  final List<ayz> a = new ArrayList<ayz>();
  
  private boolean b = false;
  
  private final List<? extends axz<K>> c;
  
  private float d = 0.0F;
  
  @Nullable
  private axz<K> e;
  
  ayy(List<? extends axz<K>> paramList) {
    this.c = paramList;
  }
  
  private axz<K> d() {
    int i = 0;
    if (this.c.isEmpty())
      throw new IllegalStateException("There are no keyframes"); 
    if (this.e != null && this.e.a(this.d))
      return this.e; 
    axz<K> axz2 = this.c.get(0);
    axz<K> axz1 = axz2;
    if (this.d < axz2.a()) {
      this.e = axz2;
      return axz2;
    } 
    while (!axz1.a(this.d) && i < this.c.size()) {
      axz1 = this.c.get(i);
      i++;
    } 
    this.e = axz1;
    return axz1;
  }
  
  private float e() {
    if (!this.b) {
      axz<K> axz1 = d();
      if (!axz1.c()) {
        float f1 = this.d;
        float f2 = axz1.a();
        float f3 = axz1.b();
        float f4 = axz1.a();
        return axz1.c.getInterpolation((f1 - f2) / (f3 - f4));
      } 
    } 
    return 0.0F;
  }
  
  @FloatRange(from = 0.0D, to = 1.0D)
  private float f() {
    return this.c.isEmpty() ? 0.0F : ((axz)this.c.get(0)).a();
  }
  
  @FloatRange(from = 0.0D, to = 1.0D)
  private float g() {
    return this.c.isEmpty() ? 1.0F : ((axz)this.c.get(this.c.size() - 1)).b();
  }
  
  abstract A a(axz<K> paramaxz, float paramFloat);
  
  public void a() {
    this.b = true;
  }
  
  public void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    float f;
    if (paramFloat < f()) {
      f = 0.0F;
    } else {
      f = paramFloat;
      if (paramFloat > g())
        f = 1.0F; 
    } 
    if (f != this.d) {
      this.d = f;
      int i = 0;
      while (true) {
        if (i < this.a.size()) {
          ((ayz)this.a.get(i)).a();
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void a(ayz paramayz) {
    this.a.add(paramayz);
  }
  
  public A b() {
    return a(d(), e());
  }
  
  public float c() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */