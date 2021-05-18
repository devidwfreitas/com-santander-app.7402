package org.apache.commons.codec.binary;

import java.io.OutputStream;

public class Base32OutputStream extends BaseNCodecOutputStream {
  public Base32OutputStream(OutputStream paramOutputStream) {
    this(paramOutputStream, true);
  }
  
  public Base32OutputStream(OutputStream paramOutputStream, boolean paramBoolean) {
    super(paramOutputStream, new Base32(false), paramBoolean);
  }
  
  public Base32OutputStream(OutputStream paramOutputStream, boolean paramBoolean, int paramInt, byte[] paramArrayOfbyte) {
    super(paramOutputStream, new Base32(paramInt, paramArrayOfbyte), paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\Base32OutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */