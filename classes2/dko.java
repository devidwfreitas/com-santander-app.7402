public final class dko<V> {
  private final V a;
  
  private final des<V> b;
  
  private final String c;
  
  private dko(String paramString, des<V> paramdes, V paramV) {
    csp.a(paramdes);
    this.b = paramdes;
    this.a = paramV;
    this.c = paramString;
  }
  
  static dko<Integer> a(String paramString, int paramInt) {
    return a(paramString, paramInt, paramInt);
  }
  
  static dko<Integer> a(String paramString, int paramInt1, int paramInt2) {
    return new dko<Integer>(paramString, des.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
  }
  
  static dko<Long> a(String paramString, long paramLong) {
    return a(paramString, paramLong, paramLong);
  }
  
  static dko<Long> a(String paramString, long paramLong1, long paramLong2) {
    return new dko<Long>(paramString, des.a(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
  }
  
  static dko<String> a(String paramString1, String paramString2) {
    return a(paramString1, paramString2, paramString2);
  }
  
  static dko<String> a(String paramString1, String paramString2, String paramString3) {
    return new dko<String>(paramString1, des.a(paramString1, paramString3), paramString2);
  }
  
  static dko<Boolean> a(String paramString, boolean paramBoolean) {
    return a(paramString, paramBoolean, paramBoolean);
  }
  
  static dko<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    return new dko<Boolean>(paramString, des.a(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
  }
  
  public V a(V paramV) {
    return (paramV != null) ? paramV : this.a;
  }
  
  public String a() {
    return this.c;
  }
  
  public V b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */