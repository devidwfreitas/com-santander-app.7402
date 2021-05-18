public class ldr {
  private koi a;
  
  private kon b;
  
  private kps c;
  
  private String d;
  
  private boolean e;
  
  private boolean f;
  
  public ldr(koi paramkoi, kps paramkps, kon paramkon, String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    this.a = paramkoi;
    this.c = paramkps;
    this.b = paramkon;
    this.e = paramBoolean1;
    this.f = paramBoolean2;
    this.d = paramString;
  }
  
  public koi a() {
    return this.a;
  }
  
  public kon b() {
    return this.b;
  }
  
  public kps c() {
    return this.c;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public boolean e() {
    return this.f;
  }
  
  public String f() {
    return this.d;
  }
  
  public String toString() {
    return (new ejm()).b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */