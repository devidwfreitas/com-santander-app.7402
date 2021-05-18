import com.facebook.AccessToken;
import java.io.Serializable;

class bkf implements Serializable {
  private static final long a = 1L;
  
  private final String b;
  
  private final String c;
  
  public bkf(AccessToken paramAccessToken) {
    this(paramAccessToken.c(), bhv.l());
  }
  
  public bkf(String paramString1, String paramString2) {
    String str = paramString1;
    if (bqq.a(paramString1))
      str = null; 
    this.b = str;
    this.c = paramString2;
  }
  
  private Object writeReplace() {
    return new bkh(this.b, this.c, null);
  }
  
  public String a() {
    return this.b;
  }
  
  public String b() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof bkf) {
      paramObject = paramObject;
      if (bqq.a(((bkf)paramObject).b, this.b) && bqq.a(((bkf)paramObject).c, this.c))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int i;
    int j = 0;
    if (this.b == null) {
      i = 0;
    } else {
      i = this.b.hashCode();
    } 
    if (this.c != null)
      j = this.c.hashCode(); 
    return i ^ j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */