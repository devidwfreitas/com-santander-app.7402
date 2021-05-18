package org.simpleframework.xml.stream;

abstract class Splitter {
  protected StringBuilder builder = new StringBuilder();
  
  protected int count;
  
  protected int off;
  
  protected char[] text;
  
  public Splitter(String paramString) {
    this.text = paramString.toCharArray();
    this.count = this.text.length;
  }
  
  private boolean acronym() {
    boolean bool = false;
    int i = this.off;
    int j = 0;
    while (i < this.count && isUpper(this.text[i])) {
      j++;
      i++;
    } 
    if (j > 1) {
      int k = i;
      if (i < this.count) {
        k = i;
        if (isUpper(this.text[i - 1]))
          k = i - 1; 
      } 
      commit(this.text, this.off, k - this.off);
      this.off = k;
    } 
    if (j > 1)
      bool = true; 
    return bool;
  }
  
  private boolean isDigit(char paramChar) {
    return Character.isDigit(paramChar);
  }
  
  private boolean isLetter(char paramChar) {
    return Character.isLetter(paramChar);
  }
  
  private boolean isSpecial(char paramChar) {
    return !Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isUpper(char paramChar) {
    return Character.isUpperCase(paramChar);
  }
  
  private boolean number() {
    boolean bool = false;
    int i = this.off;
    int j = 0;
    while (i < this.count && isDigit(this.text[i])) {
      j++;
      i++;
    } 
    if (j > 0)
      commit(this.text, this.off, i - this.off); 
    this.off = i;
    if (j > 0)
      bool = true; 
    return bool;
  }
  
  private void token() {
    int i = this.off;
    while (true) {
      if (i < this.count) {
        char c = this.text[i];
        if (isLetter(c) && (i <= this.off || !isUpper(c))) {
          i++;
          continue;
        } 
      } 
      if (i > this.off) {
        parse(this.text, this.off, i - this.off);
        commit(this.text, this.off, i - this.off);
      } 
      this.off = i;
      return;
    } 
  }
  
  protected abstract void commit(char[] paramArrayOfchar, int paramInt1, int paramInt2);
  
  protected abstract void parse(char[] paramArrayOfchar, int paramInt1, int paramInt2);
  
  public String process() {
    label13: while (this.off < this.count) {
      while (true) {
        if (this.off >= this.count || !isSpecial(this.text[this.off])) {
          if (!acronym()) {
            token();
            number();
            continue label13;
          } 
          continue label13;
        } 
        this.off++;
      } 
    } 
    return this.builder.toString();
  }
  
  protected char toLower(char paramChar) {
    return Character.toLowerCase(paramChar);
  }
  
  protected char toUpper(char paramChar) {
    return Character.toUpperCase(paramChar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Splitter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */