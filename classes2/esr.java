import java.util.Map;

public final class esr extends esx {
  public static final String a = "KG";
  
  public static final String b = "LB";
  
  private final String c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private final String g;
  
  private final String h;
  
  private final String i;
  
  private final String j;
  
  private final String k;
  
  private final String l;
  
  private final String m;
  
  private final String n;
  
  private final String o;
  
  private final String p;
  
  private final Map<String, String> q;
  
  public esr(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, Map<String, String> paramMap) {
    super(esy.PRODUCT);
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.g = paramString5;
    this.h = paramString6;
    this.i = paramString7;
    this.j = paramString8;
    this.k = paramString9;
    this.l = paramString10;
    this.m = paramString11;
    this.n = paramString12;
    this.o = paramString13;
    this.p = paramString14;
    this.q = paramMap;
  }
  
  private static int a(Object paramObject) {
    return (paramObject == null) ? 0 : paramObject.hashCode();
  }
  
  private static boolean a(Object paramObject1, Object paramObject2) {
    return (paramObject1 == null) ? ((paramObject2 == null)) : paramObject1.equals(paramObject2);
  }
  
  public String a() {
    return this.c;
  }
  
  public String b() {
    return this.d;
  }
  
  public String c() {
    return this.e;
  }
  
  public String d() {
    return this.f;
  }
  
  public String e() {
    return this.g;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof esr) {
      paramObject = paramObject;
      if (a(this.d, ((esr)paramObject).d) && a(this.e, ((esr)paramObject).e) && a(this.f, ((esr)paramObject).f) && a(this.g, ((esr)paramObject).g) && a(this.i, ((esr)paramObject).i) && a(this.j, ((esr)paramObject).j) && a(this.k, ((esr)paramObject).k) && a(this.l, ((esr)paramObject).l) && a(this.m, ((esr)paramObject).m) && a(this.n, ((esr)paramObject).n) && a(this.o, ((esr)paramObject).o) && a(this.p, ((esr)paramObject).p) && a(this.q, ((esr)paramObject).q))
        return true; 
    } 
    return false;
  }
  
  public String f() {
    return this.h;
  }
  
  public String g() {
    return this.i;
  }
  
  public String h() {
    return this.j;
  }
  
  public int hashCode() {
    return 0x0 ^ a(this.d) ^ a(this.e) ^ a(this.f) ^ a(this.g) ^ a(this.i) ^ a(this.j) ^ a(this.k) ^ a(this.l) ^ a(this.m) ^ a(this.n) ^ a(this.o) ^ a(this.p) ^ a(this.q);
  }
  
  public String i() {
    return this.k;
  }
  
  public String j() {
    return this.l;
  }
  
  public String k() {
    return this.m;
  }
  
  public String l() {
    return this.n;
  }
  
  public String m() {
    return this.o;
  }
  
  public String n() {
    return this.p;
  }
  
  public Map<String, String> o() {
    return this.q;
  }
  
  public String q() {
    return String.valueOf(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */