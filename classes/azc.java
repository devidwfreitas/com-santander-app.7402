import java.util.List;

public class azc extends aze<bce> {
  private final bce b;
  
  public azc(List<? extends axz<bce>> paramList) {
    super(paramList);
    int i;
    bce bce1 = (bce)((axz)paramList.get(0)).a;
    if (bce1 == null) {
      i = 0;
    } else {
      i = bce1.c();
    } 
    this.b = new bce(new float[i], new int[i]);
  }
  
  bce b(axz<bce> paramaxz, float paramFloat) {
    this.b.a((bce)paramaxz.a, (bce)paramaxz.b, paramFloat);
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */