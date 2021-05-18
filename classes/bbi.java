import android.graphics.Path;
import java.util.List;

public class bbi extends bby<bdd, Path> {
  private final Path c = new Path();
  
  private bbi(List<axz<bdd>> paramList, bdd parambdd) {
    super(paramList, parambdd);
  }
  
  Path a(bdd parambdd) {
    this.c.reset();
    bex.a(parambdd, this.c);
    return this.c;
  }
  
  public ayy<bdd, Path> a() {
    return (ayy<bdd, Path>)(!a_() ? new azo<bdd, Path>(a(this.b)) : new azm(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */