import java.util.ArrayList;

public final class esi extends etb {
  private static String[] a(String paramString1, int paramInt, String paramString2, boolean paramBoolean) {
    int i = 1;
    ArrayList<String> arrayList = null;
    while (true) {
      if (i <= paramInt) {
        String str = b(paramString1 + i + ':', paramString2, '\r', paramBoolean);
        if (str != null) {
          ArrayList<String> arrayList1 = arrayList;
          if (arrayList == null)
            arrayList1 = new ArrayList(paramInt); 
          arrayList1.add(str);
          i++;
          arrayList = arrayList1;
          continue;
        } 
      } 
      return (arrayList == null) ? null : arrayList.<String>toArray(new String[arrayList.size()]);
    } 
  }
  
  public esk a(eqm parameqm) {
    String str1 = c(parameqm);
    if (!str1.contains("MEMORY") || !str1.contains("\r\n"))
      return null; 
    String str2 = b("NAME1:", str1, '\r', true);
    String str3 = b("NAME2:", str1, '\r', true);
    String[] arrayOfString2 = a("TEL", 3, str1, true);
    String[] arrayOfString3 = a("MAIL", 3, str1, true);
    String str4 = b("MEMORY:", str1, '\r', false);
    String str5 = b("ADD:", str1, '\r', true);
    if (str5 == null) {
      str1 = null;
      return new esk(b(str2), null, str3, arrayOfString2, null, arrayOfString3, null, null, str4, (String[])str1, null, null, null, null, null, null);
    } 
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = str5;
    return new esk(b(str2), null, str3, arrayOfString2, null, arrayOfString3, null, null, str4, arrayOfString1, null, null, null, null, null, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */