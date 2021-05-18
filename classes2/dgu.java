public final class dgu extends dqy<dgu> {
  private static volatile dgu[] m;
  
  public Long a = null;
  
  public Long b = null;
  
  public Long c = null;
  
  public Long d = null;
  
  public Long e = null;
  
  public Long f = null;
  
  public Integer g = null;
  
  public Long h = null;
  
  public Long i = null;
  
  public Long j = null;
  
  public Integer k = null;
  
  public Long l = null;
  
  public static dgu[] b() {
    if (m == null)
      synchronized (drc.c) {
        if (m == null)
          m = new dgu[0]; 
        return m;
      }  
    return m;
  }
  
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
    j = i;
    if (this.d != null)
      j = i + dqw.f(4, this.d.longValue()); 
    i = j;
    if (this.e != null)
      i = j + dqw.f(5, this.e.longValue()); 
    j = i;
    if (this.f != null)
      j = i + dqw.f(6, this.f.longValue()); 
    i = j;
    if (this.g != null)
      i = j + dqw.c(7, this.g.intValue()); 
    j = i;
    if (this.h != null)
      j = i + dqw.f(8, this.h.longValue()); 
    i = j;
    if (this.i != null)
      i = j + dqw.f(9, this.i.longValue()); 
    j = i;
    if (this.j != null)
      j = i + dqw.f(10, this.j.longValue()); 
    i = j;
    if (this.k != null)
      i = j + dqw.c(11, this.k.intValue()); 
    j = i;
    if (this.l != null)
      j = i + dqw.f(12, this.l.longValue()); 
    return j;
  }
  
  public dgu a(dqv paramdqv) {
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
        case 32:
          this.d = Long.valueOf(paramdqv.f());
          break;
        case 40:
          this.e = Long.valueOf(paramdqv.f());
          break;
        case 48:
          this.f = Long.valueOf(paramdqv.f());
          break;
        case 56:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
            case 2:
            case 1000:
              break;
          } 
          this.g = Integer.valueOf(i);
          break;
        case 64:
          this.h = Long.valueOf(paramdqv.f());
          break;
        case 72:
          this.i = Long.valueOf(paramdqv.f());
          break;
        case 80:
          this.j = Long.valueOf(paramdqv.f());
          break;
        case 88:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
            case 2:
            case 1000:
              break;
          } 
          this.k = Integer.valueOf(i);
          break;
        case 96:
          this.l = Long.valueOf(paramdqv.f());
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
    if (this.d != null)
      paramdqw.b(4, this.d.longValue()); 
    if (this.e != null)
      paramdqw.b(5, this.e.longValue()); 
    if (this.f != null)
      paramdqw.b(6, this.f.longValue()); 
    if (this.g != null)
      paramdqw.a(7, this.g.intValue()); 
    if (this.h != null)
      paramdqw.b(8, this.h.longValue()); 
    if (this.i != null)
      paramdqw.b(9, this.i.longValue()); 
    if (this.j != null)
      paramdqw.b(10, this.j.longValue()); 
    if (this.k != null)
      paramdqw.a(11, this.k.intValue()); 
    if (this.l != null)
      paramdqw.b(12, this.l.longValue()); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */