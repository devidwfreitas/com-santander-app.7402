package org.apache.commons.codec.binary;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

public class Hex implements BinaryDecoder, BinaryEncoder {
  public static final String DEFAULT_CHARSET_NAME = "UTF-8";
  
  private static final char[] DIGITS_LOWER = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'a', 'b', 'c', 'd', 'e', 'f' };
  
  private static final char[] DIGITS_UPPER = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'A', 'B', 'C', 'D', 'E', 'F' };
  
  private final String charsetName = "UTF-8";
  
  public Hex() {}
  
  public Hex(String paramString) {}
  
  public static byte[] decodeHex(char[] paramArrayOfchar) {
    int j = 0;
    int k = paramArrayOfchar.length;
    if ((k & 0x1) != 0)
      throw new DecoderException("Odd number of characters."); 
    byte[] arrayOfByte = new byte[k >> 1];
    for (int i = 0; j < k; i++) {
      int m = toDigit(paramArrayOfchar[j], j);
      int n = toDigit(paramArrayOfchar[++j], j);
      j++;
      arrayOfByte[i] = (byte)((m << 4 | n) & 0xFF);
    } 
    return arrayOfByte;
  }
  
  public static char[] encodeHex(byte[] paramArrayOfbyte) {
    return encodeHex(paramArrayOfbyte, true);
  }
  
  public static char[] encodeHex(byte[] paramArrayOfbyte, boolean paramBoolean) {
    if (paramBoolean) {
      char[] arrayOfChar1 = DIGITS_LOWER;
      return encodeHex(paramArrayOfbyte, arrayOfChar1);
    } 
    char[] arrayOfChar = DIGITS_UPPER;
    return encodeHex(paramArrayOfbyte, arrayOfChar);
  }
  
  protected static char[] encodeHex(byte[] paramArrayOfbyte, char[] paramArrayOfchar) {
    int j = 0;
    int k = paramArrayOfbyte.length;
    char[] arrayOfChar = new char[k << 1];
    for (int i = 0; i < k; i++) {
      int m = j + 1;
      arrayOfChar[j] = paramArrayOfchar[(paramArrayOfbyte[i] & 0xF0) >>> 4];
      j = m + 1;
      arrayOfChar[m] = paramArrayOfchar[paramArrayOfbyte[i] & 0xF];
    } 
    return arrayOfChar;
  }
  
  public static String encodeHexString(byte[] paramArrayOfbyte) {
    return new String(encodeHex(paramArrayOfbyte));
  }
  
  protected static int toDigit(char paramChar, int paramInt) {
    int i = Character.digit(paramChar, 16);
    if (i == -1)
      throw new DecoderException("Illegal hexadecimal character " + paramChar + " at index " + paramInt); 
    return i;
  }
  
  public Object decode(Object paramObject) {
    try {
      if (paramObject instanceof String) {
        paramObject = ((String)paramObject).toCharArray();
        return decodeHex((char[])paramObject);
      } 
      paramObject = paramObject;
      return decodeHex((char[])paramObject);
    } catch (ClassCastException classCastException) {
      throw new DecoderException(classCastException.getMessage(), classCastException);
    } 
  }
  
  public byte[] decode(byte[] paramArrayOfbyte) {
    try {
      return decodeHex((new String(paramArrayOfbyte, getCharsetName())).toCharArray());
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new DecoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  public Object encode(Object paramObject) {
    try {
      if (paramObject instanceof String) {
        paramObject = ((String)paramObject).getBytes(getCharsetName());
        return encodeHex((byte[])paramObject);
      } 
      paramObject = paramObject;
      return encodeHex((byte[])paramObject);
    } catch (ClassCastException classCastException) {
      throw new EncoderException(classCastException.getMessage(), classCastException);
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new EncoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  public byte[] encode(byte[] paramArrayOfbyte) {
    return StringUtils.getBytesUnchecked(encodeHexString(paramArrayOfbyte), getCharsetName());
  }
  
  public String getCharsetName() {
    return this.charsetName;
  }
  
  public String toString() {
    return super.toString() + "[charsetName=" + this.charsetName + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\Hex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */