import java.io.Serializable;

class bll implements Serializable {
  private static final long a = 6L;
  
  private final long b;
  
  private final long c;
  
  private final long d;
  
  private final int e;
  
  private final String f;
  
  bll(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString) {
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramLong3;
    this.e = paramInt;
    this.f = paramString;
  }
  
  private Object readResolve() {
    return new bli(this.b, this.c, this.d, this.e, this.f, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */