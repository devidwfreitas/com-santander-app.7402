import java.util.Comparator;

class lqr implements Comparator<kvp> {
  lqr(lqq paramlqq) {}
  
  public int a(kvp paramkvp1, kvp paramkvp2) {
    return (paramkvp1.e() != null && paramkvp2.e() != null) ? paramkvp2.e().compareTo(paramkvp1.e()) : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */