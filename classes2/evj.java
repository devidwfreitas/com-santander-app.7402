import java.nio.charset.Charset;

final class evj {
  int a;
  
  private final String b;
  
  private evn c;
  
  private epz d;
  
  private epz e;
  
  private final StringBuilder f;
  
  private int g;
  
  private evm h;
  
  private int i;
  
  evj(String paramString) {
    byte[] arrayOfByte = paramString.getBytes(Charset.forName("ISO-8859-1"));
    StringBuilder stringBuilder = new StringBuilder(arrayOfByte.length);
    int i = 0;
    int j = arrayOfByte.length;
    while (i < j) {
      char c = (char)(arrayOfByte[i] & 0xFF);
      if (c == '?' && paramString.charAt(i) != '?')
        throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding."); 
      stringBuilder.append(c);
      i++;
    } 
    this.b = stringBuilder.toString();
    this.c = evn.FORCE_NONE;
    this.f = new StringBuilder(paramString.length());
    this.g = -1;
  }
  
  private int m() {
    return this.b.length() - this.i;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(char paramChar) {
    this.f.append(paramChar);
  }
  
  public void a(int paramInt) {
    this.i = paramInt;
  }
  
  public void a(epz paramepz1, epz paramepz2) {
    this.d = paramepz1;
    this.e = paramepz2;
  }
  
  public void a(evn paramevn) {
    this.c = paramevn;
  }
  
  public void a(String paramString) {
    this.f.append(paramString);
  }
  
  public char b() {
    return this.b.charAt(this.a);
  }
  
  public void b(int paramInt) {
    this.g = paramInt;
  }
  
  public char c() {
    return this.b.charAt(this.a);
  }
  
  public void c(int paramInt) {
    if (this.h == null || paramInt > this.h.i())
      this.h = evm.a(paramInt, this.c, this.d, this.e, true); 
  }
  
  public StringBuilder d() {
    return this.f;
  }
  
  public int e() {
    return this.f.length();
  }
  
  public int f() {
    return this.g;
  }
  
  public void g() {
    this.g = -1;
  }
  
  public boolean h() {
    return (this.a < m());
  }
  
  public int i() {
    return m() - this.a;
  }
  
  public evm j() {
    return this.h;
  }
  
  public void k() {
    c(e());
  }
  
  public void l() {
    this.h = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */