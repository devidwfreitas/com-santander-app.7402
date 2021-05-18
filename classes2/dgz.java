public final class dgz extends dqy<dgz> {
  public Long a = null;
  
  public String b = null;
  
  public byte[] c = null;
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.f(1, this.a.longValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(3, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(4, this.c); 
    return i;
  }
  
  public dgz a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Long.valueOf(paramdqv.f());
          break;
        case 26:
          this.b = paramdqv.j();
          break;
        case 34:
          this.c = paramdqv.k();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.b(1, this.a.longValue()); 
    if (this.b != null)
      paramdqw.a(3, this.b); 
    if (this.c != null)
      paramdqw.a(4, this.c); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */