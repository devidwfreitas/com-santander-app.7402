package org.simpleframework.xml.stream;

import java.io.BufferedWriter;
import java.io.Writer;

class Formatter {
  private static final char[] AND;
  
  private static final char[] CLOSE;
  
  private static final char[] DOUBLE;
  
  private static final char[] GREATER;
  
  private static final char[] LESS;
  
  private static final char[] NAMESPACE = new char[] { 'x', 'm', 'l', 'n', 's' };
  
  private static final char[] OPEN;
  
  private static final char[] SINGLE;
  
  private OutputBuffer buffer;
  
  private Indenter indenter;
  
  private Formatter$Tag last;
  
  private String prolog;
  
  private Writer result;
  
  static {
    LESS = new char[] { '&', 'l', 't', ';' };
    GREATER = new char[] { '&', 'g', 't', ';' };
    DOUBLE = new char[] { '&', 'q', 'u', 'o', 't', ';' };
    SINGLE = new char[] { '&', 'a', 'p', 'o', 's', ';' };
    AND = new char[] { '&', 'a', 'm', 'p', ';' };
    OPEN = new char[] { '<', '!', '-', '-', ' ' };
    CLOSE = new char[] { ' ', '-', '-', '>' };
  }
  
  public Formatter(Writer paramWriter, Format paramFormat) {
    this.result = new BufferedWriter(paramWriter, 1024);
    this.indenter = new Indenter(paramFormat);
    this.buffer = new OutputBuffer();
    this.prolog = paramFormat.getProlog();
  }
  
  private void append(char paramChar) {
    this.buffer.append(paramChar);
  }
  
  private void append(String paramString) {
    this.buffer.append(paramString);
  }
  
  private void append(char[] paramArrayOfchar) {
    this.buffer.append(paramArrayOfchar);
  }
  
  private void data(String paramString) {
    write("<![CDATA[");
    write(paramString);
    write("]]>");
  }
  
  private void escape(char paramChar) {
    char[] arrayOfChar = symbol(paramChar);
    if (arrayOfChar != null) {
      write(arrayOfChar);
      return;
    } 
    write(paramChar);
  }
  
  private void escape(String paramString) {
    int j = paramString.length();
    for (int i = 0; i < j; i++)
      escape(paramString.charAt(i)); 
  }
  
  private boolean isEmpty(String paramString) {
    return (paramString == null || paramString.length() == 0);
  }
  
  private boolean isText(char paramChar) {
    switch (paramChar) {
      default:
        if (paramChar > ' ' && paramChar <= '~') {
          if (paramChar != '÷')
            break; 
          return false;
        } 
        return false;
      case '\t':
      case '\n':
      case '\r':
      case ' ':
        break;
    } 
    return true;
  }
  
  private char[] symbol(char paramChar) {
    switch (paramChar) {
      default:
        return null;
      case '<':
        return LESS;
      case '>':
        return GREATER;
      case '"':
        return DOUBLE;
      case '\'':
        return SINGLE;
      case '&':
        break;
    } 
    return AND;
  }
  
  private String unicode(char paramChar) {
    return Integer.toString(paramChar);
  }
  
  private void write(char paramChar) {
    this.buffer.write(this.result);
    this.buffer.clear();
    this.result.write(paramChar);
  }
  
  private void write(String paramString) {
    this.buffer.write(this.result);
    this.buffer.clear();
    this.result.write(paramString);
  }
  
  private void write(String paramString1, String paramString2) {
    this.buffer.write(this.result);
    this.buffer.clear();
    if (!isEmpty(paramString2)) {
      this.result.write(paramString2);
      this.result.write(58);
    } 
    this.result.write(paramString1);
  }
  
  private void write(char[] paramArrayOfchar) {
    this.buffer.write(this.result);
    this.buffer.clear();
    this.result.write(paramArrayOfchar);
  }
  
  public void flush() {
    this.buffer.write(this.result);
    this.buffer.clear();
    this.result.flush();
  }
  
  public void writeAttribute(String paramString1, String paramString2, String paramString3) {
    if (this.last != Formatter$Tag.START)
      throw new NodeException("Start element required"); 
    write(' ');
    write(paramString1, paramString3);
    write('=');
    write('"');
    escape(paramString2);
    write('"');
  }
  
  public void writeComment(String paramString) {
    String str = this.indenter.top();
    if (this.last == Formatter$Tag.START)
      append('>'); 
    if (str != null) {
      append(str);
      append(OPEN);
      append(paramString);
      append(CLOSE);
    } 
    this.last = Formatter$Tag.COMMENT;
  }
  
  public void writeEnd(String paramString1, String paramString2) {
    String str = this.indenter.pop();
    if (this.last == Formatter$Tag.START) {
      write('/');
      write('>');
    } else {
      if (this.last != Formatter$Tag.TEXT)
        write(str); 
      if (this.last != Formatter$Tag.START) {
        write('<');
        write('/');
        write(paramString1, paramString2);
        write('>');
      } 
    } 
    this.last = Formatter$Tag.END;
  }
  
  public void writeNamespace(String paramString1, String paramString2) {
    if (this.last != Formatter$Tag.START)
      throw new NodeException("Start element required"); 
    write(' ');
    write(NAMESPACE);
    if (!isEmpty(paramString2)) {
      write(':');
      write(paramString2);
    } 
    write('=');
    write('"');
    escape(paramString1);
    write('"');
  }
  
  public void writeProlog() {
    if (this.prolog != null) {
      write(this.prolog);
      write("\n");
    } 
  }
  
  public void writeStart(String paramString1, String paramString2) {
    String str = this.indenter.push();
    if (this.last == Formatter$Tag.START)
      append('>'); 
    flush();
    append(str);
    append('<');
    if (!isEmpty(paramString2)) {
      append(paramString2);
      append(':');
    } 
    append(paramString1);
    this.last = Formatter$Tag.START;
  }
  
  public void writeText(String paramString) {
    writeText(paramString, Mode.ESCAPE);
  }
  
  public void writeText(String paramString, Mode paramMode) {
    if (this.last == Formatter$Tag.START)
      write('>'); 
    if (paramMode == Mode.DATA) {
      data(paramString);
    } else {
      escape(paramString);
    } 
    this.last = Formatter$Tag.TEXT;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Formatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */