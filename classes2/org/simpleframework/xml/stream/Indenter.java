package org.simpleframework.xml.stream;

class Indenter {
  private Indenter$Cache cache;
  
  private int count;
  
  private int indent;
  
  private int index;
  
  public Indenter() {
    this(new Format());
  }
  
  public Indenter(Format paramFormat) {
    this(paramFormat, 16);
  }
  
  private Indenter(Format paramFormat, int paramInt) {
    this.indent = paramFormat.getIndent();
    this.cache = new Indenter$Cache(paramInt);
  }
  
  private String create() {
    char[] arrayOfChar = new char[this.count + 1];
    if (this.count > 0) {
      arrayOfChar[0] = '\n';
      for (int i = 1; i <= this.count; i++)
        arrayOfChar[i] = ' '; 
      return new String(arrayOfChar);
    } 
    return "\n";
  }
  
  private String indent(int paramInt) {
    if (this.indent > 0) {
      String str2 = this.cache.get(paramInt);
      String str1 = str2;
      if (str2 == null) {
        str1 = create();
        this.cache.set(paramInt, str1);
      } 
      if (this.cache.size() > 0)
        return str1; 
    } 
    return "";
  }
  
  public String pop() {
    int i = this.index - 1;
    this.index = i;
    String str = indent(i);
    if (this.indent > 0)
      this.count -= this.indent; 
    return str;
  }
  
  public String push() {
    int i = this.index;
    this.index = i + 1;
    String str = indent(i);
    if (this.indent > 0)
      this.count += this.indent; 
    return str;
  }
  
  public String top() {
    return indent(this.index);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Indenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */