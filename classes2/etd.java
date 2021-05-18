public final class etd extends esx {
  private final String[] a;
  
  private final String[] b;
  
  private final String c;
  
  private final String d;
  
  public etd(String paramString1, String paramString2, String paramString3, String paramString4) {
    super(esy.SMS);
    this.a = new String[] { paramString1 };
    this.b = new String[] { paramString2 };
    this.c = paramString3;
    this.d = paramString4;
  }
  
  public etd(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2) {
    super(esy.SMS);
    this.a = paramArrayOfString1;
    this.b = paramArrayOfString2;
    this.c = paramString1;
    this.d = paramString2;
  }
  
  public String a() {
    boolean bool2 = true;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("sms:");
    int i = 0;
    boolean bool1 = true;
    while (i < this.a.length) {
      if (bool1) {
        bool1 = false;
      } else {
        stringBuilder.append(',');
      } 
      stringBuilder.append(this.a[i]);
      if (this.b != null && this.b[i] != null) {
        stringBuilder.append(";via=");
        stringBuilder.append(this.b[i]);
      } 
      i++;
    } 
    if (this.d != null) {
      i = 1;
    } else {
      i = 0;
    } 
    if (this.c != null) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    if (i != 0 || bool1) {
      stringBuilder.append('?');
      if (i != 0) {
        stringBuilder.append("body=");
        stringBuilder.append(this.d);
      } 
      if (bool1) {
        if (i != 0)
          stringBuilder.append('&'); 
        stringBuilder.append("subject=");
        stringBuilder.append(this.c);
      } 
    } 
    return stringBuilder.toString();
  }
  
  public String[] b() {
    return this.a;
  }
  
  public String[] c() {
    return this.b;
  }
  
  public String d() {
    return this.c;
  }
  
  public String e() {
    return this.d;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(100);
    a(this.a, stringBuilder);
    a(this.c, stringBuilder);
    a(this.d, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */