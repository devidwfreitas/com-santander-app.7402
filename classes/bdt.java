public class bdt implements bcd {
  private final String a;
  
  private final bdw b;
  
  private final bao c;
  
  private final bao d;
  
  private final bao e;
  
  private bdt(String paramString, bdw parambdw, bao parambao1, bao parambao2, bao parambao3) {
    this.a = paramString;
    this.b = parambdw;
    this.c = parambao1;
    this.d = parambao2;
    this.e = parambao3;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayw(parambdy, this);
  }
  
  public String a() {
    return this.a;
  }
  
  public bdw b() {
    return this.b;
  }
  
  public bao c() {
    return this.d;
  }
  
  public bao d() {
    return this.c;
  }
  
  public bao e() {
    return this.e;
  }
  
  public String toString() {
    return "Trim Path: {start: " + this.c + ", end: " + this.d + ", offset: " + this.e + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */