import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Map;

public class fcq {
  private static final float c = 4.0F;
  
  private static final float d = 10.0F;
  
  protected eqm a;
  
  protected fdv b;
  
  private final int e = 2;
  
  public fcq(eqm parameqm, fdv paramfdv) {
    this.a = parameqm;
    this.b = paramfdv;
  }
  
  private static void a(Canvas paramCanvas, Paint paramPaint, eqo parameqo1, eqo parameqo2, int paramInt) {
    if (parameqo1 != null && parameqo2 != null)
      paramCanvas.drawLine(parameqo1.a() / paramInt, parameqo1.b() / paramInt, parameqo2.a() / paramInt, parameqo2.b() / paramInt, paramPaint); 
  }
  
  public Bitmap a(int paramInt) {
    Paint paint;
    Bitmap bitmap = b();
    eqo[] arrayOfEqo = this.a.c();
    if (arrayOfEqo != null && arrayOfEqo.length > 0 && bitmap != null) {
      Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas canvas = new Canvas(bitmap1);
      canvas.drawBitmap(bitmap, 0.0F, 0.0F, null);
      paint = new Paint();
      paint.setColor(paramInt);
      if (arrayOfEqo.length == 2) {
        paint.setStrokeWidth(4.0F);
        a(canvas, paint, arrayOfEqo[0], arrayOfEqo[1], 2);
        return bitmap1;
      } 
      if (arrayOfEqo.length == 4 && (this.a.d() == epu.UPC_A || this.a.d() == epu.EAN_13)) {
        a(canvas, paint, arrayOfEqo[0], arrayOfEqo[1], 2);
        a(canvas, paint, arrayOfEqo[2], arrayOfEqo[3], 2);
        return bitmap1;
      } 
      paint.setStrokeWidth(10.0F);
      int i = arrayOfEqo.length;
      paramInt = 0;
      while (true) {
        if (paramInt < i) {
          eqo eqo = arrayOfEqo[paramInt];
          if (eqo != null)
            canvas.drawPoint(eqo.a() / 2.0F, eqo.b() / 2.0F, paint); 
          paramInt++;
          continue;
        } 
        return bitmap1;
      } 
    } 
    return (Bitmap)paint;
  }
  
  public eqm a() {
    return this.a;
  }
  
  public Bitmap b() {
    return this.b.a(2);
  }
  
  public int c() {
    return 2;
  }
  
  public String d() {
    return this.a.a();
  }
  
  public byte[] e() {
    return this.a.b();
  }
  
  public eqo[] f() {
    return this.a.c();
  }
  
  public epu g() {
    return this.a.d();
  }
  
  public Map<eqn, Object> h() {
    return this.a.e();
  }
  
  public long i() {
    return this.a.f();
  }
  
  public String toString() {
    return this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */