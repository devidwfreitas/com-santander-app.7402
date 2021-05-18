import java.util.List;

public final class etw {
  private final byte[] a;
  
  private final String b;
  
  private final List<byte[]> c;
  
  private final String d;
  
  private Integer e;
  
  private Integer f;
  
  private Object g;
  
  private final int h;
  
  private final int i;
  
  public etw(byte[] paramArrayOfbyte, String paramString1, List<byte[]> paramList, String paramString2) {
    this(paramArrayOfbyte, paramString1, paramList, paramString2, -1, -1);
  }
  
  public etw(byte[] paramArrayOfbyte, String paramString1, List<byte[]> paramList, String paramString2, int paramInt1, int paramInt2) {
    this.a = paramArrayOfbyte;
    this.b = paramString1;
    this.c = paramList;
    this.d = paramString2;
    this.h = paramInt2;
    this.i = paramInt1;
  }
  
  public void a(Integer paramInteger) {
    this.e = paramInteger;
  }
  
  public void a(Object paramObject) {
    this.g = paramObject;
  }
  
  public byte[] a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(Integer paramInteger) {
    this.f = paramInteger;
  }
  
  public List<byte[]> c() {
    return this.c;
  }
  
  public String d() {
    return this.d;
  }
  
  public Integer e() {
    return this.e;
  }
  
  public Integer f() {
    return this.f;
  }
  
  public Object g() {
    return this.g;
  }
  
  public boolean h() {
    return (this.h >= 0 && this.i >= 0);
  }
  
  public int i() {
    return this.h;
  }
  
  public int j() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */