package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class Variable$Adapter implements Repeater {
  private final Label label;
  
  private final Converter reader;
  
  private final Object value;
  
  public Variable$Adapter(Converter paramConverter, Label paramLabel, Object paramObject) {
    this.reader = paramConverter;
    this.value = paramObject;
    this.label = paramLabel;
  }
  
  public Object read(InputNode paramInputNode) {
    return read(paramInputNode, this.value);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Position position = paramInputNode.getPosition();
    String str = paramInputNode.getName();
    if (this.reader instanceof Repeater)
      return ((Repeater)this.reader).read(paramInputNode, paramObject); 
    throw new PersistenceException("Element '%s' is already used with %s at %s", new Object[] { str, this.label, position });
  }
  
  public boolean validate(InputNode paramInputNode) {
    Position position = paramInputNode.getPosition();
    String str = paramInputNode.getName();
    if (this.reader instanceof Repeater)
      return ((Repeater)this.reader).validate(paramInputNode); 
    throw new PersistenceException("Element '%s' declared twice at %s", new Object[] { str, position });
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    write(paramOutputNode, paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Variable$Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */