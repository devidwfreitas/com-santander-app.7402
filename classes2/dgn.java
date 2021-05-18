public final class dgn extends dqy<dgn> {
  public dgo a;
  
  public dgp b;
  
  public static dgn a(byte[] paramArrayOfbyte) {
    return dre.<dgn>a(new dgn(), paramArrayOfbyte);
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.c(2, this.b); 
    return j;
  }
  
  public dgn a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          if (this.a == null)
            this.a = new dgo(); 
          paramdqv.a(this.a);
          break;
        case 18:
          if (this.b == null)
            this.b = new dgp(); 
          paramdqv.a(this.b);
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */