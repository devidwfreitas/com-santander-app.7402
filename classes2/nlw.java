public final class nlw<T> implements nlh<T>, nlu<T> {
  private static final nlw<Object> a = new nlw(null);
  
  private final T b;
  
  private nlw(T paramT) {
    this.b = paramT;
  }
  
  public static <T> nlu<T> a(T paramT) {
    return new nlw<T>(nmd.a(paramT, "instance cannot be null"));
  }
  
  private static <T> nlw<T> a() {
    return (nlw)a;
  }
  
  public static <T> nlu<T> b(T paramT) {
    return (paramT == null) ? a() : new nlw<T>(paramT);
  }
  
  public T b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nlw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */