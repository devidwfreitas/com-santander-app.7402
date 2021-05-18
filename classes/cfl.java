import android.graphics.Paint;

public class cfl extends cfk {
  private String a = "Description Label";
  
  private cla b;
  
  private Paint.Align c = Paint.Align.RIGHT;
  
  public String a() {
    return this.a;
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    if (this.b == null) {
      this.b = cla.a(paramFloat1, paramFloat2);
      return;
    } 
    this.b.a = paramFloat1;
    this.b.b = paramFloat2;
  }
  
  public void a(Paint.Align paramAlign) {
    this.c = paramAlign;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public cla b() {
    return this.b;
  }
  
  public Paint.Align c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */