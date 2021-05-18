package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

class TemplateEngine {
  private Filter filter;
  
  private Template name = new Template();
  
  private int off;
  
  private Template source = new Template();
  
  private Template text = new Template();
  
  public TemplateEngine(Filter paramFilter) {
    this.filter = paramFilter;
  }
  
  private void name() {
    while (true) {
      if (this.off < this.source.count) {
        char[] arrayOfChar = this.source.buf;
        int i = this.off;
        this.off = i + 1;
        char c = arrayOfChar[i];
        if (c == '}') {
          replace();
        } else {
          this.name.append(c);
          continue;
        } 
      } 
      if (this.name.length() > 0) {
        this.text.append("${");
        this.text.append(this.name);
      } 
      return;
    } 
  }
  
  private void parse() {
    while (this.off < this.source.count) {
      char[] arrayOfChar = this.source.buf;
      int i = this.off;
      this.off = i + 1;
      char c = arrayOfChar[i];
      if (c == '$' && this.off < this.source.count) {
        arrayOfChar = this.source.buf;
        i = this.off;
        this.off = i + 1;
        if (arrayOfChar[i] == '{') {
          name();
          continue;
        } 
        this.off--;
      } 
      this.text.append(c);
    } 
  }
  
  private void replace() {
    if (this.name.length() > 0)
      replace(this.name); 
    this.name.clear();
  }
  
  private void replace(String paramString) {
    String str = this.filter.replace(paramString);
    if (str == null) {
      this.text.append("${");
      this.text.append(paramString);
      this.text.append("}");
      return;
    } 
    this.text.append(str);
  }
  
  private void replace(Template paramTemplate) {
    replace(paramTemplate.toString());
  }
  
  public void clear() {
    this.name.clear();
    this.text.clear();
    this.source.clear();
    this.off = 0;
  }
  
  public String process(String paramString) {
    if (paramString.indexOf('$') < 0)
      return paramString; 
    try {
      this.source.append(paramString);
      parse();
      paramString = this.text.toString();
      return paramString;
    } finally {
      clear();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TemplateEngine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */