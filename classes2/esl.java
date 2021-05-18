import java.util.ArrayList;

public final class esl extends esh {
  private static String a(String paramString1, String paramString2) {
    if (paramString1 == null)
      return paramString2; 
    if (paramString2 != null)
      paramString1 = paramString1 + ' ' + paramString2; 
    return paramString1;
  }
  
  private static String[] a(String paramString1, String paramString2, String paramString3) {
    ArrayList<String> arrayList = new ArrayList(3);
    if (paramString1 != null)
      arrayList.add(paramString1); 
    if (paramString2 != null)
      arrayList.add(paramString2); 
    if (paramString3 != null)
      arrayList.add(paramString3); 
    int i = arrayList.size();
    return (i == 0) ? null : arrayList.<String>toArray(new String[i]);
  }
  
  public esk a(eqm parameqm) {
    String str7 = c(parameqm);
    if (!str7.startsWith("BIZCARD:"))
      return null; 
    String str1 = a(b("N:", str7, true), b("X:", str7, true));
    String str2 = b("T:", str7, true);
    String str3 = b("C:", str7, true);
    String[] arrayOfString = a("A:", str7, true);
    String str4 = b("B:", str7, true);
    String str5 = b("M:", str7, true);
    String str6 = b("F:", str7, true);
    str7 = b("E:", str7, true);
    return new esk(b(str1), null, null, a(str4, str5, str6), null, b(str7), null, null, null, arrayOfString, null, str3, null, str2, null, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */