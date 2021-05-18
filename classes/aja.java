import java.io.InputStream;
import java.util.Properties;

public class aja {
  public static final int a = 34;
  
  private static aja d;
  
  private Properties b;
  
  private InputStream c;
  
  private ie e;
  
  public static aja b() {
    if (d == null)
      d = new aja(); 
    return d;
  }
  
  public ie a() {
    return this.e;
  }
  
  public void a(ie paramie) {
    this.e = paramie;
  }
  
  public void a(Properties paramProperties) {
    this.b = paramProperties;
  }
  
  public Properties c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */