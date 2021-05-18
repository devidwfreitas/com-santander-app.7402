import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.support.annotation.Nullable;

public class ayv extends ayb {
  private final String b;
  
  private final ayy<Integer, Integer> c;
  
  public ayv(awu paramawu, bdy parambdy, bdo parambdo) {
    super(paramawu, parambdy, parambdo.g().toPaintCap(), parambdo.h().toPaintJoin(), parambdo.c(), parambdo.d(), parambdo.e(), parambdo.f());
    this.b = parambdo.a();
    this.c = parambdo.b().a();
    this.c.a(this);
    parambdy.a(this.c);
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    this.a.setColor(((Integer)this.c.b()).intValue());
    super.a(paramCanvas, paramMatrix, paramInt);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.a.setColorFilter(paramColorFilter);
  }
  
  public String b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */