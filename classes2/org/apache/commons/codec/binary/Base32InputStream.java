package org.apache.commons.codec.binary;

import java.io.InputStream;

public class Base32InputStream extends BaseNCodecInputStream {
  public Base32InputStream(InputStream paramInputStream) {
    this(paramInputStream, false);
  }
  
  public Base32InputStream(InputStream paramInputStream, boolean paramBoolean) {
    super(paramInputStream, new Base32(false), paramBoolean);
  }
  
  public Base32InputStream(InputStream paramInputStream, boolean paramBoolean, int paramInt, byte[] paramArrayOfbyte) {
    super(paramInputStream, new Base32(paramInt, paramArrayOfbyte), paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\Base32InputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */