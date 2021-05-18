import java.util.Vector;

class ap {
  static final String a = "1";
  
  private static final int b = 10;
  
  private String c = "";
  
  private String d = "";
  
  private String e = "";
  
  private String f = "";
  
  private String g = "";
  
  private String h = "";
  
  private int i = 0;
  
  private int j = 0;
  
  private String k = "";
  
  private long l = 0L;
  
  public ap() {
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = "";
    this.g = "";
    this.h = "";
    this.i = 0;
    this.j = 0;
    this.k = "";
    this.l = 0L;
  }
  
  static int a(String paramString, bl parambl, ap paramap) {
    if (paramap == null)
      return 1314; 
    try {
      Vector<String> vector = br.a(parambl.b(paramString), "#");
      int i = vector.size();
      if (i < 10)
        return 1321; 
      String str = vector.elementAt(0);
      if (str.equals("1")) {
        if (i != 10)
          return 1321; 
        paramap.a(str);
        paramap.b(vector.elementAt(1));
        paramap.d(vector.elementAt(2));
        paramap.e(vector.elementAt(3));
        paramap.f(vector.elementAt(4));
        paramap.a(Integer.parseInt(vector.elementAt(5)));
        paramap.c(vector.elementAt(6));
        paramap.a(Long.parseLong(vector.elementAt(7)));
        paramap.g(vector.elementAt(8));
        paramap.b(Integer.parseInt(vector.elementAt(9)));
      } 
      return 0;
    } catch (Exception exception) {
      return 1321;
    } 
  }
  
  public String a() {
    return this.c;
  }
  
  public void a(int paramInt) {
    this.i = paramInt;
  }
  
  public void a(long paramLong) {
    this.l = paramLong;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public String b() {
    return this.d;
  }
  
  public void b(int paramInt) {
    this.j = paramInt;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public String c() {
    return this.e;
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public String d() {
    return this.f;
  }
  
  public void d(String paramString) {
    this.f = paramString;
  }
  
  public String e() {
    return this.g;
  }
  
  public void e(String paramString) {
    this.g = paramString;
  }
  
  public String f() {
    return this.h;
  }
  
  public void f(String paramString) {
    this.h = paramString;
  }
  
  public int g() {
    return this.i;
  }
  
  public void g(String paramString) {
    this.k = paramString;
  }
  
  public int h() {
    return this.j;
  }
  
  public String i() {
    return this.k;
  }
  
  public long j() {
    return this.l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */