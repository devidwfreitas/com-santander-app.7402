public class kud {
  @eks(a = "number")
  private String a;
  
  @eks(a = "certificate")
  private kty b;
  
  @eks(a = "endorsement")
  private kua c;
  
  @eks(a = "insurance")
  private kuj d;
  
  @eks(a = "operation")
  private kuk e;
  
  @eks(a = "product")
  private kuf f;
  
  @eks(a = "channel")
  private ktz g;
  
  private ktr h;
  
  public kud(ktr paramktr) {
    this.h = paramktr;
  }
  
  public ktz a() {
    return this.g;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(ktr paramktr) {
    this.h = paramktr;
  }
  
  public void a(kty paramkty) {
    this.b = paramkty;
  }
  
  public void a(ktz paramktz) {
    this.g = paramktz;
  }
  
  public void a(kua paramkua) {
    this.c = paramkua;
  }
  
  public void a(kuf paramkuf) {
    this.f = paramkuf;
  }
  
  public void a(kuj paramkuj) {
    this.d = paramkuj;
  }
  
  public void a(kuk paramkuk) {
    this.e = paramkuk;
  }
  
  public kty b() {
    return this.b;
  }
  
  public kua c() {
    return this.c;
  }
  
  public ktr d() {
    return this.h;
  }
  
  public kuj e() {
    return this.d;
  }
  
  public kuk f() {
    return this.e;
  }
  
  public kuf g() {
    return this.f;
  }
  
  public int h() {
    if (d().g() && b() != null) {
      if (kui.a(b().d()) || kui.b(b().d()))
        return d().h(); 
      if (kui.d(b().d()))
        return d().i(); 
    } 
    return d().o();
  }
  
  public String i() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */