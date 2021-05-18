import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import android.support.v4.util.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

public class beb extends bdy {
  @Nullable
  private final ayy<Float, Float> e;
  
  private final List<bdy> f = new ArrayList<bdy>();
  
  private final RectF g = new RectF();
  
  private final Rect h = new Rect();
  
  private final RectF i = new RectF();
  
  @Nullable
  private Boolean j;
  
  @Nullable
  private Boolean k;
  
  public beb(awu paramawu, bee parambee, List<bee> paramList, awr paramawr) {
    super(paramawu, parambee);
    bao bao = parambee.u();
    if (bao != null) {
      this.e = bao.a();
      a(this.e);
      this.e.a(this);
    } else {
      this.e = null;
    } 
    LongSparseArray longSparseArray = new LongSparseArray(paramawr.j().size());
    int i = paramList.size() - 1;
    bao = null;
    while (true) {
      if (i >= 0) {
        bee bee1 = paramList.get(i);
        bdy bdy1 = bdy.a(bee1, paramawu, paramawr);
        if (bdy1 != null) {
          longSparseArray.put(bdy1.c().e(), bdy1);
          if (bao != null) {
            bao.a(bdy1);
            bao = null;
          } else {
            bdy bdy2;
            this.f.add(0, bdy1);
            switch (bec.a[bee1.l().ordinal()]) {
              case 1:
              case 2:
                bdy2 = bdy1;
                i--;
                break;
            } 
            continue;
          } 
        } 
      } else {
        break;
      } 
      i--;
      break;
    } 
    for (i = 0; i < longSparseArray.size(); i++) {
      bdy bdy1 = (bdy)longSparseArray.get(longSparseArray.keyAt(i));
      bdy bdy2 = (bdy)longSparseArray.get(bdy1.c().m());
      if (bdy2 != null)
        bdy1.b(bdy2); 
    } 
  }
  
  public void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    super.a(paramFloat);
    if (this.e != null) {
      long l = this.b.s().d();
      paramFloat = (float)(long)(((Float)this.e.b()).floatValue() * 1000.0F) / (float)l;
    } 
    float f = paramFloat;
    if (this.c.b() != 0.0F)
      f = paramFloat / this.c.b(); 
    paramFloat = this.c.c();
    for (int i = this.f.size() - 1; i >= 0; i--)
      ((bdy)this.f.get(i)).a(f - paramFloat); 
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    super.a(paramRectF, paramMatrix);
    this.g.set(0.0F, 0.0F, 0.0F, 0.0F);
    for (int i = this.f.size() - 1; i >= 0; i--) {
      ((bdy)this.f.get(i)).a(this.g, this.a);
      if (paramRectF.isEmpty()) {
        paramRectF.set(this.g);
      } else {
        paramRectF.set(Math.min(paramRectF.left, this.g.left), Math.min(paramRectF.top, this.g.top), Math.max(paramRectF.right, this.g.right), Math.max(paramRectF.bottom, this.g.bottom));
      } 
    } 
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    for (int i = 0; i < this.f.size(); i++) {
      bdy bdy1 = this.f.get(i);
      String str = bdy1.c().f();
      if (paramString1 == null) {
        bdy1.a((String)null, (String)null, paramColorFilter);
      } else if (str.equals(paramString1)) {
        bdy1.a(paramString1, paramString2, paramColorFilter);
      } 
    } 
  }
  
  void b(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    awm.a("CompositionLayer#draw");
    paramCanvas.getClipBounds(this.h);
    this.i.set(0.0F, 0.0F, this.c.h(), this.c.i());
    paramMatrix.mapRect(this.i);
    int i;
    for (i = this.f.size() - 1; i >= 0; i--) {
      boolean bool = true;
      if (!this.i.isEmpty())
        bool = paramCanvas.clipRect(this.i); 
      if (bool)
        ((bdy)this.f.get(i)).a(paramCanvas, paramMatrix, paramInt); 
    } 
    if (!this.h.isEmpty())
      paramCanvas.clipRect(this.h, Region.Op.REPLACE); 
    awm.b("CompositionLayer#draw");
  }
  
  public boolean f() {
    if (this.k == null) {
      for (int i = this.f.size() - 1; i >= 0; i--) {
        bdy bdy1 = this.f.get(i);
        if (bdy1 instanceof bek) {
          if (bdy1.e()) {
            this.k = Boolean.valueOf(true);
            return true;
          } 
        } else if (bdy1 instanceof beb && ((beb)bdy1).f()) {
          this.k = Boolean.valueOf(true);
          return true;
        } 
      } 
      this.k = Boolean.valueOf(false);
    } 
    return this.k.booleanValue();
  }
  
  public boolean g() {
    if (this.j == null) {
      if (d()) {
        this.j = Boolean.valueOf(true);
        return true;
      } 
      for (int i = this.f.size() - 1; i >= 0; i--) {
        if (((bdy)this.f.get(i)).d()) {
          this.j = Boolean.valueOf(true);
          return true;
        } 
      } 
      this.j = Boolean.valueOf(false);
    } 
    return this.j.booleanValue();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\beb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */