import android.graphics.Path;
import android.support.annotation.Nullable;
import java.util.List;

public class ayu implements ayp, ayz {
  private final Path a = new Path();
  
  private final String b;
  
  private final awu c;
  
  private final ayy<?, Path> d;
  
  private boolean e;
  
  @Nullable
  private ayw f;
  
  public ayu(awu paramawu, bdy parambdy, bdl parambdl) {
    this.b = parambdl.a();
    this.c = paramawu;
    this.d = parambdl.b().a();
    parambdy.a(this.d);
    this.d.a(this);
  }
  
  private void c() {
    this.e = false;
    this.c.invalidateSelf();
  }
  
  public void a() {
    c();
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList1.size(); i++) {
      aye aye = paramList1.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Simultaneously) {
        this.f = (ayw)aye;
        this.f.a(this);
      } 
    } 
  }
  
  public String b() {
    return this.b;
  }
  
  public Path e() {
    if (this.e)
      return this.a; 
    this.a.reset();
    this.a.set(this.d.b());
    this.a.setFillType(Path.FillType.EVEN_ODD);
    bey.a(this.a, this.f);
    this.e = true;
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */