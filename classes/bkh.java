import java.io.Serializable;

class bkh implements Serializable {
  private static final long a = -2488473066578201069L;
  
  private final String b;
  
  private final String c;
  
  private bkh(String paramString1, String paramString2) {
    this.b = paramString1;
    this.c = paramString2;
  }
  
  private Object readResolve() {
    return new bkf(this.b, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */