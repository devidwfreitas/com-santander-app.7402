package org.apache.commons.codec.binary;

import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

public class BinaryCodec implements BinaryDecoder, BinaryEncoder {
  private static final int[] BITS;
  
  private static final int BIT_0 = 1;
  
  private static final int BIT_1 = 2;
  
  private static final int BIT_2 = 4;
  
  private static final int BIT_3 = 8;
  
  private static final int BIT_4 = 16;
  
  private static final int BIT_5 = 32;
  
  private static final int BIT_6 = 64;
  
  private static final int BIT_7 = 128;
  
  private static final byte[] EMPTY_BYTE_ARRAY;
  
  private static final char[] EMPTY_CHAR_ARRAY = new char[0];
  
  static {
    EMPTY_BYTE_ARRAY = new byte[0];
    BITS = new int[] { 1, 2, 4, 8, 16, 32, 64, 128 };
  }
  
  public static byte[] fromAscii(byte[] paramArrayOfbyte) {
    if (isEmpty(paramArrayOfbyte))
      return EMPTY_BYTE_ARRAY; 
    byte[] arrayOfByte = new byte[paramArrayOfbyte.length >> 3];
    int i = paramArrayOfbyte.length - 1;
    int j = 0;
    while (j < arrayOfByte.length) {
      for (int k = 0; k < BITS.length; k++) {
        if (paramArrayOfbyte[i - k] == 49)
          arrayOfByte[j] = (byte)(arrayOfByte[j] | BITS[k]); 
      } 
      j++;
      i -= 8;
    } 
    return arrayOfByte;
  }
  
  public static byte[] fromAscii(char[] paramArrayOfchar) {
    if (paramArrayOfchar == null || paramArrayOfchar.length == 0)
      return EMPTY_BYTE_ARRAY; 
    byte[] arrayOfByte = new byte[paramArrayOfchar.length >> 3];
    int i = paramArrayOfchar.length - 1;
    int j = 0;
    while (j < arrayOfByte.length) {
      for (int k = 0; k < BITS.length; k++) {
        if (paramArrayOfchar[i - k] == '1')
          arrayOfByte[j] = (byte)(arrayOfByte[j] | BITS[k]); 
      } 
      j++;
      i -= 8;
    } 
    return arrayOfByte;
  }
  
  private static boolean isEmpty(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null || paramArrayOfbyte.length == 0);
  }
  
  public static byte[] toAsciiBytes(byte[] paramArrayOfbyte) {
    if (isEmpty(paramArrayOfbyte))
      return EMPTY_BYTE_ARRAY; 
    byte[] arrayOfByte = new byte[paramArrayOfbyte.length << 3];
    int i = arrayOfByte.length - 1;
    int j = 0;
    while (j < paramArrayOfbyte.length) {
      for (int k = 0; k < BITS.length; k++) {
        if ((paramArrayOfbyte[j] & BITS[k]) == 0) {
          arrayOfByte[i - k] = 48;
        } else {
          arrayOfByte[i - k] = 49;
        } 
      } 
      j++;
      i -= 8;
    } 
    return arrayOfByte;
  }
  
  public static char[] toAsciiChars(byte[] paramArrayOfbyte) {
    if (isEmpty(paramArrayOfbyte))
      return EMPTY_CHAR_ARRAY; 
    char[] arrayOfChar = new char[paramArrayOfbyte.length << 3];
    int i = arrayOfChar.length - 1;
    int j = 0;
    while (j < paramArrayOfbyte.length) {
      for (int k = 0; k < BITS.length; k++) {
        if ((paramArrayOfbyte[j] & BITS[k]) == 0) {
          arrayOfChar[i - k] = '0';
        } else {
          arrayOfChar[i - k] = '1';
        } 
      } 
      j++;
      i -= 8;
    } 
    return arrayOfChar;
  }
  
  public static String toAsciiString(byte[] paramArrayOfbyte) {
    return new String(toAsciiChars(paramArrayOfbyte));
  }
  
  public Object decode(Object paramObject) {
    if (paramObject == null)
      return EMPTY_BYTE_ARRAY; 
    if (paramObject instanceof byte[])
      return fromAscii((byte[])paramObject); 
    if (paramObject instanceof char[])
      return fromAscii((char[])paramObject); 
    if (paramObject instanceof String)
      return fromAscii(((String)paramObject).toCharArray()); 
    throw new DecoderException("argument not a byte array");
  }
  
  public byte[] decode(byte[] paramArrayOfbyte) {
    return fromAscii(paramArrayOfbyte);
  }
  
  public Object encode(Object paramObject) {
    if (!(paramObject instanceof byte[]))
      throw new EncoderException("argument not a byte array"); 
    return toAsciiChars((byte[])paramObject);
  }
  
  public byte[] encode(byte[] paramArrayOfbyte) {
    return toAsciiBytes(paramArrayOfbyte);
  }
  
  public byte[] toByteArray(String paramString) {
    return (paramString == null) ? EMPTY_BYTE_ARRAY : fromAscii(paramString.toCharArray());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\BinaryCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */