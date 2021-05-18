import android.graphics.PointF;
import android.support.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;

public class bdd {
  private final List<azy> a = new ArrayList<azy>();
  
  private PointF b;
  
  private boolean c;
  
  public bdd() {}
  
  private bdd(PointF paramPointF, boolean paramBoolean, List<azy> paramList) {
    this.b = paramPointF;
    this.c = paramBoolean;
    this.a.addAll(paramList);
  }
  
  private void a(float paramFloat1, float paramFloat2) {
    if (this.b == null)
      this.b = new PointF(); 
    this.b.set(paramFloat1, paramFloat2);
  }
  
  public PointF a() {
    return this.b;
  }
  
  public void a(bdd parambdd1, bdd parambdd2, @FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    boolean bool;
    if (this.b == null)
      this.b = new PointF(); 
    if (parambdd1.b() || parambdd2.b()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.c = bool;
    if (!this.a.isEmpty() && this.a.size() != parambdd1.c().size() && this.a.size() != parambdd2.c().size())
      throw new IllegalStateException("Curves must have the same number of control points. This: " + c().size() + "\tShape 1: " + parambdd1.c().size() + "\tShape 2: " + parambdd2.c().size()); 
    if (this.a.isEmpty()) {
      int j;
      for (j = parambdd1.c().size() - 1; j >= 0; j--)
        this.a.add(new azy()); 
    } 
    PointF pointF1 = parambdd1.a();
    PointF pointF2 = parambdd2.a();
    a(bex.a(pointF1.x, pointF2.x, paramFloat), bex.a(pointF1.y, pointF2.y, paramFloat));
    int i;
    for (i = this.a.size() - 1; i >= 0; i--) {
      azy azy2 = parambdd1.c().get(i);
      azy azy1 = parambdd2.c().get(i);
      pointF1 = azy2.a();
      pointF2 = azy2.b();
      PointF pointF4 = azy2.c();
      PointF pointF5 = azy1.a();
      PointF pointF6 = azy1.b();
      PointF pointF3 = azy1.c();
      ((azy)this.a.get(i)).a(bex.a(pointF1.x, pointF5.x, paramFloat), bex.a(pointF1.y, pointF5.y, paramFloat));
      ((azy)this.a.get(i)).b(bex.a(pointF2.x, pointF6.x, paramFloat), bex.a(pointF2.y, pointF6.y, paramFloat));
      ((azy)this.a.get(i)).c(bex.a(pointF4.x, pointF3.x, paramFloat), bex.a(pointF4.y, pointF3.y, paramFloat));
    } 
  }
  
  public boolean b() {
    return this.c;
  }
  
  public List<azy> c() {
    return this.a;
  }
  
  public String toString() {
    return "ShapeData{numCurves=" + this.a.size() + "closed=" + this.c + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */