package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.Base64;

public class BCodec extends RFC1522Codec implements StringDecoder, StringEncoder {
  private final String charset;
  
  public BCodec() {
    this("UTF-8");
  }
  
  public BCodec(String paramString) {
    this.charset = paramString;
  }
  
  public Object decode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof String)
      return decode((String)paramObject); 
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using BCodec");
  }
  
  public String decode(String paramString) {
    if (paramString == null)
      return null; 
    try {
      return decodeText(paramString);
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new DecoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  protected byte[] doDecoding(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null) ? null : Base64.decodeBase64(paramArrayOfbyte);
  }
  
  protected byte[] doEncoding(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null) ? null : Base64.encodeBase64(paramArrayOfbyte);
  }
  
  public Object encode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof String)
      return encode((String)paramObject); 
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using BCodec");
  }
  
  public String encode(String paramString) {
    return (paramString == null) ? null : encode(paramString, getDefaultCharset());
  }
  
  public String encode(String paramString1, String paramString2) {
    if (paramString1 == null)
      return null; 
    try {
      return encodeText(paramString1, paramString2);
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new EncoderException(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
    } 
  }
  
  public String getDefaultCharset() {
    return this.charset;
  }
  
  protected String getEncoding() {
    return "B";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\net\BCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */