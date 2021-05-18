import java.io.Serializable;

public class gec implements Serializable {
  private String a;
  
  private String b;
  
  private ged c;
  
  public gec() {}
  
  public gec(String paramString1, String paramString2, ged paramged) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramged;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(ged paramged) {
    this.c = paramged;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public ged c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */