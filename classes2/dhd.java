public abstract class dhd<T> {
  private final int a;
  
  private final String b;
  
  private final T c;
  
  private dhd(int paramInt, String paramString, T paramT) {
    this.a = paramInt;
    this.b = paramString;
    this.c = paramT;
    dho.a().a(this);
  }
  
  public static dhf a(int paramInt, String paramString, Boolean paramBoolean) {
    return new dhf(paramInt, paramString, paramBoolean);
  }
  
  public static dhg a(int paramInt1, String paramString, int paramInt2) {
    return new dhg(paramInt1, paramString, Integer.valueOf(paramInt2));
  }
  
  public static dhh a(int paramInt, String paramString, long paramLong) {
    return new dhh(paramInt, paramString, Long.valueOf(paramLong));
  }
  
  public static dhi a(int paramInt, String paramString1, String paramString2) {
    return new dhi(paramInt, paramString1, paramString2);
  }
  
  protected abstract T a(dhl paramdhl);
  
  public String a() {
    return this.b;
  }
  
  public T b() {
    return this.c;
  }
  
  public T c() {
    return dho.b().a(this);
  }
  
  public int d() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */