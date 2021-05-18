package org.dom4j.io;

import java.io.Serializable;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

public class SAXReader$SAXEntityResolver implements Serializable, EntityResolver {
  protected String uriPrefix;
  
  public SAXReader$SAXEntityResolver(String paramString) {
    this.uriPrefix = paramString;
  }
  
  public InputSource resolveEntity(String paramString1, String paramString2) {
    paramString1 = paramString2;
    if (paramString2 != null) {
      paramString1 = paramString2;
      if (paramString2.length() > 0) {
        paramString1 = paramString2;
        if (this.uriPrefix != null) {
          paramString1 = paramString2;
          if (paramString2.indexOf(':') <= 0)
            paramString1 = this.uriPrefix + paramString2; 
        } 
      } 
    } 
    return new InputSource(paramString1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXReader$SAXEntityResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */