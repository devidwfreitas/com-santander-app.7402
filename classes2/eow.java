final class eow extends ekn<Boolean> {
  public Boolean a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return (paramepo.f() == epr.STRING) ? Boolean.valueOf(Boolean.parseBoolean(paramepo.h())) : Boolean.valueOf(paramepo.i());
  }
  
  public void a(eps parameps, Boolean paramBoolean) {
    parameps.a(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */