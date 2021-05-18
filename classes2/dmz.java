import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;

class dmz implements Callable<String> {
  dmz(dmw paramdmw) {}
  
  public String a() {
    String str = this.a.v().B();
    if (str != null)
      return str; 
    str = this.a.h().c(120000L);
    if (str == null)
      throw new TimeoutException(); 
    this.a.v().d(str);
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dmz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */