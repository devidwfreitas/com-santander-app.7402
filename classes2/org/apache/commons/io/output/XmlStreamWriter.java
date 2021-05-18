package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.input.XmlStreamReader;

public class XmlStreamWriter extends Writer {
  private static final int BUFFER_SIZE = 4096;
  
  static final Pattern ENCODING_PATTERN = XmlStreamReader.ENCODING_PATTERN;
  
  private final String defaultEncoding;
  
  private String encoding;
  
  private final OutputStream out;
  
  private Writer writer;
  
  private StringWriter xmlPrologWriter = new StringWriter(4096);
  
  public XmlStreamWriter(File paramFile) {
    this(paramFile, (String)null);
  }
  
  public XmlStreamWriter(File paramFile, String paramString) {
    this(new FileOutputStream(paramFile), paramString);
  }
  
  public XmlStreamWriter(OutputStream paramOutputStream) {
    this(paramOutputStream, (String)null);
  }
  
  public XmlStreamWriter(OutputStream paramOutputStream, String paramString) {
    this.out = paramOutputStream;
    if (paramString == null)
      paramString = "UTF-8"; 
    this.defaultEncoding = paramString;
  }
  
  private void detectEncoding(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    int i;
    StringBuffer stringBuffer = this.xmlPrologWriter.getBuffer();
    if (stringBuffer.length() + paramInt2 > 4096) {
      i = 4096 - stringBuffer.length();
    } else {
      i = paramInt2;
    } 
    this.xmlPrologWriter.write(paramArrayOfchar, paramInt1, i);
    if (stringBuffer.length() >= 5) {
      if (stringBuffer.substring(0, 5).equals("<?xml")) {
        int j = stringBuffer.indexOf("?>");
        if (j > 0) {
          Matcher matcher = ENCODING_PATTERN.matcher(stringBuffer.substring(0, j));
          if (matcher.find()) {
            this.encoding = matcher.group(1).toUpperCase();
            this.encoding = this.encoding.substring(1, this.encoding.length() - 1);
          } else {
            this.encoding = this.defaultEncoding;
          } 
        } else if (stringBuffer.length() >= 4096) {
          this.encoding = this.defaultEncoding;
        } 
      } else {
        this.encoding = this.defaultEncoding;
      } 
      if (this.encoding != null) {
        this.xmlPrologWriter = null;
        this.writer = new OutputStreamWriter(this.out, this.encoding);
        this.writer.write(stringBuffer.toString());
        if (paramInt2 > i)
          this.writer.write(paramArrayOfchar, paramInt1 + i, paramInt2 - i); 
      } 
    } 
  }
  
  public void close() {
    if (this.writer == null) {
      this.encoding = this.defaultEncoding;
      this.writer = new OutputStreamWriter(this.out, this.encoding);
      this.writer.write(this.xmlPrologWriter.toString());
    } 
    this.writer.close();
  }
  
  public void flush() {
    if (this.writer != null)
      this.writer.flush(); 
  }
  
  public String getDefaultEncoding() {
    return this.defaultEncoding;
  }
  
  public String getEncoding() {
    return this.encoding;
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (this.xmlPrologWriter != null) {
      detectEncoding(paramArrayOfchar, paramInt1, paramInt2);
      return;
    } 
    this.writer.write(paramArrayOfchar, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\XmlStreamWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */