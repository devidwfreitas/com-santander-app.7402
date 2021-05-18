import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class ayf implements ayg, ayp, ayz {
  private final Matrix a = new Matrix();
  
  private final Path b = new Path();
  
  private final RectF c = new RectF();
  
  private final String d;
  
  private final List<aye> e;
  
  private final awu f;
  
  @Nullable
  private List<ayp> g;
  
  @Nullable
  private azq h;
  
  public ayf(awu paramawu, bdy parambdy, bdj parambdj) {
    this(paramawu, parambdy, parambdj.a(), a(paramawu, parambdy, parambdj.b()), a(parambdj.b()));
  }
  
  ayf(awu paramawu, bdy parambdy, String paramString, List<aye> paramList, @Nullable bbr parambbr) {
    this.d = paramString;
    this.f = paramawu;
    this.e = paramList;
    if (parambbr != null) {
      this.h = parambbr.h();
      this.h.a(parambdy);
      this.h.a(this);
    } 
    ArrayList<ayl> arrayList = new ArrayList();
    int i;
    for (i = paramList.size() - 1; i >= 0; i--) {
      aye aye = paramList.get(i);
      if (aye instanceof ayl)
        arrayList.add((ayl)aye); 
    } 
    for (i = arrayList.size() - 1; i >= 0; i--)
      ((ayl)arrayList.get(i)).a(paramList.listIterator(paramList.size())); 
  }
  
  @Nullable
  static bbr a(List<bcd> paramList) {
    for (int i = 0; i < paramList.size(); i++) {
      bcd bcd = paramList.get(i);
      if (bcd instanceof bbr)
        return (bbr)bcd; 
    } 
    return null;
  }
  
  private static List<aye> a(awu paramawu, bdy parambdy, List<bcd> paramList) {
    ArrayList<aye> arrayList = new ArrayList(paramList.size());
    for (int i = 0; i < paramList.size(); i++) {
      aye aye = ((bcd)paramList.get(i)).a(paramawu, parambdy);
      if (aye != null)
        arrayList.add(aye); 
    } 
    return arrayList;
  }
  
  public void a() {
    this.f.invalidateSelf();
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    this.a.set(paramMatrix);
    int i = paramInt;
    if (this.h != null) {
      this.a.preConcat(this.h.d());
      i = (int)(((Integer)this.h.a().b()).intValue() / 100.0F * paramInt / 255.0F * 255.0F);
    } 
    for (paramInt = this.e.size() - 1; paramInt >= 0; paramInt--) {
      paramMatrix = (Matrix)this.e.get(paramInt);
      if (paramMatrix instanceof ayg)
        ((ayg)paramMatrix).a(paramCanvas, this.a, i); 
    } 
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    this.a.set(paramMatrix);
    if (this.h != null)
      this.a.preConcat(this.h.d()); 
    this.c.set(0.0F, 0.0F, 0.0F, 0.0F);
    for (int i = this.e.size() - 1; i >= 0; i--) {
      aye aye = this.e.get(i);
      if (aye instanceof ayg) {
        ((ayg)aye).a(this.c, this.a);
        if (paramRectF.isEmpty()) {
          paramRectF.set(this.c);
        } else {
          paramRectF.set(Math.min(paramRectF.left, this.c.left), Math.min(paramRectF.top, this.c.top), Math.max(paramRectF.right, this.c.right), Math.max(paramRectF.bottom, this.c.bottom));
        } 
      } 
    } 
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    for (int i = 0; i < this.e.size(); i++) {
      aye aye = this.e.get(i);
      if (aye instanceof ayg) {
        ayg ayg1 = (ayg)aye;
        if (paramString2 == null || paramString2.equals(aye.b())) {
          ayg1.a(paramString1, (String)null, paramColorFilter);
        } else {
          ayg1.a(paramString1, paramString2, paramColorFilter);
        } 
      } 
    } 
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    paramList2 = new ArrayList<aye>(paramList1.size() + this.e.size());
    paramList2.addAll(paramList1);
    for (int i = this.e.size() - 1; i >= 0; i--) {
      aye aye = this.e.get(i);
      aye.a(paramList2, this.e.subList(0, i));
      paramList2.add(aye);
    } 
  }
  
  public String b() {
    return this.d;
  }
  
  List<ayp> c() {
    if (this.g == null) {
      this.g = new ArrayList<ayp>();
      for (int i = 0; i < this.e.size(); i++) {
        aye aye = this.e.get(i);
        if (aye instanceof ayp)
          this.g.add((ayp)aye); 
      } 
    } 
    return this.g;
  }
  
  Matrix d() {
    if (this.h != null)
      return this.h.d(); 
    this.a.reset();
    return this.a;
  }
  
  public Path e() {
    this.a.reset();
    if (this.h != null)
      this.a.set(this.h.d()); 
    this.b.reset();
    for (int i = this.e.size() - 1; i >= 0; i--) {
      aye aye = this.e.get(i);
      if (aye instanceof ayp)
        this.b.addPath(((ayp)aye).e(), this.a); 
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */