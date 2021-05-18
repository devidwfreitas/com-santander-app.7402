import java.util.HashMap;
import java.util.Map;

public final class ess extends etb {
  private static String a(int paramInt, String paramString) {
    if (paramString.charAt(paramInt) != '(')
      return null; 
    paramString = paramString.substring(paramInt + 1);
    StringBuilder stringBuilder = new StringBuilder();
    paramInt = 0;
    while (paramInt < paramString.length()) {
      char c = paramString.charAt(paramInt);
      if (c == ')')
        return stringBuilder.toString(); 
      if (c >= '0' && c <= '9') {
        stringBuilder.append(c);
        paramInt++;
        continue;
      } 
      return null;
    } 
    return stringBuilder.toString();
  }
  
  private static String b(int paramInt, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    paramString = paramString.substring(paramInt);
    for (paramInt = 0; paramInt < paramString.length(); paramInt++) {
      char c = paramString.charAt(paramInt);
      if (c == '(') {
        if (a(paramInt, paramString) == null) {
          stringBuilder.append('(');
        } else {
          break;
        } 
      } else {
        stringBuilder.append(c);
      } 
    } 
    return stringBuilder.toString();
  }
  
  public esr a(eqm parameqm) {
    if (parameqm.d() != epu.RSS_EXPANDED)
      return null; 
    String str14 = c(parameqm);
    String str13 = null;
    String str12 = null;
    String str10 = null;
    String str9 = null;
    String str8 = null;
    String str7 = null;
    String str6 = null;
    String str11 = null;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int i = 0;
    while (true) {
      String str;
      int j;
      int k;
      if (i < str14.length()) {
        String str15 = a(i, str14);
        if (str15 == null)
          return null; 
        j = str15.length() + 2 + i;
        str = b(j, str14);
        k = str.length();
        i = -1;
        switch (str15.hashCode()) {
          default:
            switch (i) {
              case 0:
                str12 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 1:
                str13 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 2:
                str10 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 3:
                str9 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 4:
                str8 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 5:
                str7 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 6:
                str6 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 7:
              case 8:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
              case 14:
              case 15:
              case 16:
                str1 = "KG";
                str2 = str15.substring(3);
                i = j + k;
                str11 = str;
                break;
              case 17:
              case 18:
              case 19:
              case 20:
              case 21:
              case 22:
              case 23:
              case 24:
              case 25:
              case 26:
                str1 = "LB";
                str2 = str15.substring(3);
                i = j + k;
                str11 = str;
                break;
              case 27:
              case 28:
              case 29:
              case 30:
                str4 = str15.substring(3);
                str3 = str;
                str = str11;
                i = j + k;
                str11 = str;
                break;
              case 31:
              case 32:
              case 33:
              case 34:
                break;
            } 
            continue;
          case 1536:
            if (str15.equals("00"))
              i = 0; 
          case 1537:
            if (str15.equals("01"))
              i = 1; 
          case 1567:
            if (str15.equals("10"))
              i = 2; 
          case 1568:
            if (str15.equals("11"))
              i = 3; 
          case 1570:
            if (str15.equals("13"))
              i = 4; 
          case 1572:
            if (str15.equals("15"))
              i = 5; 
          case 1574:
            if (str15.equals("17"))
              i = 6; 
          case 1567966:
            if (str15.equals("3100"))
              i = 7; 
          case 1567967:
            if (str15.equals("3101"))
              i = 8; 
          case 1567968:
            if (str15.equals("3102"))
              i = 9; 
          case 1567969:
            if (str15.equals("3103"))
              i = 10; 
          case 1567970:
            if (str15.equals("3104"))
              i = 11; 
          case 1567971:
            if (str15.equals("3105"))
              i = 12; 
          case 1567972:
            if (str15.equals("3106"))
              i = 13; 
          case 1567973:
            if (str15.equals("3107"))
              i = 14; 
          case 1567974:
            if (str15.equals("3108"))
              i = 15; 
          case 1567975:
            if (str15.equals("3109"))
              i = 16; 
          case 1568927:
            if (str15.equals("3200"))
              i = 17; 
          case 1568928:
            if (str15.equals("3201"))
              i = 18; 
          case 1568929:
            if (str15.equals("3202"))
              i = 19; 
          case 1568930:
            if (str15.equals("3203"))
              i = 20; 
          case 1568931:
            if (str15.equals("3204"))
              i = 21; 
          case 1568932:
            if (str15.equals("3205"))
              i = 22; 
          case 1568933:
            if (str15.equals("3206"))
              i = 23; 
          case 1568934:
            if (str15.equals("3207"))
              i = 24; 
          case 1568935:
            if (str15.equals("3208"))
              i = 25; 
          case 1568936:
            if (str15.equals("3209"))
              i = 26; 
          case 1575716:
            if (str15.equals("3920"))
              i = 27; 
          case 1575717:
            if (str15.equals("3921"))
              i = 28; 
          case 1575718:
            if (str15.equals("3922"))
              i = 29; 
          case 1575719:
            if (str15.equals("3923"))
              i = 30; 
          case 1575747:
            if (str15.equals("3930"))
              i = 31; 
          case 1575748:
            if (str15.equals("3931"))
              i = 32; 
          case 1575749:
            if (str15.equals("3932"))
              i = 33; 
          case 1575750:
            if (str15.equals("3933"))
              i = 34; 
        } 
        if (str.length() < 4)
          return null; 
        str3 = str.substring(3);
        str5 = str.substring(0, 3);
        str4 = str15.substring(3);
        str = str11;
      } else {
        break;
      } 
      i = j + k;
      str11 = str;
      break;
    } 
    return new esr(str14, str13, str12, str10, str9, str8, str7, str6, str11, str1, str2, str3, str4, str5, (Map)hashMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */