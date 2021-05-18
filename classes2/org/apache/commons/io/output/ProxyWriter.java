package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

public class ProxyWriter extends FilterWriter {
  public ProxyWriter(Writer paramWriter) {
    super(paramWriter);
  }
  
  protected void afterWrite(int paramInt) {}
  
  public Writer append(char paramChar) {
    try {
      beforeWrite(1);
      this.out.append(paramChar);
      afterWrite(1);
      return this;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return this;
    } 
  }
  
  public Writer append(CharSequence paramCharSequence) {
    int i = 0;
    if (paramCharSequence != null)
      try {
        i = paramCharSequence.length();
        beforeWrite(i);
        this.out.append(paramCharSequence);
        afterWrite(i);
        return this;
      } catch (IOException iOException) {
        handleIOException(iOException);
        return this;
      }  
    beforeWrite(i);
    this.out.append((CharSequence)iOException);
    afterWrite(i);
    return this;
  }
  
  public Writer append(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    try {
      beforeWrite(paramInt2 - paramInt1);
      this.out.append(paramCharSequence, paramInt1, paramInt2);
      afterWrite(paramInt2 - paramInt1);
      return this;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return this;
    } 
  }
  
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
  
  public void write(String paramString) {
    int i = 0;
    if (paramString != null)
      try {
        i = paramString.length();
        beforeWrite(i);
        this.out.write(paramString);
        afterWrite(i);
        return;
      } catch (IOException iOException) {
        handleIOException(iOException);
        return;
      }  
    beforeWrite(i);
    this.out.write((String)iOException);
    afterWrite(i);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2) {
    try {
      beforeWrite(paramInt2);
      this.out.write(paramString, paramInt1, paramInt2);
      afterWrite(paramInt2);
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
  
  public void write(char[] paramArrayOfchar) {
    int i = 0;
    if (paramArrayOfchar != null)
      try {
        i = paramArrayOfchar.length;
        beforeWrite(i);
        this.out.write(paramArrayOfchar);
        afterWrite(i);
        return;
      } catch (IOException iOException) {
        handleIOException(iOException);
        return;
      }  
    beforeWrite(i);
    this.out.write((char[])iOException);
    afterWrite(i);
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    try {
      beforeWrite(paramInt2);
      this.out.write(paramArrayOfchar, paramInt1, paramInt2);
      afterWrite(paramInt2);
      return;
    } catch (IOException iOException) {
      handleIOException(iOException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\ProxyWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */