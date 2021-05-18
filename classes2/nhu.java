import java.util.EventListener;

public class nhu extends nib<niy> {
  private final String a;
  
  private final Throwable b;
  
  public nhu(String paramString, Throwable paramThrowable) {
    super(niy.class);
    this.a = paramString;
    if (paramString != null) {
      this.b = paramThrowable;
      if (paramThrowable != null)
        return; 
    } 
    throw new IllegalArgumentException();
  }
  
  public void a(niy paramniy) {
    paramniy.a(this.a, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */