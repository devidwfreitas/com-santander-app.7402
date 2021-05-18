final class eoj extends ekn<StringBuilder> {
  public StringBuilder a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return new StringBuilder(paramepo.h());
  }
  
  public void a(eps parameps, StringBuilder paramStringBuilder) {
    String str;
    if (paramStringBuilder == null) {
      paramStringBuilder = null;
    } else {
      str = paramStringBuilder.toString();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eoj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */