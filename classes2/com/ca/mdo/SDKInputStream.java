package com.ca.mdo;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class SDKInputStream extends InputStream {
  private static final int END_OF_STREAM = -1;
  
  private final HttpURLConnection connection;
  
  public final InputStream delegate;
  
  public final String encoding;
  
  public final String mimeType;
  
  private int size = 0;
  
  public SDKInputStream(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection, String paramString1, String paramString2) {
    if (paramInputStream == null)
      throw new IllegalArgumentException("Inputstream cannot be null"); 
    this.delegate = paramInputStream;
    this.connection = paramHttpURLConnection;
    this.encoding = paramString1;
    this.mimeType = paramString2;
  }
  
  private void disconnectConnection() {
    try {
      if (this.connection != null)
        this.connection.disconnect(); 
      return;
    } catch (Exception exception) {
      CALog.e("Exception while closing urlconnection" + exception, exception);
      return;
    } 
  }
  
  public int available() throws IOException {
    return this.delegate.available();
  }
  
  public void close() throws IOException {
    if (this.delegate != null)
      this.delegate.close(); 
    disconnectConnection();
  }
  
  public void mark(int paramInt) {
    this.delegate.mark(paramInt);
  }
  
  public boolean markSupported() {
    return this.delegate.markSupported();
  }
  
  public int read() throws IOException {
    int i = this.delegate.read();
    if (i == -1) {
      disconnectConnection();
      return i;
    } 
    this.size++;
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte) throws IOException {
    int i = this.delegate.read(paramArrayOfbyte);
    if (i == -1) {
      disconnectConnection();
      return i;
    } 
    this.size += i;
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) throws IOException {
    paramInt1 = this.delegate.read(paramArrayOfbyte, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      disconnectConnection();
      return paramInt1;
    } 
    this.size += paramInt1;
    return paramInt1;
  }
  
  public void reset() throws IOException {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield delegate : Ljava/io/InputStream;
    //   6: invokevirtual reset : ()V
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	finally
  }
  
  public long skip(long paramLong) throws IOException {
    return this.delegate.skip(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\SDKInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */