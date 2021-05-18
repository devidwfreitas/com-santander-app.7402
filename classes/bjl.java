import android.os.Handler;
import com.facebook.GraphRequest;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;

public class bjl extends FilterOutputStream implements bka {
  private final Map<GraphRequest, bkb> a;
  
  private final biu b;
  
  private final long c;
  
  private long d;
  
  private long e;
  
  private long f;
  
  private bkb g;
  
  public bjl(OutputStream paramOutputStream, biu parambiu, Map<GraphRequest, bkb> paramMap, long paramLong) {
    super(paramOutputStream);
    this.b = parambiu;
    this.a = paramMap;
    this.f = paramLong;
    this.c = bhv.k();
  }
  
  private void a(long paramLong) {
    if (this.g != null)
      this.g.a(paramLong); 
    this.d += paramLong;
    if (this.d >= this.e + this.c || this.d >= this.f)
      c(); 
  }
  
  private void c() {
    if (this.d > this.e) {
      for (biv biv : this.b.e()) {
        if (biv instanceof biw) {
          Handler handler = this.b.c();
          biv = biv;
          if (handler == null) {
            biv.a(this.b, this.d, this.f);
            continue;
          } 
          handler.post(new bjm(this, (biw)biv));
        } 
      } 
      this.e = this.d;
    } 
  }
  
  long a() {
    return this.d;
  }
  
  public void a(GraphRequest paramGraphRequest) {
    if (paramGraphRequest != null) {
      bkb bkb1 = this.a.get(paramGraphRequest);
    } else {
      paramGraphRequest = null;
    } 
    this.g = (bkb)paramGraphRequest;
  }
  
  long b() {
    return this.f;
  }
  
  public void close() {
    super.close();
    Iterator<bkb> iterator = this.a.values().iterator();
    while (iterator.hasNext())
      ((bkb)iterator.next()).c(); 
    c();
  }
  
  public void write(int paramInt) {
    this.out.write(paramInt);
    a(1L);
  }
  
  public void write(byte[] paramArrayOfbyte) {
    this.out.write(paramArrayOfbyte);
    a(paramArrayOfbyte.length);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.out.write(paramArrayOfbyte, paramInt1, paramInt2);
    a(paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */