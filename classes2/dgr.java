public final class dgr extends dqy<dgr> {
  public String a = null;
  
  public Long b = null;
  
  public String c = null;
  
  public String d = null;
  
  public String e = null;
  
  public Long f = null;
  
  public Long g = null;
  
  public String h = null;
  
  public Long i = null;
  
  public String j = null;
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.b(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.f(2, this.b.longValue()); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c); 
    j = i;
    if (this.d != null)
      j = i + dqw.b(4, this.d); 
    i = j;
    if (this.e != null)
      i = j + dqw.b(5, this.e); 
    j = i;
    if (this.f != null)
      j = i + dqw.f(6, this.f.longValue()); 
    i = j;
    if (this.g != null)
      i = j + dqw.f(7, this.g.longValue()); 
    j = i;
    if (this.h != null)
      j = i + dqw.b(8, this.h); 
    i = j;
    if (this.i != null)
      i = j + dqw.f(9, this.i.longValue()); 
    j = i;
    if (this.j != null)
      j = i + dqw.b(10, this.j); 
    return j;
  }
  
  public dgr a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
        case 16:
          this.b = Long.valueOf(paramdqv.f());
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
        case 48:
          this.f = Long.valueOf(paramdqv.f());
          break;
        case 56:
          this.g = Long.valueOf(paramdqv.f());
          break;
        case 66:
          this.h = paramdqv.j();
          break;
        case 72:
          this.i = Long.valueOf(paramdqv.f());
          break;
        case 82:
          this.j = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.b(2, this.b.longValue()); 
    if (this.c != null)
      paramdqw.a(3, this.c); 
    if (this.d != null)
      paramdqw.a(4, this.d); 
    if (this.e != null)
      paramdqw.a(5, this.e); 
    if (this.f != null)
      paramdqw.b(6, this.f.longValue()); 
    if (this.g != null)
      paramdqw.b(7, this.g.longValue()); 
    if (this.h != null)
      paramdqw.a(8, this.h); 
    if (this.i != null)
      paramdqw.b(9, this.i.longValue()); 
    if (this.j != null)
      paramdqw.a(10, this.j); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */