public final class enb implements ekp {
  private final ela a;
  
  public enb(ela paramela) {
    this.a = paramela;
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    ekr ekr = (ekr)paramepn.getRawType().getAnnotation(ekr.class);
    return (ekn)((ekr == null) ? null : a(this.a, paramejm, paramepn, ekr));
  }
  
  ekn<?> a(ela paramela, ejm paramejm, epn<?> paramepn, ekr paramekr) {
    ekn<?> ekn1;
    ekn ekn = (ekn)paramela.<Object>a(epn.get(paramekr.a())).a();
    if (ekn instanceof ekn) {
      ekn1 = ekn;
    } else if (ekn instanceof ekp) {
      ekn1 = ((ekp)ekn).a(paramejm, paramepn);
    } else if (ekn instanceof ekh || ekn instanceof ejy) {
      if (ekn instanceof ekh) {
        ekh ekh = (ekh)ekn;
      } else {
        paramela = null;
      } 
      if (ekn instanceof ejy) {
        ejy ejy = (ejy)ekn;
      } else {
        ekn = null;
      } 
      ekn1 = new ent((ekh<?>)paramela, (ejy<?>)ekn, paramejm, paramepn, null);
    } else {
      throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference.");
    } 
    ekn<?> ekn2 = ekn1;
    if (ekn1 != null) {
      ekn2 = ekn1;
      if (paramekr.b())
        ekn2 = ekn1.a(); 
    } 
    return ekn2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */