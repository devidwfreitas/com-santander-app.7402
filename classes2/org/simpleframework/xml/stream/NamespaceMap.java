package org.simpleframework.xml.stream;

import java.util.Iterator;

public interface NamespaceMap extends Iterable<String> {
  String getPrefix();
  
  String getPrefix(String paramString);
  
  String getReference(String paramString);
  
  Iterator<String> iterator();
  
  String setReference(String paramString);
  
  String setReference(String paramString1, String paramString2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NamespaceMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */