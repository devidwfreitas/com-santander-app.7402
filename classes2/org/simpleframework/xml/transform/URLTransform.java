package org.simpleframework.xml.transform;

import java.net.URL;

class URLTransform implements Transform<URL> {
  public URL read(String paramString) {
    return new URL(paramString);
  }
  
  public String write(URL paramURL) {
    return paramURL.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\URLTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */