package org.simpleframework.xml.convert;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

public interface Converter<T> {
  T read(InputNode paramInputNode);
  
  void write(OutputNode paramOutputNode, T paramT);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\Converter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */