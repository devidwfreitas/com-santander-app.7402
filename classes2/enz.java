final class enz extends ekn<Class> {
  public Class a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
  }
  
  public void a(eps parameps, Class paramClass) {
    if (paramClass == null) {
      parameps.f();
      return;
    } 
    throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + paramClass.getName() + ". Forgot to register a type adapter?");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */