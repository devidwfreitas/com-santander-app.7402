final class exn {
  private final boolean a;
  
  private final exh b;
  
  private final exh c;
  
  private final exi d;
  
  exn(exh paramexh1, exh paramexh2, exi paramexi, boolean paramBoolean) {
    this.b = paramexh1;
    this.c = paramexh2;
    this.d = paramexi;
    this.a = paramBoolean;
  }
  
  private static int a(Object paramObject) {
    return (paramObject == null) ? 0 : paramObject.hashCode();
  }
  
  private static boolean a(Object paramObject1, Object paramObject2) {
    return (paramObject1 == null) ? ((paramObject2 == null)) : paramObject1.equals(paramObject2);
  }
  
  boolean a() {
    return this.a;
  }
  
  exh b() {
    return this.b;
  }
  
  exh c() {
    return this.c;
  }
  
  exi d() {
    return this.d;
  }
  
  public boolean e() {
    return (this.c == null);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof exn) {
      paramObject = paramObject;
      if (a(this.b, ((exn)paramObject).b) && a(this.c, ((exn)paramObject).c) && a(this.d, ((exn)paramObject).d))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return a(this.b) ^ a(this.c) ^ a(this.d);
  }
  
  public String toString() {
    StringBuilder stringBuilder = (new StringBuilder()).append("[ ").append(this.b).append(" , ").append(this.c).append(" : ");
    if (this.d == null) {
      String str = "null";
      return stringBuilder.append(str).append(" ]").toString();
    } 
    Integer integer = Integer.valueOf(this.d.a());
    return stringBuilder.append(integer).append(" ]").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */