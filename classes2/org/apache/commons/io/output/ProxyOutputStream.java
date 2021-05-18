package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class ProxyOutputStream extends FilterOutputStream {
  public ProxyOutputStream(OutputStream paramOutputStream) {
    super(paramOutputStream);
  }
  
  protected void afterWrite(int paramInt) {}
  
  protected void beforeWrite(int paramInt) {}
  
  public void close() {
    try {
      this.out.close();
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
  
  public void flush() {
    try {
      this.out.flush();
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
  
  protected void handleIOException(IOException paramIOException) {
    throw paramIOException;
  }
  
  public void write(int paramInt) {
    try {
      beforeWrite(1);
      this.out.write(paramInt);
      afterWrite(1);
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
  
  public void write(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte != null)
      try {
        int i = paramArrayOfbyte.length;
        beforeWrite(i);
        this.out.write(paramArrayOfbyte);
        afterWrite(i);
        return;
      } catch (IOException iOException) {
        handleIOException(iOException);
        return;
      }  
    boolean bool = false;
    beforeWrite(bool);
    this.out.write((byte[])iOException);
    afterWrite(bool);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    try {
      beforeWrite(paramInt2);
      this.out.write(paramArrayOfbyte, paramInt1, paramInt2);
      afterWrite(paramInt2);
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\ProxyOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */