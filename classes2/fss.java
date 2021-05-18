import java.io.Serializable;

public class fss implements Serializable {
  private static final long a = 1L;
  
  private int b = 1;
  
  private fst c;
  
  private String d;
  
  private ftx e;
  
  public fst a() {
    return this.c;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(fst paramfst) {
    this.c = paramfst;
  }
  
  public void a(ftx paramftx) {
    this.e = paramftx;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public ftx b() {
    return this.e;
  }
  
  public int c() {
    return this.b;
  }
  
  public String d() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof fss) {
      paramObject = paramObject;
      if (this.c != null && ((fss)paramObject).c != null && this.c.b().equals(((fss)paramObject).c.b()) && this.c.a().equals(((fss)paramObject).c.a()))
        return true; 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */