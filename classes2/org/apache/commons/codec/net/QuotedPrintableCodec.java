package org.apache.commons.codec.net;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.StringUtils;

public class QuotedPrintableCodec implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder {
  private static final byte ESCAPE_CHAR = 61;
  
  private static final BitSet PRINTABLE_CHARS = new BitSet(256);
  
  private static final byte SPACE = 32;
  
  private static final byte TAB = 9;
  
  private final String charset;
  
  static {
    int i;
    for (i = 33; i <= 60; i++)
      PRINTABLE_CHARS.set(i); 
    for (i = 62; i <= 126; i++)
      PRINTABLE_CHARS.set(i); 
    PRINTABLE_CHARS.set(9);
    PRINTABLE_CHARS.set(32);
  }
  
  public QuotedPrintableCodec() {
    this("UTF-8");
  }
  
  public QuotedPrintableCodec(String paramString) {
    this.charset = paramString;
  }
  
  public static final byte[] decodeQuotedPrintable(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return null; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (int i = 0;; i++) {
      if (i < paramArrayOfbyte.length) {
        int j = paramArrayOfbyte[i];
        if (j == 61) {
          i++;
          try {
            j = Utils.digit16(paramArrayOfbyte[i]);
            byteArrayOutputStream.write((char)((j << 4) + Utils.digit16(paramArrayOfbyte[++i])));
            i++;
          } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new DecoderException("Invalid quoted-printable encoding", arrayIndexOutOfBoundsException);
          } 
          continue;
        } 
        byteArrayOutputStream.write(j);
      } else {
        break;
      } 
    } 
    return byteArrayOutputStream.toByteArray();
  }
  
  private static final void encodeQuotedPrintable(int paramInt, ByteArrayOutputStream paramByteArrayOutputStream) {
    paramByteArrayOutputStream.write(61);
    char c = Character.toUpperCase(Character.forDigit(paramInt >> 4 & 0xF, 16));
    paramInt = Character.toUpperCase(Character.forDigit(paramInt & 0xF, 16));
    paramByteArrayOutputStream.write(c);
    paramByteArrayOutputStream.write(paramInt);
  }
  
  public static final byte[] encodeQuotedPrintable(BitSet paramBitSet, byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return null; 
    BitSet bitSet = paramBitSet;
    if (paramBitSet == null)
      bitSet = PRINTABLE_CHARS; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (int i = 0; i < paramArrayOfbyte.length; i++) {
      byte b = paramArrayOfbyte[i];
      int j = b;
      if (b < 0)
        j = b + 256; 
      if (bitSet.get(j)) {
        byteArrayOutputStream.write(j);
      } else {
        encodeQuotedPrintable(j, byteArrayOutputStream);
      } 
    } 
    return byteArrayOutputStream.toByteArray();
  }
  
  public Object decode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof byte[])
      return decode((byte[])paramObject); 
    if (paramObject instanceof String)
      return decode((String)paramObject); 
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable decoded");
  }
  
  public String decode(String paramString) {
    if (paramString == null)
      return null; 
    try {
      return decode(paramString, getDefaultCharset());
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new DecoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  public String decode(String paramString1, String paramString2) {
    return (paramString1 == null) ? null : new String(decode(StringUtils.getBytesUsAscii(paramString1)), paramString2);
  }
  
  public byte[] decode(byte[] paramArrayOfbyte) {
    return decodeQuotedPrintable(paramArrayOfbyte);
  }
  
  public Object encode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof byte[])
      return encode((byte[])paramObject); 
    if (paramObject instanceof String)
      return encode((String)paramObject); 
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable encoded");
  }
  
  public String encode(String paramString) {
    if (paramString == null)
      return null; 
    try {
      return encode(paramString, getDefaultCharset());
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new EncoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  public String encode(String paramString1, String paramString2) {
    return (paramString1 == null) ? null : StringUtils.newStringUsAscii(encode(paramString1.getBytes(paramString2)));
  }
  
  public byte[] encode(byte[] paramArrayOfbyte) {
    return encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfbyte);
  }
  
  public String getDefaultCharset() {
    return this.charset;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\net\QuotedPrintableCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */