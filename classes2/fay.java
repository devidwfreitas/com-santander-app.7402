public final class fay {
  public static final int a = 8;
  
  private fae b;
  
  private fac c;
  
  private fag d;
  
  private int e = -1;
  
  private fat f;
  
  public static boolean b(int paramInt) {
    return (paramInt >= 0 && paramInt < 8);
  }
  
  public fae a() {
    return this.b;
  }
  
  public void a(int paramInt) {
    this.e = paramInt;
  }
  
  public void a(fac paramfac) {
    this.c = paramfac;
  }
  
  public void a(fae paramfae) {
    this.b = paramfae;
  }
  
  public void a(fag paramfag) {
    this.d = paramfag;
  }
  
  public void a(fat paramfat) {
    this.f = paramfat;
  }
  
  public fac b() {
    return this.c;
  }
  
  public fag c() {
    return this.d;
  }
  
  public int d() {
    return this.e;
  }
  
  public fat e() {
    return this.f;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(200);
    stringBuilder.append("<<\n");
    stringBuilder.append(" mode: ");
    stringBuilder.append(this.b);
    stringBuilder.append("\n ecLevel: ");
    stringBuilder.append(this.c);
    stringBuilder.append("\n version: ");
    stringBuilder.append(this.d);
    stringBuilder.append("\n maskPattern: ");
    stringBuilder.append(this.e);
    if (this.f == null) {
      stringBuilder.append("\n matrix: null\n");
      stringBuilder.append(">>\n");
      return stringBuilder.toString();
    } 
    stringBuilder.append("\n matrix:\n");
    stringBuilder.append(this.f);
    stringBuilder.append(">>\n");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */