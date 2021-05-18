package org.apache.commons.codec.language;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class Soundex implements StringEncoder {
  public static final Soundex US_ENGLISH;
  
  private static final char[] US_ENGLISH_MAPPING = "01230120022455012623010202".toCharArray();
  
  public static final String US_ENGLISH_MAPPING_STRING = "01230120022455012623010202";
  
  private int maxLength = 4;
  
  private final char[] soundexMapping = US_ENGLISH_MAPPING;
  
  static {
    US_ENGLISH = new Soundex();
  }
  
  public Soundex() {}
  
  public Soundex(String paramString) {}
  
  public Soundex(char[] paramArrayOfchar) {
    System.arraycopy(paramArrayOfchar, 0, this.soundexMapping, 0, paramArrayOfchar.length);
  }
  
  private char getMappingCode(String paramString, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: invokevirtual charAt : (I)C
    //   6: invokespecial map : (C)C
    //   9: istore #4
    //   11: iload #4
    //   13: istore_3
    //   14: iload_2
    //   15: iconst_1
    //   16: if_icmple -> 94
    //   19: iload #4
    //   21: istore_3
    //   22: iload #4
    //   24: bipush #48
    //   26: if_icmpeq -> 94
    //   29: aload_1
    //   30: iload_2
    //   31: iconst_1
    //   32: isub
    //   33: invokevirtual charAt : (I)C
    //   36: istore #6
    //   38: bipush #72
    //   40: iload #6
    //   42: if_icmpeq -> 55
    //   45: iload #4
    //   47: istore_3
    //   48: bipush #87
    //   50: iload #6
    //   52: if_icmpne -> 94
    //   55: aload_1
    //   56: iload_2
    //   57: iconst_2
    //   58: isub
    //   59: invokevirtual charAt : (I)C
    //   62: istore #5
    //   64: aload_0
    //   65: iload #5
    //   67: invokespecial map : (C)C
    //   70: iload #4
    //   72: if_icmpeq -> 92
    //   75: bipush #72
    //   77: iload #5
    //   79: if_icmpeq -> 92
    //   82: iload #4
    //   84: istore_3
    //   85: bipush #87
    //   87: iload #5
    //   89: if_icmpne -> 94
    //   92: iconst_0
    //   93: istore_3
    //   94: iload_3
    //   95: ireturn
  }
  
  private char[] getSoundexMapping() {
    return this.soundexMapping;
  }
  
  private char map(char paramChar) {
    int i = paramChar - 65;
    if (i < 0 || i >= (getSoundexMapping()).length)
      throw new IllegalArgumentException("The character is not mapped: " + paramChar); 
    return getSoundexMapping()[i];
  }
  
  public int difference(String paramString1, String paramString2) {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }
  
  public Object encode(Object paramObject) {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Soundex encode is not of type java.lang.String"); 
    return soundex((String)paramObject);
  }
  
  public String encode(String paramString) {
    return soundex(paramString);
  }
  
  public int getMaxLength() {
    return this.maxLength;
  }
  
  public void setMaxLength(int paramInt) {
    this.maxLength = paramInt;
  }
  
  public String soundex(String paramString) {
    int j = 1;
    if (paramString == null)
      return null; 
    paramString = SoundexUtils.clean(paramString);
    if (paramString.length() == 0)
      return paramString; 
    char[] arrayOfChar = new char[4];
    arrayOfChar[0] = '0';
    arrayOfChar[1] = '0';
    arrayOfChar[2] = '0';
    arrayOfChar[3] = '0';
    arrayOfChar[0] = paramString.charAt(0);
    char c = getMappingCode(paramString, 0);
    for (int i = 1;; i = k) {
      int k;
      if (i < paramString.length() && j < arrayOfChar.length) {
        k = i + 1;
        char c1 = getMappingCode(paramString, i);
        if (c1 != '\000') {
          i = j;
          if (c1 != '0') {
            i = j;
            if (c1 != c) {
              arrayOfChar[j] = c1;
              i = j + 1;
            } 
          } 
          c = c1;
          j = i;
          i = k;
          continue;
        } 
      } else {
        return new String(arrayOfChar);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\Soundex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */