public final class dgo extends dqy<dgo> {
  public Integer a = null;
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(27, this.a.intValue()); 
    return i;
  }
  
  public dgo a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 216:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
              break;
          } 
          this.a = Integer.valueOf(i);
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(27, this.a.intValue()); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */