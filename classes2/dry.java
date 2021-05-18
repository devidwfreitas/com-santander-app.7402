import java.util.Map;

public class dry {
  public final int a;
  
  public final byte[] b;
  
  public final Map<String, String> c;
  
  public final boolean d;
  
  public final long e;
  
  public dry(int paramInt, byte[] paramArrayOfbyte, Map<String, String> paramMap, boolean paramBoolean, long paramLong) {
    this.a = paramInt;
    this.b = paramArrayOfbyte;
    this.c = paramMap;
    this.d = paramBoolean;
    this.e = paramLong;
  }
  
  public dry(byte[] paramArrayOfbyte, Map<String, String> paramMap) {
    this(200, paramArrayOfbyte, paramMap, false, 0L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */