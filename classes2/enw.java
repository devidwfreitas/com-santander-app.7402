final class enw implements ekp {
  private final epn<?> a;
  
  private final boolean b;
  
  private final Class<?> c;
  
  private final ekh<?> d;
  
  private final ejy<?> e;
  
  enw(Object paramObject, epn<?> paramepn, boolean paramBoolean, Class<?> paramClass) {
    boolean bool;
    ekh ekh1;
    if (paramObject instanceof ekh) {
      ekh1 = (ekh)paramObject;
    } else {
      ekh1 = null;
    } 
    this.d = ekh1;
    if (paramObject instanceof ejy) {
      paramObject = paramObject;
    } else {
      paramObject = null;
    } 
    this.e = (ejy<?>)paramObject;
    if (this.d != null || this.e != null) {
      bool = true;
    } else {
      bool = false;
    } 
    ekv.a(bool);
    this.a = paramepn;
    this.b = paramBoolean;
    this.c = paramClass;
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    boolean bool;
    if (this.a != null) {
      if (this.a.equals(paramepn) || (this.b && this.a.getType() == paramepn.getRawType())) {
        bool = true;
      } else {
        bool = false;
      } 
    } else {
      bool = this.c.isAssignableFrom(paramepn.getRawType());
    } 
    return bool ? new ent<T>((ekh)this.d, (ejy)this.e, paramejm, paramepn, this) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */