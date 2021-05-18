import java.util.List;

public class kvi {
  @eks(a = "empty")
  private boolean a = false;
  
  @eks(a = "id")
  private long b;
  
  @eks(a = "username")
  private String c;
  
  @eks(a = "enabled")
  private boolean d;
  
  @eks(a = "endDate")
  private String e;
  
  @eks(a = "answer")
  private String f;
  
  @eks(a = "questions")
  private List<kvl> g;
  
  public void a(long paramLong) {
    this.b = paramLong;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(List<kvl> paramList) {
    this.g = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public boolean a() {
    return this.a;
  }
  
  public List<kvl> b() {
    return this.g;
  }
  
  public void b(String paramString) {
    this.e = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public long c() {
    return this.b;
  }
  
  public void c(String paramString) {
    this.f = paramString;
  }
  
  public String d() {
    return this.c;
  }
  
  public boolean e() {
    return this.d;
  }
  
  public String f() {
    return this.e;
  }
  
  public String g() {
    return this.f;
  }
  
  public kvi h() {
    kvi kvi1 = new kvi();
    kvi1.a(this.b);
    kvi1.a(this.c);
    kvi1.b(this.d);
    kvi1.b(this.e);
    kvi1.c(this.f);
    return kvi1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kvi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */