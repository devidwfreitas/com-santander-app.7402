import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public abstract class etb {
  private static final etb[] a = new etb[] { 
      new esm(), new esj(), new esq(), new esi(), new etm(), new esl(), new etn(), new esp(), new etf(), new eth(), 
      new etc(), new ete(), new esu(), new etr(), new etl(), new etk(), new esw(), new eta(), new ess(), new etp() };
  
  private static final Pattern b = Pattern.compile("\\d+");
  
  private static final Pattern c = Pattern.compile("&");
  
  private static final Pattern d = Pattern.compile("=");
  
  private static final String e = "﻿";
  
  protected static int a(char paramChar) {
    return (paramChar >= '0' && paramChar <= '9') ? (paramChar - 48) : ((paramChar >= 'a' && paramChar <= 'f') ? (paramChar - 97 + 10) : ((paramChar >= 'A' && paramChar <= 'F') ? (paramChar - 65 + 10) : -1));
  }
  
  private static void a(CharSequence paramCharSequence, Map<String, String> paramMap) {
    String[] arrayOfString = d.split(paramCharSequence, 2);
    if (arrayOfString.length == 2) {
      paramCharSequence = arrayOfString[0];
      String str = arrayOfString[1];
      try {
        paramMap.put(paramCharSequence, e(str));
        return;
      } catch (IllegalArgumentException illegalArgumentException) {
        return;
      } 
    } 
  }
  
  protected static void a(String paramString, StringBuilder paramStringBuilder) {
    if (paramString != null) {
      paramStringBuilder.append('\n');
      paramStringBuilder.append(paramString);
    } 
  }
  
  protected static void a(String[] paramArrayOfString, StringBuilder paramStringBuilder) {
    if (paramArrayOfString != null) {
      int j = paramArrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str = paramArrayOfString[i];
        paramStringBuilder.append('\n');
        paramStringBuilder.append(str);
      } 
    } 
  }
  
  protected static boolean a(CharSequence paramCharSequence, int paramInt) {
    return (paramCharSequence != null && paramInt > 0 && paramInt == paramCharSequence.length() && b.matcher(paramCharSequence).matches());
  }
  
  protected static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    if (paramCharSequence != null && paramInt2 > 0) {
      paramInt2 = paramInt1 + paramInt2;
      if (paramCharSequence.length() >= paramInt2 && b.matcher(paramCharSequence.subSequence(paramInt1, paramInt2)).matches())
        return true; 
    } 
    return false;
  }
  
  static String[] a(String paramString1, String paramString2, char paramChar, boolean paramBoolean) {
    int j = paramString2.length();
    int i = 0;
    ArrayList<String> arrayList = null;
    while (true) {
      ArrayList<String> arrayList1;
      if (i < j) {
        i = paramString2.indexOf(paramString1, i);
        if (i >= 0) {
          int k = i + paramString1.length();
          boolean bool = true;
          i = k;
          while (bool) {
            i = paramString2.indexOf(paramChar, i);
            if (i < 0) {
              i = paramString2.length();
              bool = false;
              continue;
            } 
            if (b(paramString2, i) % 2 != 0) {
              i++;
              continue;
            } 
            ArrayList<String> arrayList2 = arrayList;
            if (arrayList == null)
              arrayList2 = new ArrayList(3); 
            String str2 = c(paramString2.substring(k, i));
            String str1 = str2;
            if (paramBoolean)
              str1 = str2.trim(); 
            if (!str1.isEmpty())
              arrayList2.add(str1); 
            i++;
            bool = false;
            arrayList1 = arrayList2;
          } 
          continue;
        } 
      } 
      return (arrayList1 == null || arrayList1.isEmpty()) ? null : arrayList1.<String>toArray(new String[arrayList1.size()]);
    } 
  }
  
  private static int b(CharSequence paramCharSequence, int paramInt) {
    int i = 0;
    while (--paramInt >= 0 && paramCharSequence.charAt(paramInt) == '\\') {
      i++;
      paramInt--;
    } 
    return i;
  }
  
  static String b(String paramString1, String paramString2, char paramChar, boolean paramBoolean) {
    String[] arrayOfString = a(paramString1, paramString2, paramChar, paramBoolean);
    return (arrayOfString == null) ? null : arrayOfString[0];
  }
  
  protected static String[] b(String paramString) {
    return (paramString == null) ? null : new String[] { paramString };
  }
  
  protected static String c(eqm parameqm) {
    String str2 = parameqm.a();
    String str1 = str2;
    if (str2.startsWith("﻿"))
      str1 = str2.substring(1); 
    return str1;
  }
  
  protected static String c(String paramString) {
    int i = paramString.indexOf('\\');
    if (i < 0)
      return paramString; 
    int j = paramString.length();
    StringBuilder stringBuilder = new StringBuilder(j - 1);
    stringBuilder.append(paramString.toCharArray(), 0, i);
    boolean bool = false;
    while (i < j) {
      char c = paramString.charAt(i);
      if (bool || c != '\\') {
        stringBuilder.append(c);
        bool = false;
      } else {
        bool = true;
      } 
      i++;
    } 
    return stringBuilder.toString();
  }
  
  public static esx d(eqm parameqm) {
    etb[] arrayOfEtb = a;
    int j = arrayOfEtb.length;
    for (int i = 0; i < j; i++) {
      esx esx = arrayOfEtb[i].b(parameqm);
      if (esx != null)
        return esx; 
    } 
    return new eti(parameqm.a(), null);
  }
  
  static Map<String, String> d(String paramString) {
    int i = paramString.indexOf('?');
    if (i < 0)
      return null; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>(3);
    String[] arrayOfString = c.split(paramString.substring(i + 1));
    int j = arrayOfString.length;
    i = 0;
    while (true) {
      HashMap<Object, Object> hashMap1 = hashMap;
      if (i < j) {
        a(arrayOfString[i], (Map)hashMap);
        i++;
        continue;
      } 
      return (Map)hashMap1;
    } 
  }
  
  static String e(String paramString) {
    try {
      return URLDecoder.decode(paramString, "UTF-8");
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new IllegalStateException(unsupportedEncodingException);
    } 
  }
  
  public abstract esx b(eqm parameqm);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */