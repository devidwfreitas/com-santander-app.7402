package org.dom4j.dtd;

public class InternalEntityDecl implements InternalDeclaration {
  private String name;
  
  private String value;
  
  public InternalEntityDecl() {}
  
  public InternalEntityDecl(String paramString1, String paramString2) {
    this.name = paramString1;
    this.value = paramString2;
  }
  
  private String escapeEntityValue(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0;; i++) {
      if (i < paramString.length()) {
        char c = paramString.charAt(i);
        switch (c) {
          default:
            if (c < ' ') {
              stringBuffer.append("&#" + c + ";");
            } else {
              break;
            } 
            i++;
            continue;
          case '<':
            stringBuffer.append("&#38;#60;");
            i++;
            continue;
          case '>':
            stringBuffer.append("&#62;");
            i++;
            continue;
          case '&':
            stringBuffer.append("&#38;#38;");
            i++;
            continue;
          case '\'':
            stringBuffer.append("&#39;");
            i++;
            continue;
          case '"':
            stringBuffer.append("&#34;");
            i++;
            continue;
        } 
        stringBuffer.append(c);
      } else {
        break;
      } 
    } 
    return stringBuffer.toString();
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
  
  public void setValue(String paramString) {
    this.value = paramString;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer("<!ENTITY ");
    if (this.name.startsWith("%")) {
      stringBuffer.append("% ");
      stringBuffer.append(this.name.substring(1));
      stringBuffer.append(" \"");
      stringBuffer.append(escapeEntityValue(this.value));
      stringBuffer.append("\">");
      return stringBuffer.toString();
    } 
    stringBuffer.append(this.name);
    stringBuffer.append(" \"");
    stringBuffer.append(escapeEntityValue(this.value));
    stringBuffer.append("\">");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dtd\InternalEntityDecl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */