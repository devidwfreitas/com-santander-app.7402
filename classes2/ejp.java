class ejp extends ekn<Number> {
  ejp(ejm paramejm) {}
  
  public Float a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return Float.valueOf((float)paramepo.k());
  }
  
  public void a(eps parameps, Number paramNumber) {
    if (paramNumber == null) {
      parameps.f();
      return;
    } 
    ejm.a(paramNumber.floatValue());
    parameps.a(paramNumber);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */