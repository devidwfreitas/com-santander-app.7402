import java.util.EnumMap;
import java.util.Map;

public final class eqm {
  private final String a;
  
  private final byte[] b;
  
  private eqo[] c;
  
  private final epu d;
  
  private Map<eqn, Object> e;
  
  private final long f;
  
  public eqm(String paramString, byte[] paramArrayOfbyte, eqo[] paramArrayOfeqo, epu paramepu) {
    this(paramString, paramArrayOfbyte, paramArrayOfeqo, paramepu, System.currentTimeMillis());
  }
  
  public eqm(String paramString, byte[] paramArrayOfbyte, eqo[] paramArrayOfeqo, epu paramepu, long paramLong) {
    this.a = paramString;
    this.b = paramArrayOfbyte;
    this.c = paramArrayOfeqo;
    this.d = paramepu;
    this.e = null;
    this.f = paramLong;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(eqn parameqn, Object paramObject) {
    if (this.e == null)
      this.e = new EnumMap<eqn, Object>(eqn.class); 
    this.e.put(parameqn, paramObject);
  }
  
  public void a(Map<eqn, Object> paramMap) {
    if (paramMap != null) {
      if (this.e == null) {
        this.e = paramMap;
        return;
      } 
    } else {
      return;
    } 
    this.e.putAll(paramMap);
  }
  
  public void a(eqo[] paramArrayOfeqo) {
    eqo[] arrayOfEqo = this.c;
    if (arrayOfEqo == null) {
      this.c = paramArrayOfeqo;
      return;
    } 
    if (paramArrayOfeqo != null && paramArrayOfeqo.length > 0) {
      eqo[] arrayOfEqo1 = new eqo[arrayOfEqo.length + paramArrayOfeqo.length];
      System.arraycopy(arrayOfEqo, 0, arrayOfEqo1, 0, arrayOfEqo.length);
      System.arraycopy(paramArrayOfeqo, 0, arrayOfEqo1, arrayOfEqo.length, paramArrayOfeqo.length);
      this.c = arrayOfEqo1;
      return;
    } 
  }
  
  public byte[] b() {
    return this.b;
  }
  
  public eqo[] c() {
    return this.c;
  }
  
  public epu d() {
    return this.d;
  }
  
  public Map<eqn, Object> e() {
    return this.e;
  }
  
  public long f() {
    return this.f;
  }
  
  public String toString() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */