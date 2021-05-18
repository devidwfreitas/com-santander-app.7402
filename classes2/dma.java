import java.util.ArrayList;
import java.util.List;

class dma implements dkd {
  dpl a;
  
  List<Long> b;
  
  List<dpi> c;
  
  long d;
  
  private dma(dlv paramdlv) {}
  
  private long a(dpi paramdpi) {
    return paramdpi.c.longValue() / 1000L / 60L / 60L;
  }
  
  public void a(dpl paramdpl) {
    csp.a(paramdpl);
    this.a = paramdpl;
  }
  
  boolean a() {
    return (this.c == null || this.c.isEmpty());
  }
  
  public boolean a(long paramLong, dpi paramdpi) {
    csp.a(paramdpi);
    if (this.c == null)
      this.c = new ArrayList<dpi>(); 
    if (this.b == null)
      this.b = new ArrayList<Long>(); 
    if (this.c.size() > 0 && a(this.c.get(0)) != a(paramdpi))
      return false; 
    long l = this.d + paramdpi.g();
    if (l >= this.e.d().af())
      return false; 
    this.d = l;
    this.c.add(paramdpi);
    this.b.add(Long.valueOf(paramLong));
    return !(this.c.size() >= this.e.d().ag());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */