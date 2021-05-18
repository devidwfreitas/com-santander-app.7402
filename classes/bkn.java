import java.io.Serializable;

class bkn implements Serializable {
  private static final long a = -2488473066578201069L;
  
  private final String b;
  
  private final boolean c;
  
  private bkn(String paramString, boolean paramBoolean) {
    this.b = paramString;
    this.c = paramBoolean;
  }
  
  private Object readResolve() {
    return new bkl(this.b, this.c, null, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */