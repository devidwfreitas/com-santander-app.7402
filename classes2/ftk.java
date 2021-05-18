import java.io.Serializable;

public class ftk implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private ftf e;
  
  public String a() {
    return this.b;
  }
  
  public void a(ftf paramftf) {
    this.e = paramftf;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public ftf d() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof ftk) {
      paramObject = paramObject;
      bool1 = bool2;
      if (this.b.equals(((ftk)paramObject).b)) {
        bool1 = bool2;
        if (this.c.equals(((ftk)paramObject).c))
          bool1 = true; 
      } 
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */