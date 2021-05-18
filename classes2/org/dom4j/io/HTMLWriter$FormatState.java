package org.dom4j.io;

class HTMLWriter$FormatState {
  private String indent = "";
  
  private boolean newlines = false;
  
  private boolean trimText = false;
  
  public HTMLWriter$FormatState(boolean paramBoolean1, boolean paramBoolean2, String paramString) {
    this.newlines = paramBoolean1;
    this.trimText = paramBoolean2;
    this.indent = paramString;
  }
  
  public String getIndent() {
    return this.indent;
  }
  
  public boolean isNewlines() {
    return this.newlines;
  }
  
  public boolean isTrimText() {
    return this.trimText;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\HTMLWriter$FormatState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */