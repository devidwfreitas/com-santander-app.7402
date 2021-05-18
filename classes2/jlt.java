import android.content.Context;

public class jlt implements jlr, jls {
  private jmj a;
  
  private jmv b;
  
  public jlt(Context paramContext, jmj paramjmj) {
    this.a = paramjmj;
    this.b = new jmv(paramContext, this);
  }
  
  public void a(String paramString) {
    paramString = paramString.replaceAll(" ", "+");
    this.b.a(paramString);
  }
  
  public void b(String paramString) {
    this.b.b(paramString);
  }
  
  public void c(String paramString) {
    this.b.c(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jlt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */