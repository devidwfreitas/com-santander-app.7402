import java.io.Serializable;

class bko implements Serializable {
  private static final long a = 20160803001L;
  
  private final String b;
  
  private final boolean c;
  
  private final String d;
  
  private bko(String paramString1, boolean paramBoolean, String paramString2) {
    this.b = paramString1;
    this.c = paramBoolean;
    this.d = paramString2;
  }
  
  private Object readResolve() {
    return new bkl(this.b, this.c, this.d, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */