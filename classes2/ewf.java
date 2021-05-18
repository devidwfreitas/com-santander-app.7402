import java.io.Serializable;
import java.util.Comparator;

final class ewf implements Serializable, Comparator<fam> {
  private ewf() {}
  
  public int a(fam paramfam1, fam paramfam2) {
    float f = paramfam2.c() - paramfam1.c();
    return (f < 0.0D) ? -1 : ((f > 0.0D) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */