import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class ayt implements ayg, ayl, ayp, ayz {
  private final Matrix a = new Matrix();
  
  private final Path b = new Path();
  
  private final awu c;
  
  private final bdy d;
  
  private final String e;
  
  private final ayy<Float, Float> f;
  
  private final ayy<Float, Float> g;
  
  private final azq h;
  
  private ayf i;
  
  public ayt(awu paramawu, bdy parambdy, bdb parambdb) {
    this.c = paramawu;
    this.d = parambdy;
    this.e = parambdb.a();
    this.f = parambdb.b().a();
    parambdy.a(this.f);
    this.f.a(this);
    this.g = parambdb.c().a();
    parambdy.a(this.g);
    this.g.a(this);
    this.h = parambdb.d().h();
    this.h.a(parambdy);
    this.h.a(this);
  }
  
  public void a() {
    this.c.invalidateSelf();
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    float f1 = ((Float)this.f.b()).floatValue();
    float f2 = ((Float)this.g.b()).floatValue();
    float f3 = ((Float)this.h.b().b()).floatValue() / 100.0F;
    float f4 = ((Float)this.h.c().b()).floatValue() / 100.0F;
    int i;
    for (i = (int)f1 - 1; i >= 0; i--) {
      this.a.set(paramMatrix);
      this.a.preConcat(this.h.a(i + f2));
      float f5 = paramInt;
      float f6 = bex.a(f3, f4, i / f1);
      this.i.a(paramCanvas, this.a, (int)(f5 * f6));
    } 
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    this.i.a(paramRectF, paramMatrix);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.i.a(paramString1, paramString2, paramColorFilter);
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    this.i.a(paramList1, paramList2);
  }
  
  public void a(ListIterator<aye> paramListIterator) {
    if (this.i != null)
      return; 
    do {
    
    } while (paramListIterator.hasPrevious() && paramListIterator.previous() != this);
    ArrayList<?> arrayList = new ArrayList();
    while (paramListIterator.hasPrevious()) {
      arrayList.add(paramListIterator.previous());
      paramListIterator.remove();
    } 
    Collections.reverse(arrayList);
    this.i = new ayf(this.c, this.d, "Repeater", (List)arrayList, null);
  }
  
  public String b() {
    return this.e;
  }
  
  public Path e() {
    Path path = this.i.e();
    this.b.reset();
    float f1 = ((Float)this.f.b()).floatValue();
    float f2 = ((Float)this.g.b()).floatValue();
    for (int i = (int)f1 - 1; i >= 0; i--) {
      this.a.set(this.h.a(i + f2));
      this.b.addPath(path, this.a);
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */