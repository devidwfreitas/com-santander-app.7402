package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.OutputNode;

interface Decorator {
  void decorate(OutputNode paramOutputNode);
  
  void decorate(OutputNode paramOutputNode, Decorator paramDecorator);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Decorator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */