package org.apache.commons.io.input;

import java.io.DataInput;
import java.io.EOFException;
import java.io.InputStream;
import org.apache.commons.io.EndianUtils;

public class SwappedDataInputStream extends ProxyInputStream implements DataInput {
  public SwappedDataInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public boolean readBoolean() {
    return (readByte() != 0);
  }
  
  public byte readByte() {
    return (byte)this.in.read();
  }
  
  public char readChar() {
    return (char)readShort();
  }
  
  public double readDouble() {
    return EndianUtils.readSwappedDouble(this.in);
  }
  
  public float readFloat() {
    return EndianUtils.readSwappedFloat(this.in);
  }
  
  public void readFully(byte[] paramArrayOfbyte) {
    readFully(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public void readFully(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i;
    for (i = paramInt2; i > 0; i -= j) {
      int j = read(paramArrayOfbyte, paramInt1 + paramInt2 - i, i);
      if (-1 == j)
        throw new EOFException(); 
    } 
  }
  
  public int readInt() {
    return EndianUtils.readSwappedInteger(this.in);
  }
  
  public String readLine() {
    throw new UnsupportedOperationException("Operation not supported: readLine()");
  }
  
  public long readLong() {
    return EndianUtils.readSwappedLong(this.in);
  }
  
  public short readShort() {
    return EndianUtils.readSwappedShort(this.in);
  }
  
  public String readUTF() {
    throw new UnsupportedOperationException("Operation not supported: readUTF()");
  }
  
  public int readUnsignedByte() {
    return this.in.read();
  }
  
  public int readUnsignedShort() {
    return EndianUtils.readSwappedUnsignedShort(this.in);
  }
  
  public int skipBytes(int paramInt) {
    return (int)this.in.skip(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\SwappedDataInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */