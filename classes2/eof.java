final class eof extends ekn<Character> {
  public Character a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    String str = paramepo.h();
    if (str.length() != 1)
      throw new ekj("Expecting character, got: " + str); 
    return Character.valueOf(str.charAt(0));
  }
  
  public void a(eps parameps, Character paramCharacter) {
    String str;
    if (paramCharacter == null) {
      paramCharacter = null;
    } else {
      str = String.valueOf(paramCharacter);
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */