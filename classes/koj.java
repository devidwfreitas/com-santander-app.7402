public class koj {
  @eks(a = "id")
  private String a;
  
  @eks(a = "subServiceCode")
  private String b;
  
  @eks(a = "assistanceCode")
  private String c;
  
  public koj(String paramString1, String paramString2, String paramString3) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String toString() {
    return (new ejm()).b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\koj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */