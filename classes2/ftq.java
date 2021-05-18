import java.io.Serializable;

public class ftq implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private ftd d;
  
  public String a() {
    return this.b;
  }
  
  public void a(ftd paramftd) {
    this.d = paramftd;
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
  
  public ftd c() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof ftq) {
      paramObject = paramObject;
      return this.b.equals(((ftq)paramObject).b);
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */