package org.simpleframework.xml.stream;

import java.io.Writer;

class OutputBuffer {
  private StringBuilder text = new StringBuilder();
  
  public void append(char paramChar) {
    this.text.append(paramChar);
  }
  
  public void append(String paramString) {
    this.text.append(paramString);
  }
  
  public void append(String paramString, int paramInt1, int paramInt2) {
    this.text.append(paramString, paramInt1, paramInt2);
  }
  
  public void append(char[] paramArrayOfchar) {
    this.text.append(paramArrayOfchar, 0, paramArrayOfchar.length);
  }
  
  public void append(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.text.append(paramArrayOfchar, paramInt1, paramInt2);
  }
  
  public void clear() {
    this.text.setLength(0);
  }
  
  public void write(Writer paramWriter) {
    paramWriter.append(this.text);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\OutputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */