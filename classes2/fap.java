import java.io.Serializable;
import java.util.Comparator;

final class fap implements Serializable, Comparator<fam> {
  private final float a;
  
  private fap(float paramFloat) {
    this.a = paramFloat;
  }
  
  public int a(fam paramfam1, fam paramfam2) {
    if (paramfam2.d() == paramfam1.d()) {
      float f1 = Math.abs(paramfam2.c() - this.a);
      float f2 = Math.abs(paramfam1.c() - this.a);
      return (f1 < f2) ? 1 : ((f1 == f2) ? 0 : -1);
    } 
    return paramfam2.d() - paramfam1.d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */