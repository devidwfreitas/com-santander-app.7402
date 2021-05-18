public final class ent<T> extends ekn<T> {
  private final ekh<T> a;
  
  private final ejy<T> b;
  
  private final ejm c;
  
  private final epn<T> d;
  
  private final ekp e;
  
  private final env f = (env)new env(this, null);
  
  private ekn<T> g;
  
  public ent(ekh<T> paramekh, ejy<T> paramejy, ejm paramejm, epn<T> paramepn, ekp paramekp) {
    this.a = paramekh;
    this.b = paramejy;
    this.c = paramejm;
    this.d = paramepn;
    this.e = paramekp;
  }
  
  public static ekp a(epn<?> paramepn, Object paramObject) {
    return new enw(paramObject, paramepn, false, null);
  }
  
  public static ekp a(Class<?> paramClass, Object paramObject) {
    return new enw(paramObject, null, false, paramClass);
  }
  
  private ekn<T> b() {
    ekn<T> ekn1 = this.g;
    if (ekn1 != null)
      return ekn1; 
    ekn1 = this.c.a(this.e, this.d);
    this.g = ekn1;
    return ekn1;
  }
  
  public static ekp b(epn<?> paramepn, Object paramObject) {
    if (paramepn.getType() == paramepn.getRawType()) {
      boolean bool1 = true;
      return new enw(paramObject, paramepn, bool1, null);
    } 
    boolean bool = false;
    return new enw(paramObject, paramepn, bool, null);
  }
  
  public void a(eps parameps, T paramT) {
    if (this.a == null) {
      b().a(parameps, paramT);
      return;
    } 
    if (paramT == null) {
      parameps.f();
      return;
    } 
    emn.a(this.a.a(paramT, this.d.getType(), (ekg)this.f), parameps);
  }
  
  public T b(epo paramepo) {
    if (this.b == null)
      return b().b(paramepo); 
    ejz ejz = emn.a(paramepo);
    return ejz.s() ? null : this.b.b(ejz, this.d.getType(), (ejx)this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */