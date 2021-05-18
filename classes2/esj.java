public final class esj extends esh {
  private static String a(String paramString) {
    int i = paramString.indexOf(',');
    String str = paramString;
    if (i >= 0)
      str = paramString.substring(i + 1) + ' ' + paramString.substring(0, i); 
    return str;
  }
  
  public esk a(eqm parameqm) {
    String str3 = c(parameqm);
    if (!str3.startsWith("MECARD:"))
      return null; 
    String[] arrayOfString1 = a("N:", str3, true);
    if (arrayOfString1 == null)
      return null; 
    String str4 = a(arrayOfString1[0]);
    String str5 = b("SOUND:", str3, true);
    String[] arrayOfString3 = a("TEL:", str3, true);
    String[] arrayOfString4 = a("EMAIL:", str3, true);
    String str6 = b("NOTE:", str3, false);
    String[] arrayOfString5 = a("ADR:", str3, true);
    String str2 = b("BDAY:", str3, true);
    String str1 = str2;
    if (!a(str2, 8))
      str1 = null; 
    String[] arrayOfString2 = a("URL:", str3, true);
    str3 = b("ORG:", str3, true);
    return new esk(b(str4), null, str5, arrayOfString3, null, arrayOfString4, null, null, str6, arrayOfString5, null, str3, str1, null, arrayOfString2, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */