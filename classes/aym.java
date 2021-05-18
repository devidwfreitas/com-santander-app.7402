import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@TargetApi(19)
public class aym implements ayl, ayp {
  private final Path a = new Path();
  
  private final Path b = new Path();
  
  private final Path c = new Path();
  
  private final String d;
  
  private final List<ayp> e = new ArrayList<ayp>();
  
  private final bcq f;
  
  public aym(bcq parambcq) {
    if (Build.VERSION.SDK_INT < 19)
      throw new IllegalStateException("Merge paths are not supported pre-KitKat."); 
    this.d = parambcq.a();
    this.f = parambcq;
  }
  
  private void a() {
    for (int i = 0; i < this.e.size(); i++)
      this.c.addPath(((ayp)this.e.get(i)).e()); 
  }
  
  @TargetApi(19)
  private void a(Path.Op paramOp) {
    boolean bool = false;
    this.b.reset();
    this.a.reset();
    int i;
    for (i = this.e.size() - 1; i >= 1; i--) {
      ayp ayp2 = this.e.get(i);
      if (ayp2 instanceof ayf) {
        List<ayp> list = ((ayf)ayp2).c();
        for (int j = list.size() - 1; j >= 0; j--) {
          Path path = ((ayp)list.get(j)).e();
          path.transform(((ayf)ayp2).d());
          this.b.addPath(path);
        } 
      } else {
        this.b.addPath(ayp2.e());
      } 
    } 
    ayp ayp1 = this.e.get(0);
    if (ayp1 instanceof ayf) {
      List<ayp> list = ((ayf)ayp1).c();
      for (i = bool; i < list.size(); i++) {
        Path path = ((ayp)list.get(i)).e();
        path.transform(((ayf)ayp1).d());
        this.a.addPath(path);
      } 
    } else {
      this.a.set(ayp1.e());
    } 
    this.c.op(this.a, this.b, paramOp);
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < this.e.size(); i++)
      ((ayp)this.e.get(i)).a(paramList1, paramList2); 
  }
  
  public void a(ListIterator<aye> paramListIterator) {
    do {
    
    } while (paramListIterator.hasPrevious() && paramListIterator.previous() != this);
    while (paramListIterator.hasPrevious()) {
      aye aye = paramListIterator.previous();
      if (aye instanceof ayp) {
        this.e.add((ayp)aye);
        paramListIterator.remove();
      } 
    } 
  }
  
  public String b() {
    return this.d;
  }
  
  public Path e() {
    this.c.reset();
    switch (ayn.a[this.f.b().ordinal()]) {
      default:
        return this.c;
      case 1:
        a();
      case 2:
        a(Path.Op.UNION);
      case 3:
        a(Path.Op.REVERSE_DIFFERENCE);
      case 4:
        a(Path.Op.INTERSECT);
      case 5:
        break;
    } 
    a(Path.Op.XOR);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */