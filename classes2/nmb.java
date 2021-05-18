public final class nmb {
  public static <T> T a(nlj<T> paramnlj, T paramT) {
    paramnlj.injectMembers(paramT);
    return paramT;
  }
  
  public static <T> nlj<T> a() {
    return nmc.INSTANCE;
  }
  
  public static <T> nlj<T> a(nlj<? super T> paramnlj) {
    return (nlj<T>)nmd.<nlj<? super T>>a(paramnlj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */