import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Collections;

public class bek extends bdy {
  private final ayf e;
  
  bek(awu paramawu, bee parambee) {
    super(paramawu, parambee);
    this.e = new ayf(paramawu, this, new bdj(parambee.f(), parambee.n()));
    this.e.a(Collections.emptyList(), Collections.emptyList());
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    super.a(paramRectF, paramMatrix);
    this.e.a(paramRectF, this.a);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.e.a(paramString1, paramString2, paramColorFilter);
  }
  
  void b(@NonNull Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    this.e.a(paramCanvas, paramMatrix, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */