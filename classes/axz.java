import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;

public class axz<T> {
  private static final float f = 100.0F;
  
  private static final Interpolator g = (Interpolator)new LinearInterpolator();
  
  @Nullable
  public final T a;
  
  @Nullable
  public final T b;
  
  @Nullable
  public final Interpolator c;
  
  public final float d;
  
  @Nullable
  public Float e;
  
  private final awr h;
  
  private float i = Float.MIN_VALUE;
  
  private float j = Float.MIN_VALUE;
  
  public axz(awr paramawr, @Nullable T paramT1, @Nullable T paramT2, @Nullable Interpolator paramInterpolator, float paramFloat, @Nullable Float paramFloat1) {
    this.h = paramawr;
    this.a = paramT1;
    this.b = paramT2;
    this.c = paramInterpolator;
    this.d = paramFloat;
    this.e = paramFloat1;
  }
  
  public static void a(List<? extends axz<?>> paramList) {
    int j = paramList.size();
    for (int i = 0; i < j - 1; i++)
      ((axz)paramList.get(i)).e = Float.valueOf(((axz)paramList.get(i + 1)).d); 
    axz axz1 = paramList.get(j - 1);
    if (axz1.a == null)
      paramList.remove(axz1); 
  }
  
  public float a() {
    if (this.i == Float.MIN_VALUE)
      this.i = (this.d - (float)this.h.h()) / this.h.o(); 
    return this.i;
  }
  
  public boolean a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    return (paramFloat >= a() && paramFloat <= b());
  }
  
  public float b() {
    if (this.j == Float.MIN_VALUE) {
      if (this.e == null) {
        this.j = 1.0F;
        return this.j;
      } 
    } else {
      return this.j;
    } 
    this.j = a() + (this.e.floatValue() - this.d) / this.h.o();
    return this.j;
  }
  
  public boolean c() {
    return (this.c == null);
  }
  
  public String toString() {
    return "Keyframe{startValue=" + this.a + ", endValue=" + this.b + ", startFrame=" + this.d + ", endFrame=" + this.e + ", interpolator=" + this.c + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */