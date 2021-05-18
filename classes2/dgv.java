public final class dgv extends dqy<dgv> {
  public Long a = null;
  
  public Long b = null;
  
  public Long c = null;
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.f(1, this.a.longValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.f(2, this.b.longValue()); 
    i = j;
    if (this.c != null)
      i = j + dqw.f(3, this.c.longValue()); 
    return i;
  }
  
  public dgv a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Long.valueOf(paramdqv.f());
          break;
        case 16:
          this.b = Long.valueOf(paramdqv.f());
          break;
        case 24:
          this.c = Long.valueOf(paramdqv.f());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.b(1, this.a.longValue()); 
    if (this.b != null)
      paramdqw.b(2, this.b.longValue()); 
    if (this.c != null)
      paramdqw.b(3, this.c.longValue()); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */