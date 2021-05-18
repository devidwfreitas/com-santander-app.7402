public final class eto extends esx {
  private final String a;
  
  private final String b;
  
  private final String c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private final int g;
  
  private final char h;
  
  private final String i;
  
  public eto(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt, char paramChar, String paramString7) {
    super(esy.VIN);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramInt;
    this.h = paramChar;
    this.i = paramString7;
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
  
  public String d() {
    return this.d;
  }
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.f;
  }
  
  public int g() {
    return this.g;
  }
  
  public char h() {
    return this.h;
  }
  
  public String i() {
    return this.i;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(50);
    stringBuilder.append(this.b).append(' ');
    stringBuilder.append(this.c).append(' ');
    stringBuilder.append(this.d).append('\n');
    if (this.e != null)
      stringBuilder.append(this.e).append(' '); 
    stringBuilder.append(this.g).append(' ');
    stringBuilder.append(this.h).append(' ');
    stringBuilder.append(this.i).append('\n');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */