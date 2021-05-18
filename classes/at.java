public class at extends cp {
  private static final int j = 64;
  
  public at() {}
  
  public at(at paramat) {
    super(paramat);
  }
  
  public String a() {
    return "SHA-512";
  }
  
  public int b() {
    return 64;
  }
  
  public int b(byte[] paramArrayOfbyte, int paramInt) {
    d();
    a(this.a, paramArrayOfbyte, paramInt);
    a(this.b, paramArrayOfbyte, paramInt + 8);
    a(this.c, paramArrayOfbyte, paramInt + 16);
    a(this.d, paramArrayOfbyte, paramInt + 24);
    a(this.e, paramArrayOfbyte, paramInt + 32);
    a(this.f, paramArrayOfbyte, paramInt + 40);
    a(this.g, paramArrayOfbyte, paramInt + 48);
    a(this.h, paramArrayOfbyte, paramInt + 56);
    c();
    return 64;
  }
  
  public void c() {
    super.c();
    this.a = 7640891576956012808L;
    this.b = -4942790177534073029L;
    this.c = 4354685564936845355L;
    this.d = -6534734903238641935L;
    this.e = 5840696475078001361L;
    this.f = -7276294671716946913L;
    this.g = 2270897969802886507L;
    this.h = 6620516959819538809L;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */