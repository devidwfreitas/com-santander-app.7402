public class bdl implements bcd {
  private final String a;
  
  private final int b;
  
  private final bbi c;
  
  private bdl(String paramString, int paramInt, bbi parambbi) {
    this.a = paramString;
    this.b = paramInt;
    this.c = parambbi;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayu(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.a;
  }
  
  public bbi b() {
    return this.c;
  }
  
  public String toString() {
    return "ShapePath{name=" + this.a + ", index=" + this.b + ", hasAnimation=" + this.c.a_() + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */