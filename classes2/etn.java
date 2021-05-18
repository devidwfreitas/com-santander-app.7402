import java.util.List;

public final class etn extends etb {
  private static String a(CharSequence paramCharSequence, String paramString, boolean paramBoolean) {
    List<String> list = etm.b(paramCharSequence, paramString, paramBoolean, false);
    return (list == null || list.isEmpty()) ? null : list.get(0);
  }
  
  private static String a(String paramString) {
    null = paramString;
    if (paramString != null) {
      if (!paramString.startsWith("mailto:")) {
        null = paramString;
        return paramString.startsWith("MAILTO:") ? paramString.substring(7) : null;
      } 
    } else {
      return null;
    } 
    return paramString.substring(7);
  }
  
  private static String[] b(CharSequence paramCharSequence, String paramString, boolean paramBoolean) {
    List<List<String>> list = etm.a(paramCharSequence, paramString, paramBoolean, false);
    if (list == null || list.isEmpty())
      return null; 
    int j = list.size();
    String[] arrayOfString = new String[j];
    for (int i = 0; i < j; i++)
      arrayOfString[i] = ((List<String>)list.get(i)).get(0); 
    return arrayOfString;
  }
  
  public esn a(eqm parameqm) {
    double d1;
    double d2;
    String str8 = c(parameqm);
    if (str8.indexOf("BEGIN:VEVENT") < 0)
      return null; 
    String str1 = a("SUMMARY", str8, true);
    String str2 = a("DTSTART", str8, true);
    if (str2 == null)
      return null; 
    String str3 = a("DTEND", str8, true);
    String str4 = a("DURATION", str8, true);
    String str5 = a("LOCATION", str8, true);
    String str6 = a(a("ORGANIZER", str8, true));
    String[] arrayOfString = b("ATTENDEE", str8, true);
    if (arrayOfString != null) {
      int i;
      for (i = 0; i < arrayOfString.length; i++)
        arrayOfString[i] = a(arrayOfString[i]); 
    } 
    String str7 = a("DESCRIPTION", str8, true);
    str8 = a("GEO", str8, true);
    if (str8 == null) {
      d1 = Double.NaN;
      d2 = Double.NaN;
    } else {
      int i = str8.indexOf(';');
      if (i < 0)
        return null; 
      try {
        d1 = Double.parseDouble(str8.substring(0, i));
        d2 = Double.parseDouble(str8.substring(i + 1));
        try {
          return new esn(str1, str2, str3, str4, str5, str6, arrayOfString, str7, d1, d2);
        } catch (IllegalArgumentException null) {
          return null;
        } 
      } catch (NumberFormatException illegalArgumentException) {
        return null;
      } 
    } 
    try {
      return new esn((String)illegalArgumentException, str2, str3, str4, str5, str6, arrayOfString, str7, d1, d2);
    } catch (IllegalArgumentException illegalArgumentException1) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */