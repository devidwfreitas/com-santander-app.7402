import java.io.Serializable;
import java.util.Comparator;

final class faq implements Serializable, Comparator<fam> {
  private final float a;
  
  private faq(float paramFloat) {
    this.a = paramFloat;
  }
  
  public int a(fam paramfam1, fam paramfam2) {
    float f1 = Math.abs(paramfam2.c() - this.a);
    float f2 = Math.abs(paramfam1.c() - this.a);
    return (f1 < f2) ? -1 : ((f1 == f2) ? 0 : 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\faq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */