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

public class URLCodec implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder {
  protected static final byte ESCAPE_CHAR = 37;
  
  static final int RADIX = 16;
  
  protected static final BitSet WWW_FORM_URL = new BitSet(256);
  
  protected String charset;
  
  static {
    int i;
    for (i = 97; i <= 122; i++)
      WWW_FORM_URL.set(i); 
    for (i = 65; i <= 90; i++)
      WWW_FORM_URL.set(i); 
    for (i = 48; i <= 57; i++)
      WWW_FORM_URL.set(i); 
    WWW_FORM_URL.set(45);
    WWW_FORM_URL.set(95);
    WWW_FORM_URL.set(46);
    WWW_FORM_URL.set(42);
    WWW_FORM_URL.set(32);
  }
  
  public URLCodec() {
    this("UTF-8");
  }
  
  public URLCodec(String paramString) {
    this.charset = paramString;
  }
  
  public static final byte[] decodeUrl(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return null; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (int i = 0;; i++) {
      if (i < paramArrayOfbyte.length) {
        byte b = paramArrayOfbyte[i];
        if (b == 43) {
          byteArrayOutputStream.write(32);
        } else {
          int j;
          if (b == 37) {
            i++;
            try {
              j = Utils.digit16(paramArrayOfbyte[i]);
              byteArrayOutputStream.write((char)((j << 4) + Utils.digit16(paramArrayOfbyte[++i])));
              i++;
            } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
              throw new DecoderException("Invalid URL encoding: ", arrayIndexOutOfBoundsException);
            } 
            continue;
          } 
          byteArrayOutputStream.write(j);
        } 
      } else {
        break;
      } 
    } 
    return byteArrayOutputStream.toByteArray();
  }
  
  public static final byte[] encodeUrl(BitSet paramBitSet, byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return null; 
    BitSet bitSet = paramBitSet;
    if (paramBitSet == null)
      bitSet = WWW_FORM_URL; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (int i = 0; i < paramArrayOfbyte.length; i++) {
      byte b = paramArrayOfbyte[i];
      int j = b;
      if (b < 0)
        j = b + 256; 
      if (bitSet.get(j)) {
        int k = j;
        if (j == 32)
          k = 43; 
        byteArrayOutputStream.write(k);
      } else {
        byteArrayOutputStream.write(37);
        char c = Character.toUpperCase(Character.forDigit(j >> 4 & 0xF, 16));
        j = Character.toUpperCase(Character.forDigit(j & 0xF, 16));
        byteArrayOutputStream.write(c);
        byteArrayOutputStream.write(j);
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
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL decoded");
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
    return decodeUrl(paramArrayOfbyte);
  }
  
  public Object encode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof byte[])
      return encode((byte[])paramObject); 
    if (paramObject instanceof String)
      return encode((String)paramObject); 
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL encoded");
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
    return encodeUrl(WWW_FORM_URL, paramArrayOfbyte);
  }
  
  public String getDefaultCharset() {
    return this.charset;
  }
  
  public String getEncoding() {
    return this.charset;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\net\URLCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */