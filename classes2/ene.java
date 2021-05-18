import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class ene extends eps {
  private static final Writer a = new enf();
  
  private static final ekf b = new ekf("closed");
  
  private final List<ejz> c = new ArrayList<ejz>();
  
  private String d;
  
  private ejz e = (ejz)ekb.a;
  
  public ene() {
    super(a);
  }
  
  private void a(ejz paramejz) {
    if (this.d != null) {
      if (!paramejz.s() || i())
        ((ekc)j()).a(this.d, paramejz); 
      this.d = null;
      return;
    } 
    if (this.c.isEmpty()) {
      this.e = paramejz;
      return;
    } 
    ejz ejz1 = j();
    if (ejz1 instanceof ejw) {
      ((ejw)ejz1).a(paramejz);
      return;
    } 
    throw new IllegalStateException();
  }
  
  private ejz j() {
    return this.c.get(this.c.size() - 1);
  }
  
  public ejz a() {
    if (!this.c.isEmpty())
      throw new IllegalStateException("Expected one JSON element but was " + this.c); 
    return this.e;
  }
  
  public eps a(double paramDouble) {
    if (!g() && (Double.isNaN(paramDouble) || Double.isInfinite(paramDouble)))
      throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramDouble); 
    a(new ekf(Double.valueOf(paramDouble)));
    return this;
  }
  
  public eps a(long paramLong) {
    a(new ekf(Long.valueOf(paramLong)));
    return this;
  }
  
  public eps a(Boolean paramBoolean) {
    if (paramBoolean == null)
      return f(); 
    a(new ekf(paramBoolean));
    return this;
  }
  
  public eps a(Number paramNumber) {
    if (paramNumber == null)
      return f(); 
    if (!g()) {
      double d = paramNumber.doubleValue();
      if (Double.isNaN(d) || Double.isInfinite(d))
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber); 
    } 
    a(new ekf(paramNumber));
    return this;
  }
  
  public eps a(String paramString) {
    if (this.c.isEmpty() || this.d != null)
      throw new IllegalStateException(); 
    if (j() instanceof ekc) {
      this.d = paramString;
      return this;
    } 
    throw new IllegalStateException();
  }
  
  public eps a(boolean paramBoolean) {
    a(new ekf(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public eps b() {
    ejw ejw = new ejw();
    a(ejw);
    this.c.add(ejw);
    return this;
  }
  
  public eps b(String paramString) {
    if (paramString == null)
      return f(); 
    a(new ekf(paramString));
    return this;
  }
  
  public eps c() {
    if (this.c.isEmpty() || this.d != null)
      throw new IllegalStateException(); 
    if (j() instanceof ejw) {
      this.c.remove(this.c.size() - 1);
      return this;
    } 
    throw new IllegalStateException();
  }
  
  public void close() {
    if (!this.c.isEmpty())
      throw new IOException("Incomplete document"); 
    this.c.add(b);
  }
  
  public eps d() {
    ekc ekc = new ekc();
    a(ekc);
    this.c.add(ekc);
    return this;
  }
  
  public eps e() {
    if (this.c.isEmpty() || this.d != null)
      throw new IllegalStateException(); 
    if (j() instanceof ekc) {
      this.c.remove(this.c.size() - 1);
      return this;
    } 
    throw new IllegalStateException();
  }
  
  public eps f() {
    a((ejz)ekb.a);
    return this;
  }
  
  public void flush() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ene.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */