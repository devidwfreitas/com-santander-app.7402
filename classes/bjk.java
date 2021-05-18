import android.os.Handler;
import com.facebook.GraphRequest;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

public class bjk extends OutputStream implements bka {
  private final Map<GraphRequest, bkb> a = new HashMap<GraphRequest, bkb>();
  
  private final Handler b;
  
  private GraphRequest c;
  
  private bkb d;
  
  private int e;
  
  public bjk(Handler paramHandler) {
    this.b = paramHandler;
  }
  
  public int a() {
    return this.e;
  }
  
  void a(long paramLong) {
    if (this.d == null) {
      this.d = new bkb(this.b, this.c);
      this.a.put(this.c, this.d);
    } 
    this.d.b(paramLong);
    this.e = (int)(this.e + paramLong);
  }
  
  public void a(GraphRequest paramGraphRequest) {
    this.c = paramGraphRequest;
    if (paramGraphRequest != null) {
      bkb bkb1 = this.a.get(paramGraphRequest);
    } else {
      paramGraphRequest = null;
    } 
    this.d = (bkb)paramGraphRequest;
  }
  
  public Map<GraphRequest, bkb> b() {
    return this.a;
  }
  
  public void write(int paramInt) {
    a(1L);
  }
  
  public void write(byte[] paramArrayOfbyte) {
    a(paramArrayOfbyte.length);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    a(paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */