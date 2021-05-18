package org.jaxen.saxpath.base;

class Token {
  private String parseText;
  
  private int tokenBegin;
  
  private int tokenEnd;
  
  private int tokenType;
  
  Token(int paramInt1, String paramString, int paramInt2, int paramInt3) {
    setTokenType(paramInt1);
    setParseText(paramString);
    setTokenBegin(paramInt2);
    setTokenEnd(paramInt3);
  }
  
  private void setParseText(String paramString) {
    this.parseText = paramString;
  }
  
  private void setTokenBegin(int paramInt) {
    this.tokenBegin = paramInt;
  }
  
  private void setTokenEnd(int paramInt) {
    this.tokenEnd = paramInt;
  }
  
  private void setTokenType(int paramInt) {
    this.tokenType = paramInt;
  }
  
  int getTokenBegin() {
    return this.tokenBegin;
  }
  
  int getTokenEnd() {
    return this.tokenEnd;
  }
  
  String getTokenText() {
    return this.parseText.substring(getTokenBegin(), getTokenEnd());
  }
  
  int getTokenType() {
    return this.tokenType;
  }
  
  public String toString() {
    return "[ (" + this.tokenType + ") (" + getTokenText() + ")";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\base\Token.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */