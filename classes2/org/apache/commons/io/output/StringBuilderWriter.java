package org.apache.commons.io.output;

import java.io.Serializable;
import java.io.Writer;

public class StringBuilderWriter extends Writer implements Serializable {
  private final StringBuilder builder;
  
  public StringBuilderWriter() {
    this.builder = new StringBuilder();
  }
  
  public StringBuilderWriter(int paramInt) {
    this.builder = new StringBuilder(paramInt);
  }
  
  public StringBuilderWriter(StringBuilder paramStringBuilder) {
    if (paramStringBuilder == null)
      paramStringBuilder = new StringBuilder(); 
    this.builder = paramStringBuilder;
  }
  
  public Writer append(char paramChar) {
    this.builder.append(paramChar);
    return this;
  }
  
  public Writer append(CharSequence paramCharSequence) {
    this.builder.append(paramCharSequence);
    return this;
  }
  
  public Writer append(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    this.builder.append(paramCharSequence, paramInt1, paramInt2);
    return this;
  }
  
  public void close() {}
  
  public void flush() {}
  
  public StringBuilder getBuilder() {
    return this.builder;
  }
  
  public String toString() {
    return this.builder.toString();
  }
  
  public void write(String paramString) {
    if (paramString != null)
      this.builder.append(paramString); 
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (paramArrayOfchar != null)
      this.builder.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\StringBuilderWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */