package org.dom4j.io;

public class OutputFormat implements Cloneable {
  protected static final String STANDARD_INDENT = "  ";
  
  private char attributeQuoteChar = '"';
  
  private boolean doXHTML = false;
  
  private String encoding = "UTF-8";
  
  private boolean expandEmptyElements = false;
  
  private String indent = null;
  
  private String lineSeparator = "\n";
  
  private boolean newLineAfterDeclaration = true;
  
  private int newLineAfterNTags = 0;
  
  private boolean newlines = false;
  
  private boolean omitEncoding = false;
  
  private boolean padText = false;
  
  private boolean suppressDeclaration = false;
  
  private boolean trimText = false;
  
  public OutputFormat() {}
  
  public OutputFormat(String paramString) {
    this.indent = paramString;
  }
  
  public OutputFormat(String paramString, boolean paramBoolean) {
    this.indent = paramString;
    this.newlines = paramBoolean;
  }
  
  public OutputFormat(String paramString1, boolean paramBoolean, String paramString2) {
    this.indent = paramString1;
    this.newlines = paramBoolean;
    this.encoding = paramString2;
  }
  
  public static OutputFormat createCompactFormat() {
    OutputFormat outputFormat = new OutputFormat();
    outputFormat.setIndent(false);
    outputFormat.setNewlines(false);
    outputFormat.setTrimText(true);
    return outputFormat;
  }
  
  public static OutputFormat createPrettyPrint() {
    OutputFormat outputFormat = new OutputFormat();
    outputFormat.setIndentSize(2);
    outputFormat.setNewlines(true);
    outputFormat.setTrimText(true);
    outputFormat.setPadText(true);
    return outputFormat;
  }
  
  public char getAttributeQuoteCharacter() {
    return this.attributeQuoteChar;
  }
  
  public String getEncoding() {
    return this.encoding;
  }
  
  public String getIndent() {
    return this.indent;
  }
  
  public String getLineSeparator() {
    return this.lineSeparator;
  }
  
  public int getNewLineAfterNTags() {
    return this.newLineAfterNTags;
  }
  
  public boolean isExpandEmptyElements() {
    return this.expandEmptyElements;
  }
  
  public boolean isNewLineAfterDeclaration() {
    return this.newLineAfterDeclaration;
  }
  
  public boolean isNewlines() {
    return this.newlines;
  }
  
  public boolean isOmitEncoding() {
    return this.omitEncoding;
  }
  
  public boolean isPadText() {
    return this.padText;
  }
  
  public boolean isSuppressDeclaration() {
    return this.suppressDeclaration;
  }
  
  public boolean isTrimText() {
    return this.trimText;
  }
  
  public boolean isXHTML() {
    return this.doXHTML;
  }
  
  public int parseOptions(String[] paramArrayOfString, int paramInt) {
    int i = paramArrayOfString.length;
    while (paramInt < i) {
      if (paramArrayOfString[paramInt].equals("-suppressDeclaration")) {
        setSuppressDeclaration(true);
      } else if (paramArrayOfString[paramInt].equals("-omitEncoding")) {
        setOmitEncoding(true);
      } else if (paramArrayOfString[paramInt].equals("-indent")) {
        setIndent(paramArrayOfString[++paramInt]);
      } else if (paramArrayOfString[paramInt].equals("-indentSize")) {
        setIndentSize(Integer.parseInt(paramArrayOfString[++paramInt]));
      } else if (paramArrayOfString[paramInt].startsWith("-expandEmpty")) {
        setExpandEmptyElements(true);
      } else if (paramArrayOfString[paramInt].equals("-encoding")) {
        setEncoding(paramArrayOfString[++paramInt]);
      } else if (paramArrayOfString[paramInt].equals("-newlines")) {
        setNewlines(true);
      } else if (paramArrayOfString[paramInt].equals("-lineSeparator")) {
        setLineSeparator(paramArrayOfString[++paramInt]);
      } else if (paramArrayOfString[paramInt].equals("-trimText")) {
        setTrimText(true);
      } else if (paramArrayOfString[paramInt].equals("-padText")) {
        setPadText(true);
      } else if (paramArrayOfString[paramInt].startsWith("-xhtml")) {
        setXHTML(true);
      } else {
        break;
      } 
      paramInt++;
    } 
    return paramInt;
  }
  
  public void setAttributeQuoteCharacter(char paramChar) {
    if (paramChar == '\'' || paramChar == '"') {
      this.attributeQuoteChar = paramChar;
      return;
    } 
    throw new IllegalArgumentException("Invalid attribute quote character (" + paramChar + ")");
  }
  
  public void setEncoding(String paramString) {
    if (paramString != null)
      this.encoding = paramString; 
  }
  
  public void setExpandEmptyElements(boolean paramBoolean) {
    this.expandEmptyElements = paramBoolean;
  }
  
  public void setIndent(String paramString) {
    String str = paramString;
    if (paramString != null) {
      str = paramString;
      if (paramString.length() <= 0)
        str = null; 
    } 
    this.indent = str;
  }
  
  public void setIndent(boolean paramBoolean) {
    if (paramBoolean) {
      this.indent = "  ";
      return;
    } 
    this.indent = null;
  }
  
  public void setIndentSize(int paramInt) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < paramInt; i++)
      stringBuffer.append(" "); 
    this.indent = stringBuffer.toString();
  }
  
  public void setLineSeparator(String paramString) {
    this.lineSeparator = paramString;
  }
  
  public void setNewLineAfterDeclaration(boolean paramBoolean) {
    this.newLineAfterDeclaration = paramBoolean;
  }
  
  public void setNewLineAfterNTags(int paramInt) {
    this.newLineAfterNTags = paramInt;
  }
  
  public void setNewlines(boolean paramBoolean) {
    this.newlines = paramBoolean;
  }
  
  public void setOmitEncoding(boolean paramBoolean) {
    this.omitEncoding = paramBoolean;
  }
  
  public void setPadText(boolean paramBoolean) {
    this.padText = paramBoolean;
  }
  
  public void setSuppressDeclaration(boolean paramBoolean) {
    this.suppressDeclaration = paramBoolean;
  }
  
  public void setTrimText(boolean paramBoolean) {
    this.trimText = paramBoolean;
  }
  
  public void setXHTML(boolean paramBoolean) {
    this.doXHTML = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\OutputFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */