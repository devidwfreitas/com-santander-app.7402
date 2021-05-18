import java.io.Serializable;

class blk implements Serializable {
  private static final long a = 6L;
  
  private final long b;
  
  private final long c;
  
  private final long d;
  
  private final int e;
  
  blk(long paramLong1, long paramLong2, long paramLong3, int paramInt) {
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramLong3;
    this.e = paramInt;
  }
  
  private Object readResolve() {
    return new bli(this.b, this.c, this.d, this.e, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */