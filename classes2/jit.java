import android.app.Activity;

public class jit implements jfp, jis {
  private jgx a;
  
  private Activity b;
  
  private jfo c;
  
  public jit(jgx paramjgx) {
    this.a = paramjgx;
    this.b = (Activity)paramjgx;
    this.c = new jfq(this.b, this);
  }
  
  public void a(jds paramjds) {
    jel jel = new jel();
    if (paramjds.c() != null)
      jel.a(paramjds.c()); 
    this.a.a(jel);
  }
  
  public void a(jdx paramjdx) {
    this.c.a(paramjdx);
  }
  
  public void b(jds paramjds) {
    this.a.a(paramjds.getMensagemErro());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */