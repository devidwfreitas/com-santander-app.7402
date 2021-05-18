package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

public class QCodec extends RFC1522Codec implements StringDecoder, StringEncoder {
  private static final byte BLANK = 32;
  
  private static final BitSet PRINTABLE_CHARS = new BitSet(256);
  
  private static final byte UNDERSCORE = 95;
  
  private final String charset;
  
  private boolean encodeBlanks = false;
  
  static {
    PRINTABLE_CHARS.set(32);
    PRINTABLE_CHARS.set(33);
    PRINTABLE_CHARS.set(34);
    PRINTABLE_CHARS.set(35);
    PRINTABLE_CHARS.set(36);
    PRINTABLE_CHARS.set(37);
    PRINTABLE_CHARS.set(38);
    PRINTABLE_CHARS.set(39);
    PRINTABLE_CHARS.set(40);
    PRINTABLE_CHARS.set(41);
    PRINTABLE_CHARS.set(42);
    PRINTABLE_CHARS.set(43);
    PRINTABLE_CHARS.set(44);
    PRINTABLE_CHARS.set(45);
    PRINTABLE_CHARS.set(46);
    PRINTABLE_CHARS.set(47);
    int i;
    for (i = 48; i <= 57; i++)
      PRINTABLE_CHARS.set(i); 
    PRINTABLE_CHARS.set(58);
    PRINTABLE_CHARS.set(59);
    PRINTABLE_CHARS.set(60);
    PRINTABLE_CHARS.set(62);
    PRINTABLE_CHARS.set(64);
    for (i = 65; i <= 90; i++)
      PRINTABLE_CHARS.set(i); 
    PRINTABLE_CHARS.set(91);
    PRINTABLE_CHARS.set(92);
    PRINTABLE_CHARS.set(93);
    PRINTABLE_CHARS.set(94);
    PRINTABLE_CHARS.set(96);
    for (i = 97; i <= 122; i++)
      PRINTABLE_CHARS.set(i); 
    PRINTABLE_CHARS.set(123);
    PRINTABLE_CHARS.set(124);
    PRINTABLE_CHARS.set(125);
    PRINTABLE_CHARS.set(126);
  }
  
  public QCodec() {
    this("UTF-8");
  }
  
  public QCodec(String paramString) {
    this.charset = paramString;
  }
  
  public Object decode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof String)
      return decode((String)paramObject); 
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using Q codec");
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
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_1
    //   4: ifnonnull -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: iconst_0
    //   10: istore_3
    //   11: iload_3
    //   12: aload_1
    //   13: arraylength
    //   14: if_icmpge -> 95
    //   17: aload_1
    //   18: iload_3
    //   19: baload
    //   20: bipush #95
    //   22: if_icmpne -> 68
    //   25: iconst_1
    //   26: istore_3
    //   27: iload_3
    //   28: ifeq -> 90
    //   31: aload_1
    //   32: arraylength
    //   33: newarray byte
    //   35: astore #5
    //   37: iload #4
    //   39: istore_3
    //   40: iload_3
    //   41: aload_1
    //   42: arraylength
    //   43: if_icmpge -> 84
    //   46: aload_1
    //   47: iload_3
    //   48: baload
    //   49: istore_2
    //   50: iload_2
    //   51: bipush #95
    //   53: if_icmpeq -> 75
    //   56: aload #5
    //   58: iload_3
    //   59: iload_2
    //   60: bastore
    //   61: iload_3
    //   62: iconst_1
    //   63: iadd
    //   64: istore_3
    //   65: goto -> 40
    //   68: iload_3
    //   69: iconst_1
    //   70: iadd
    //   71: istore_3
    //   72: goto -> 11
    //   75: aload #5
    //   77: iload_3
    //   78: bipush #32
    //   80: bastore
    //   81: goto -> 61
    //   84: aload #5
    //   86: invokestatic decodeQuotedPrintable : ([B)[B
    //   89: areturn
    //   90: aload_1
    //   91: invokestatic decodeQuotedPrintable : ([B)[B
    //   94: areturn
    //   95: iconst_0
    //   96: istore_3
    //   97: goto -> 27
  }
  
  protected byte[] doEncoding(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return null; 
    paramArrayOfbyte = QuotedPrintableCodec.encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfbyte);
    if (this.encodeBlanks)
      for (int i = 0; i < paramArrayOfbyte.length; i++) {
        if (paramArrayOfbyte[i] == 32)
          paramArrayOfbyte[i] = 95; 
      }  
    return paramArrayOfbyte;
  }
  
  public Object encode(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof String)
      return encode((String)paramObject); 
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using Q codec");
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
    return "Q";
  }
  
  public boolean isEncodeBlanks() {
    return this.encodeBlanks;
  }
  
  public void setEncodeBlanks(boolean paramBoolean) {
    this.encodeBlanks = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\net\QCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */