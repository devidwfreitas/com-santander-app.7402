package org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.InputStream;

public class BaseNCodecInputStream extends FilterInputStream {
  private final BaseNCodec baseNCodec;
  
  private final boolean doEncode;
  
  private final byte[] singleByte = new byte[1];
  
  protected BaseNCodecInputStream(InputStream paramInputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean) {
    super(paramInputStream);
    this.doEncode = paramBoolean;
    this.baseNCodec = paramBaseNCodec;
  }
  
  public boolean markSupported() {
    return false;
  }
  
  public int read() {
    int i;
    for (i = read(this.singleByte, 0, 1); i == 0; i = read(this.singleByte, 0, 1));
    return (i > 0) ? ((this.singleByte[0] < 0) ? (this.singleByte[0] + 256) : this.singleByte[0]) : -1;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (paramArrayOfbyte == null)
      throw new NullPointerException(); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IndexOutOfBoundsException(); 
    if (paramInt1 > paramArrayOfbyte.length || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      throw new IndexOutOfBoundsException(); 
    if (paramInt2 == 0)
      return 0; 
    int i = 0;
    while (true) {
      int j = i;
      if (!i) {
        if (!this.baseNCodec.hasData()) {
          if (this.doEncode) {
            i = 4096;
          } else {
            i = 8192;
          } 
          byte[] arrayOfByte = new byte[i];
          i = this.in.read(arrayOfByte);
          if (this.doEncode) {
            this.baseNCodec.encode(arrayOfByte, 0, i);
          } else {
            this.baseNCodec.decode(arrayOfByte, 0, i);
          } 
        } 
        i = this.baseNCodec.readResults(paramArrayOfbyte, paramInt1, paramInt2);
        continue;
      } 
      return j;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\BaseNCodecInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */