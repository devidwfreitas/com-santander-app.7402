package org.dom4j;

public interface ElementPath {
  void addHandler(String paramString, ElementHandler paramElementHandler);
  
  Element getCurrent();
  
  Element getElement(int paramInt);
  
  String getPath();
  
  void removeHandler(String paramString);
  
  int size();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\ElementPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */