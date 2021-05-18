public final class evr {
  private final String a;
  
  private final String b;
  
  private final byte[] c;
  
  private final Integer d;
  
  private final String e;
  
  private final String f;
  
  evr() {
    this(null, null, null, null, null, null);
  }
  
  evr(String paramString1, String paramString2, byte[] paramArrayOfbyte, Integer paramInteger, String paramString3, String paramString4) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramArrayOfbyte;
    this.d = paramInteger;
    this.e = paramString3;
    this.f = paramString4;
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public byte[] c() {
    return this.c;
  }
  
  public Integer d() {
    return this.d;
  }
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.f;
  }
  
  public String toString() {
    if (this.c == null) {
      boolean bool = false;
      return "Format: " + this.b + '\n' + "Contents: " + this.a + '\n' + "Raw bytes: (" + bool + " bytes)\nOrientation: " + this.d + '\n' + "EC level: " + this.e + '\n' + "Barcode image: " + this.f + '\n';
    } 
    int i = this.c.length;
    return "Format: " + this.b + '\n' + "Contents: " + this.a + '\n' + "Raw bytes: (" + i + " bytes)\nOrientation: " + this.d + '\n' + "EC level: " + this.e + '\n' + "Barcode image: " + this.f + '\n';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */