public final class drj extends dqy<drj> {
  private static volatile drj[] b;
  
  public String a;
  
  public drj() {
    c();
  }
  
  public static drj[] b() {
    if (b == null)
      synchronized (drc.c) {
        if (b == null)
          b = new drj[0]; 
        return b;
      }  
    return b;
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null) {
      i = j;
      if (!this.a.equals(""))
        i = j + dqw.b(1, this.a); 
    } 
    return i;
  }
  
  public drj a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null && !this.a.equals(""))
      paramdqw.a(1, this.a); 
    super.a(paramdqw);
  }
  
  public drj c() {
    this.a = "";
    this.ag = null;
    this.ah = -1;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */