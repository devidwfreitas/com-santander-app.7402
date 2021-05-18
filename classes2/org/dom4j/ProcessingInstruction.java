package org.dom4j;

import java.util.Map;

public interface ProcessingInstruction extends Node {
  String getTarget();
  
  String getText();
  
  String getValue(String paramString);
  
  Map<String, String> getValues();
  
  boolean removeValue(String paramString);
  
  void setTarget(String paramString);
  
  void setValue(String paramString1, String paramString2);
  
  void setValues(Map<String, String> paramMap);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\ProcessingInstruction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */