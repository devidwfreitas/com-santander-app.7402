import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import com.github.mikephil.charting.data.Entry;

public abstract class cjt extends cke {
  private static float a = 0.0F;
  
  private static float b = 0.0F;
  
  private static float c = 0.0F;
  
  private static float d = 0.0F;
  
  private final float e = 55.0F;
  
  protected cdq g;
  
  protected Paint h;
  
  protected Paint i;
  
  protected Paint j;
  
  protected Paint k;
  
  public cjt(cdq paramcdq, clh paramclh) {
    super(paramclh);
    this.g = paramcdq;
    this.h = new Paint(1);
    this.h.setStyle(Paint.Style.FILL);
    this.j = new Paint(4);
    this.k = new Paint(1);
    this.k.setColor(Color.rgb(63, 63, 63));
    this.k.setTextAlign(Paint.Align.CENTER);
    this.k.setTextSize(clg.a(9.0F));
    this.i = new Paint(1);
    this.i.setStyle(Paint.Style.STROKE);
    this.i.setStrokeWidth(2.0F);
    this.i.setColor(Color.rgb(255, 187, 115));
  }
  
  public abstract void a();
  
  public abstract void a(Canvas paramCanvas);
  
  public void a(Canvas paramCanvas, chn paramchn, float paramFloat1, Entry paramEntry, int paramInt1, float paramFloat2, float paramFloat3, int paramInt2) {
    this.k.setColor(paramInt2);
    if (paramFloat2 + paramFloat2 + 55.0F >= a && paramFloat2 <= a + c && paramFloat3 + paramFloat3 + 55.0F >= d && paramFloat3 <= b + d && paramFloat1 <= 10.0D) {
      paramCanvas.drawText(paramchn.a(paramFloat1, paramEntry, paramInt1, this.s), paramFloat2, b + 55.0F, this.k);
      a = paramFloat2;
      b = paramFloat3 + 55.0F;
      d = b + 55.0F;
      c = a + 55.0F;
      return;
    } 
    paramCanvas.drawText(paramchn.a(paramFloat1, paramEntry, paramInt1, this.s), paramFloat2, paramFloat3, this.k);
    a = paramFloat2;
    b = paramFloat3;
    d = paramFloat3 + 55.0F;
    c = paramFloat2 + 55.0F;
  }
  
  public void a(Canvas paramCanvas, chn paramchn, float paramFloat1, Entry paramEntry, int paramInt1, float paramFloat2, float paramFloat3, int paramInt2, float paramFloat4, float paramFloat5) {
    this.k.setColor(paramInt2);
    if (paramFloat2 + paramFloat2 + 55.0F >= a && paramFloat2 <= a + c && paramFloat3 + paramFloat3 + 55.0F >= d && paramFloat3 <= b + d && paramFloat1 <= 10.0D) {
      paramCanvas.drawText(paramchn.a(paramFloat1, paramEntry, paramInt1, this.s), paramFloat2, b + 55.0F, this.k);
      a = paramFloat2;
      b = paramFloat3 + 55.0F;
      d = b + 55.0F;
      c = a + 55.0F;
      return;
    } 
    paramCanvas.drawText(paramchn.a(paramFloat1, paramEntry, paramInt1, this.s), paramFloat2, paramFloat3, this.k);
    a = paramFloat2;
    b = paramFloat3;
    d = paramFloat3 + 55.0F;
    c = paramFloat2 + 55.0F;
  }
  
  public abstract void a(Canvas paramCanvas, chv[] paramArrayOfchv);
  
  protected boolean a(cig paramcig) {
    return (paramcig.aC().n() < paramcig.s() * this.s.s());
  }
  
  public abstract void b(Canvas paramCanvas);
  
  protected void b(cio paramcio) {
    this.k.setTypeface(paramcio.u());
    this.k.setTextSize(paramcio.v());
  }
  
  public abstract void c(Canvas paramCanvas);
  
  public Paint d() {
    return this.k;
  }
  
  public Paint e() {
    return this.i;
  }
  
  public Paint f() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */