public final class est extends esx {
  private final double a;
  
  private final double b;
  
  private final double c;
  
  private final String d;
  
  est(double paramDouble1, double paramDouble2, double paramDouble3, String paramString) {
    super(esy.GEO);
    this.a = paramDouble1;
    this.b = paramDouble2;
    this.c = paramDouble3;
    this.d = paramString;
  }
  
  public String a() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("geo:");
    stringBuilder.append(this.a);
    stringBuilder.append(',');
    stringBuilder.append(this.b);
    if (this.c > 0.0D) {
      stringBuilder.append(',');
      stringBuilder.append(this.c);
    } 
    if (this.d != null) {
      stringBuilder.append('?');
      stringBuilder.append(this.d);
    } 
    return stringBuilder.toString();
  }
  
  public double b() {
    return this.a;
  }
  
  public double c() {
    return this.b;
  }
  
  public double d() {
    return this.c;
  }
  
  public String e() {
    return this.d;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(20);
    stringBuilder.append(this.a);
    stringBuilder.append(", ");
    stringBuilder.append(this.b);
    if (this.c > 0.0D) {
      stringBuilder.append(", ");
      stringBuilder.append(this.c);
      stringBuilder.append('m');
    } 
    if (this.d != null) {
      stringBuilder.append(" (");
      stringBuilder.append(this.d);
      stringBuilder.append(')');
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\est.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */