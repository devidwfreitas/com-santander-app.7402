package org.simpleframework.xml.stream;

import java.util.Iterator;

public interface NodeMap<T extends Node> extends Iterable<String> {
  T get(String paramString);
  
  String getName();
  
  T getNode();
  
  Iterator<String> iterator();
  
  T put(String paramString1, String paramString2);
  
  T remove(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NodeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */