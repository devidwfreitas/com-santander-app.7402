final class eol extends ekn<StringBuffer> {
  public StringBuffer a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return new StringBuffer(paramepo.h());
  }
  
  public void a(eps parameps, StringBuffer paramStringBuffer) {
    String str;
    if (paramStringBuffer == null) {
      paramStringBuffer = null;
    } else {
      str = paramStringBuffer.toString();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */