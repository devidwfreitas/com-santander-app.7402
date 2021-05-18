package org.apache.commons.io.input;

import java.io.InputStream;

public class DemuxInputStream extends InputStream {
  private final InheritableThreadLocal<InputStream> m_streams = new InheritableThreadLocal<InputStream>();
  
  public InputStream bindStream(InputStream paramInputStream) {
    InputStream inputStream = this.m_streams.get();
    this.m_streams.set(paramInputStream);
    return inputStream;
  }
  
  public void close() {
    InputStream inputStream = this.m_streams.get();
    if (inputStream != null)
      inputStream.close(); 
  }
  
  public int read() {
    InputStream inputStream = this.m_streams.get();
    return (inputStream != null) ? inputStream.read() : -1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\DemuxInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */