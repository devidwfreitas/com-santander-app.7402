public final class dgp extends dqy<dgp> {
  public String a = null;
  
  public String b = null;
  
  public String c = null;
  
  public String d = null;
  
  public String e = null;
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.b(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c); 
    j = i;
    if (this.d != null)
      j = i + dqw.b(4, this.d); 
    i = j;
    if (this.e != null)
      i = j + dqw.b(5, this.e); 
    return i;
  }
  
  public dgp a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 26:
          this.c = paramdqv.j();
          break;
        case 34:
          this.d = paramdqv.j();
          break;
        case 42:
          this.e = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c); 
    if (this.d != null)
      paramdqw.a(4, this.d); 
    if (this.e != null)
      paramdqw.a(5, this.e); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */