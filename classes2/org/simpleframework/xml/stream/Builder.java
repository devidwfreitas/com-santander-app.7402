package org.simpleframework.xml.stream;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class Builder implements Style {
  private final Cache<String> attributes = (Cache<String>)new ConcurrentCache();
  
  private final Cache<String> elements = (Cache<String>)new ConcurrentCache();
  
  private final Style style;
  
  public Builder(Style paramStyle) {
    this.style = paramStyle;
  }
  
  public String getAttribute(String paramString) {
    String str = (String)this.attributes.fetch(paramString);
    if (str == null) {
      String str1 = this.style.getAttribute(paramString);
      str = str1;
      if (str1 != null) {
        this.attributes.cache(paramString, str1);
        return str1;
      } 
    } 
    return str;
  }
  
  public String getElement(String paramString) {
    String str = (String)this.elements.fetch(paramString);
    if (str == null) {
      String str1 = this.style.getElement(paramString);
      str = str1;
      if (str1 != null) {
        this.elements.cache(paramString, str1);
        return str1;
      } 
    } 
    return str;
  }
  
  public void setAttribute(String paramString1, String paramString2) {
    this.attributes.cache(paramString1, paramString2);
  }
  
  public void setElement(String paramString1, String paramString2) {
    this.elements.cache(paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */