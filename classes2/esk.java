public final class esk extends esx {
  private final String[] a;
  
  private final String[] b;
  
  private final String c;
  
  private final String[] d;
  
  private final String[] e;
  
  private final String[] f;
  
  private final String[] g;
  
  private final String h;
  
  private final String i;
  
  private final String[] j;
  
  private final String[] k;
  
  private final String l;
  
  private final String m;
  
  private final String n;
  
  private final String[] o;
  
  private final String[] p;
  
  public esk(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String[] paramArrayOfString6, String paramString2, String paramString3, String[] paramArrayOfString7, String[] paramArrayOfString8, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString9, String[] paramArrayOfString10) {
    super(esy.ADDRESSBOOK);
    this.a = paramArrayOfString1;
    this.b = paramArrayOfString2;
    this.c = paramString1;
    this.d = paramArrayOfString3;
    this.e = paramArrayOfString4;
    this.f = paramArrayOfString5;
    this.g = paramArrayOfString6;
    this.h = paramString2;
    this.i = paramString3;
    this.j = paramArrayOfString7;
    this.k = paramArrayOfString8;
    this.l = paramString4;
    this.m = paramString5;
    this.n = paramString6;
    this.o = paramArrayOfString9;
    this.p = paramArrayOfString10;
  }
  
  public esk(String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String[] paramArrayOfString6, String[] paramArrayOfString7) {
    this(paramArrayOfString1, (String[])null, (String)null, paramArrayOfString2, paramArrayOfString3, paramArrayOfString4, paramArrayOfString5, (String)null, (String)null, paramArrayOfString6, paramArrayOfString7, (String)null, (String)null, (String)null, (String[])null, (String[])null);
  }
  
  public String[] a() {
    return this.a;
  }
  
  public String[] b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String[] d() {
    return this.d;
  }
  
  public String[] e() {
    return this.e;
  }
  
  public String[] f() {
    return this.f;
  }
  
  public String[] g() {
    return this.g;
  }
  
  public String h() {
    return this.h;
  }
  
  public String i() {
    return this.i;
  }
  
  public String[] j() {
    return this.j;
  }
  
  public String[] k() {
    return this.k;
  }
  
  public String l() {
    return this.n;
  }
  
  public String m() {
    return this.l;
  }
  
  public String[] n() {
    return this.o;
  }
  
  public String o() {
    return this.m;
  }
  
  public String[] p() {
    return this.p;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(100);
    a(this.a, stringBuilder);
    a(this.b, stringBuilder);
    a(this.c, stringBuilder);
    a(this.n, stringBuilder);
    a(this.l, stringBuilder);
    a(this.j, stringBuilder);
    a(this.d, stringBuilder);
    a(this.f, stringBuilder);
    a(this.h, stringBuilder);
    a(this.o, stringBuilder);
    a(this.m, stringBuilder);
    a(this.p, stringBuilder);
    a(this.i, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */