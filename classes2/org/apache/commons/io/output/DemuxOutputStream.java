package org.apache.commons.io.output;

import java.io.OutputStream;

public class DemuxOutputStream extends OutputStream {
  private final InheritableThreadLocal<OutputStream> m_streams = new InheritableThreadLocal<OutputStream>();
  
  public OutputStream bindStream(OutputStream paramOutputStream) {
    OutputStream outputStream = this.m_streams.get();
    this.m_streams.set(paramOutputStream);
    return outputStream;
  }
  
  public void close() {
    OutputStream outputStream = this.m_streams.get();
    if (outputStream != null)
      outputStream.close(); 
  }
  
  public void flush() {
    OutputStream outputStream = this.m_streams.get();
    if (outputStream != null)
      outputStream.flush(); 
  }
  
  public void write(int paramInt) {
    OutputStream outputStream = this.m_streams.get();
    if (outputStream != null)
      outputStream.write(paramInt); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\DemuxOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */