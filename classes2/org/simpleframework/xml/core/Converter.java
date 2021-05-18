package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

interface Converter {
  Object read(InputNode paramInputNode);
  
  Object read(InputNode paramInputNode, Object paramObject);
  
  boolean validate(InputNode paramInputNode);
  
  void write(OutputNode paramOutputNode, Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Converter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */