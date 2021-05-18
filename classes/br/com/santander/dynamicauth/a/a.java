package br.com.santander.dynamicauth.a;

import br.com.santander.dynamicauth.exception.DynamicAuthException;
import org.simpleframework.xml.core.Persister;

public class a<T> {
  public T a(Class paramClass, String paramString) {
    Persister persister2 = null;
    Persister persister1 = persister2;
    if (paramString.contains("response")) {
      int i = paramString.indexOf("<response>");
      int j = paramString.indexOf("</response>");
      persister1 = persister2;
      if (i >= 0) {
        persister1 = persister2;
        if (i < j) {
          paramString = paramString.substring(i, j + "</response>".length());
          persister1 = new Persister();
          try {
            return (T)persister1.read(paramClass, paramString, false);
          } catch (Exception exception) {
            DynamicAuthException.showException(exception);
            return null;
          } 
        } 
      } 
    } 
    return (T)persister1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */