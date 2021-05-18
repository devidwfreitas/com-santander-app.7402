package org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class BaseNCodecOutputStream extends FilterOutputStream {
  private final BaseNCodec baseNCodec;
  
  private final boolean doEncode;
  
  private final byte[] singleByte = new byte[1];
  
  public BaseNCodecOutputStream(OutputStream paramOutputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean) {
    super(paramOutputStream);
    this.baseNCodec = paramBaseNCodec;
    this.doEncode = paramBoolean;
  }
  
  private void flush(boolean paramBoolean) {
    int i = this.baseNCodec.available();
    if (i > 0) {
      byte[] arrayOfByte = new byte[i];
      i = this.baseNCodec.readResults(arrayOfByte, 0, i);
      if (i > 0)
        this.out.write(arrayOfByte, 0, i); 
    } 
    if (paramBoolean)
      this.out.flush(); 
  }
  
  public void close() {
    if (this.doEncode) {
      this.baseNCodec.encode(this.singleByte, 0, -1);
    } else {
      this.baseNCodec.decode(this.singleByte, 0, -1);
    } 
    flush();
    this.out.close();
  }
  
  public void flush() {
    flush(true);
  }
  
  public void write(int paramInt) {
    this.singleByte[0] = (byte)paramInt;
    write(this.singleByte, 0, 1);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (paramArrayOfbyte == null)
      throw new NullPointerException(); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IndexOutOfBoundsException(); 
    if (paramInt1 > paramArrayOfbyte.length || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      throw new IndexOutOfBoundsException(); 
    if (paramInt2 > 0) {
      if (this.doEncode) {
        this.baseNCodec.encode(paramArrayOfbyte, paramInt1, paramInt2);
      } else {
        this.baseNCodec.decode(paramArrayOfbyte, paramInt1, paramInt2);
      } 
      flush(false);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\BaseNCodecOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */