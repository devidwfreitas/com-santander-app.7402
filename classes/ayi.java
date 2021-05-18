import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class ayi implements ayg, ayz {
  private final Path a = new Path();
  
  private final Paint b = new Paint(1);
  
  private final String c;
  
  private final List<ayp> d = new ArrayList<ayp>();
  
  private final ayy<Integer, Integer> e;
  
  private final ayy<Integer, Integer> f;
  
  private final awu g;
  
  public ayi(awu paramawu, bdy parambdy, bdg parambdg) {
    this.c = parambdg.a();
    this.g = paramawu;
    if (parambdg.b() == null || parambdg.c() == null) {
      this.e = null;
      this.f = null;
      return;
    } 
    this.a.setFillType(parambdg.d());
    this.e = parambdg.b().a();
    this.e.a(this);
    parambdy.a(this.e);
    this.f = parambdg.c().a();
    this.f.a(this);
    parambdy.a(this.f);
  }
  
  public void a() {
    this.g.invalidateSelf();
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    awm.a("FillContent#draw");
    this.b.setColor(((Integer)this.e.b()).intValue());
    float f = paramInt / 255.0F;
    paramInt = (int)(((Integer)this.f.b()).intValue() * f / 100.0F * 255.0F);
    this.b.setAlpha(paramInt);
    this.a.reset();
    for (paramInt = 0; paramInt < this.d.size(); paramInt++)
      this.a.addPath(((ayp)this.d.get(paramInt)).e(), paramMatrix); 
    paramCanvas.drawPath(this.a, this.b);
    awm.b("FillContent#draw");
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    this.a.reset();
    for (int i = 0; i < this.d.size(); i++)
      this.a.addPath(((ayp)this.d.get(i)).e(), paramMatrix); 
    this.a.computeBounds(paramRectF, false);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.b.setColorFilter(paramColorFilter);
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList2.size(); i++) {
      aye aye = paramList2.get(i);
      if (aye instanceof ayp)
        this.d.add((ayp)aye); 
    } 
  }
  
  public String b() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */