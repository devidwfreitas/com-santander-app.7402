package org.apache.commons.io;

import java.io.Serializable;

public class ByteOrderMark implements Serializable {
  public static final ByteOrderMark UTF_16BE;
  
  public static final ByteOrderMark UTF_16LE;
  
  public static final ByteOrderMark UTF_32BE;
  
  public static final ByteOrderMark UTF_32LE;
  
  public static final ByteOrderMark UTF_8 = new ByteOrderMark("UTF-8", new int[] { 239, 187, 191 });
  
  private static final long serialVersionUID = 1L;
  
  private final int[] bytes;
  
  private final String charsetName;
  
  static {
    UTF_16BE = new ByteOrderMark("UTF-16BE", new int[] { 254, 255 });
    UTF_16LE = new ByteOrderMark("UTF-16LE", new int[] { 255, 254 });
    UTF_32BE = new ByteOrderMark("UTF-32BE", new int[] { 0, 0, 254, 255 });
    UTF_32LE = new ByteOrderMark("UTF-32LE", new int[] { 255, 254, 0, 0 });
  }
  
  public ByteOrderMark(String paramString, int... paramVarArgs) {
    if (paramString == null || paramString.length() == 0)
      throw new IllegalArgumentException("No charsetName specified"); 
    if (paramVarArgs == null || paramVarArgs.length == 0)
      throw new IllegalArgumentException("No bytes specified"); 
    this.charsetName = paramString;
    this.bytes = new int[paramVarArgs.length];
    System.arraycopy(paramVarArgs, 0, this.bytes, 0, paramVarArgs.length);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof ByteOrderMark) {
      paramObject = paramObject;
      if (this.bytes.length == paramObject.length()) {
        int i = 0;
        while (i < this.bytes.length) {
          if (this.bytes[i] == paramObject.get(i)) {
            i++;
            continue;
          } 
          return false;
        } 
        return true;
      } 
    } 
    return false;
  }
  
  public int get(int paramInt) {
    return this.bytes[paramInt];
  }
  
  public byte[] getBytes() {
    byte[] arrayOfByte = new byte[this.bytes.length];
    for (int i = 0; i < this.bytes.length; i++)
      arrayOfByte[i] = (byte)this.bytes[i]; 
    return arrayOfByte;
  }
  
  public String getCharsetName() {
    return this.charsetName;
  }
  
  public int hashCode() {
    i = getClass().hashCode();
    for (int i : this.bytes);
    return i;
  }
  
  public int length() {
    return this.bytes.length;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(getClass().getSimpleName());
    stringBuilder.append('[');
    stringBuilder.append(this.charsetName);
    stringBuilder.append(": ");
    for (int i = 0; i < this.bytes.length; i++) {
      if (i > 0)
        stringBuilder.append(","); 
      stringBuilder.append("0x");
      stringBuilder.append(Integer.toHexString(this.bytes[i] & 0xFF).toUpperCase());
    } 
    stringBuilder.append(']');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\ByteOrderMark.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */