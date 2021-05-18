import java.util.Comparator;

class lon implements Comparator<krn> {
  lon(loi paramloi) {}
  
  public int a(krn paramkrn1, krn paramkrn2) {
    Integer integer2 = Integer.valueOf(Integer.parseInt(paramkrn1.c()));
    Integer integer3 = Integer.valueOf(Integer.parseInt(paramkrn2.c()));
    if (paramkrn1.c() != null)
      integer2 = Integer.valueOf(Integer.parseInt(paramkrn1.c())); 
    Integer integer1 = integer3;
    if (paramkrn2.c() != null)
      integer1 = Integer.valueOf(Integer.parseInt(paramkrn2.c())); 
    return integer2.compareTo(integer1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */