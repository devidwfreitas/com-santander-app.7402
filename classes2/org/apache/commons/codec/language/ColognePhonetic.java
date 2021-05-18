package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class ColognePhonetic implements StringEncoder {
  private static final char[][] PREPROCESS_MAP = new char[][] { { 'Ä', 'A' }, { 'Ü', 'U' }, { 'Ö', 'O' }, { 'ß', 'S' } };
  
  static Class class$java$lang$String;
  
  private static boolean arrayContains(char[] paramArrayOfchar, char paramChar) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < paramArrayOfchar.length) {
        if (paramArrayOfchar[i] == paramChar)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw (new NoClassDefFoundError()).initCause(classNotFoundException);
    } 
  }
  
  private String preprocess(String paramString) {
    char[] arrayOfChar = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    label15: while (i < arrayOfChar.length) {
      if (arrayOfChar[i] > 'Z') {
        int j = 0;
        while (true) {
          if (j < PREPROCESS_MAP.length)
            if (arrayOfChar[i] == PREPROCESS_MAP[j][0]) {
              arrayOfChar[i] = PREPROCESS_MAP[j][1];
            } else {
              j++;
              continue;
            }  
          i++;
          continue label15;
        } 
      } 
      continue;
    } 
    return new String(arrayOfChar);
  }
  
  public String colognePhonetic(String paramString) {
    if (paramString == null)
      return null; 
    String str = preprocess(paramString);
    ColognePhonetic$CologneOutputBuffer colognePhonetic$CologneOutputBuffer = new ColognePhonetic$CologneOutputBuffer(this, str.length() * 2);
    ColognePhonetic$CologneInputBuffer colognePhonetic$CologneInputBuffer = new ColognePhonetic$CologneInputBuffer(this, str.toCharArray());
    int i = colognePhonetic$CologneInputBuffer.length();
    char c2 = '/';
    char c1 = '-';
    while (i > 0) {
      byte b;
      char c = colognePhonetic$CologneInputBuffer.removeNext();
      int j = colognePhonetic$CologneInputBuffer.length();
      if (j > 0) {
        b = colognePhonetic$CologneInputBuffer.getNextChar();
      } else {
        b = 45;
      } 
      if (arrayContains(new char[] { 'A', 'E', 'I', 'J', 'O', 'U', 'Y' }, c)) {
        c1 = '0';
      } else if (c == 'H' || c < 'A' || c > 'Z') {
        i = j;
        if (c2 != '/') {
          c1 = '-';
        } else {
          continue;
        } 
      } else if (c == 'B' || (c == 'P' && b != 72)) {
        c1 = '1';
      } else if ((c == 'D' || c == 'T') && !arrayContains(new char[] { 'S', 'C', 'Z' }, b)) {
        c1 = '2';
      } else if (arrayContains(new char[] { 'W', 'F', 'P', 'V' }, c)) {
        c1 = '3';
      } else if (arrayContains(new char[] { 'G', 'K', 'Q' }, c)) {
        c1 = '4';
      } else if (c == 'X' && !arrayContains(new char[] { 'C', 'K', 'Q' }, c1)) {
        colognePhonetic$CologneInputBuffer.addLeft('S');
        j++;
        c1 = '4';
      } else if (c == 'S' || c == 'Z') {
        c1 = '8';
      } else if (c == 'C') {
        if (c2 == '/') {
          if (arrayContains(new char[] { 'A', 'H', 'K', 'L', 'O', 'Q', 'R', 'U', 'X' }, b)) {
            c1 = '4';
          } else {
            c1 = '8';
          } 
        } else if (arrayContains(new char[] { 'S', 'Z' }, c1) || !arrayContains(new char[] { 'A', 'H', 'O', 'U', 'K', 'Q', 'X' }, b)) {
          c1 = '8';
        } else {
          c1 = '4';
        } 
      } else if (arrayContains(new char[] { 'T', 'D', 'X' }, c)) {
        c1 = '8';
      } else if (c == 'R') {
        c1 = '7';
      } else if (c == 'L') {
        c1 = '5';
      } else if (c == 'M' || c == 'N') {
        c1 = '6';
      } else {
        c1 = c;
      } 
      if (c1 != '-' && ((c2 != c1 && (c1 != '0' || c2 == '/')) || c1 < '0' || c1 > '8'))
        colognePhonetic$CologneOutputBuffer.addRight(c1); 
      c2 = c1;
      c1 = c;
      i = j;
    } 
    return colognePhonetic$CologneOutputBuffer.toString();
  }
  
  public Object encode(Object paramObject) {
    if (!(paramObject instanceof String)) {
      StringBuffer stringBuffer = (new StringBuffer()).append("This method’s parameter was expected to be of the type ");
      if (class$java$lang$String == null) {
        Class clazz1 = class$("java.lang.String");
        class$java$lang$String = clazz1;
        throw new EncoderException(stringBuffer.append(clazz1.getName()).append(". But actually it was of the type ").append(paramObject.getClass().getName()).append(".").toString());
      } 
      Class clazz = class$java$lang$String;
      throw new EncoderException(stringBuffer.append(clazz.getName()).append(". But actually it was of the type ").append(paramObject.getClass().getName()).append(".").toString());
    } 
    return encode((String)paramObject);
  }
  
  public String encode(String paramString) {
    return colognePhonetic(paramString);
  }
  
  public boolean isEncodeEqual(String paramString1, String paramString2) {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */