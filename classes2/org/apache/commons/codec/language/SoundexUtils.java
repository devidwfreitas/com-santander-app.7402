package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.StringEncoder;

final class SoundexUtils {
  static String clean(String paramString) {
    if (paramString == null || paramString.length() == 0)
      return paramString; 
    int k = paramString.length();
    char[] arrayOfChar = new char[k];
    int j = 0;
    int i = 0;
    while (j < k) {
      if (Character.isLetter(paramString.charAt(j))) {
        int m = i + 1;
        arrayOfChar[i] = paramString.charAt(j);
        i = m;
      } 
      j++;
    } 
    return (i == k) ? paramString.toUpperCase(Locale.ENGLISH) : (new String(arrayOfChar, 0, i)).toUpperCase(Locale.ENGLISH);
  }
  
  static int difference(StringEncoder paramStringEncoder, String paramString1, String paramString2) {
    return differenceEncoded(paramStringEncoder.encode(paramString1), paramStringEncoder.encode(paramString2));
  }
  
  static int differenceEncoded(String paramString1, String paramString2) {
    int i = 0;
    int j = 0;
    int k = j;
    if (paramString1 != null) {
      if (paramString2 == null)
        return j; 
    } else {
      return k;
    } 
    int m = Math.min(paramString1.length(), paramString2.length());
    j = 0;
    while (true) {
      k = i;
      if (j < m) {
        k = i;
        if (paramString1.charAt(j) == paramString2.charAt(j))
          k = i + 1; 
        j++;
        i = k;
        continue;
      } 
      return k;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\SoundexUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */