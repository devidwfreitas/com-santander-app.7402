public class kom {
  private String a;
  
  private String b;
  
  private String c;
  
  public kom(String paramString1, String paramString2, String paramString3) {
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
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a);
    stringBuilder.append(" - ");
    stringBuilder.append(this.c);
    stringBuilder.append("x");
    stringBuilder.append(this.b);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */