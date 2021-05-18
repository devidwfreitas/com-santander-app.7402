public class csj {
  private static final cso a = new csk();
  
  public static <R extends cqg, T extends cqs<R>> egv<T> a(cpy<R> paramcpy, T paramT) {
    return a(paramcpy, new csm((cqs)paramT));
  }
  
  public static <R extends cqg, T> egv<T> a(cpy<R> paramcpy, csn<R, T> paramcsn) {
    return a(paramcpy, paramcsn, a);
  }
  
  public static <R extends cqg, T> egv<T> a(cpy<R> paramcpy, csn<R, T> paramcsn, cso paramcso) {
    egw<T> egw = new egw();
    paramcpy.a(new csl(paramcpy, egw, paramcsn, paramcso));
    return egw.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */