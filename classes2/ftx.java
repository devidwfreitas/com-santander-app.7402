import java.io.Serializable;

public class ftx implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  public String a() {
    return this.b;
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
  
  public String c(String paramString) {
    return "<" + paramString + "><IMPORTE>" + this.b + "</IMPORTE><DIVISA>" + this.c + "</DIVISA></" + paramString + ">";
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof ftx) {
      paramObject = paramObject;
      bool1 = bool2;
      if (paramObject.b().equalsIgnoreCase(this.c)) {
        bool1 = bool2;
        if (paramObject.a().equalsIgnoreCase(this.b))
          bool1 = true; 
      } 
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */