package org.simpleframework.xml.core;

import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Mode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeInlineMap implements Repeater {
  private final Entry entry;
  
  private final MapFactory factory;
  
  private final Converter key;
  
  private final Style style;
  
  private final Converter value;
  
  public CompositeInlineMap(Context paramContext, Entry paramEntry, Type paramType) {
    this.factory = new MapFactory(paramContext, paramType);
    this.value = paramEntry.getValue(paramContext);
    this.key = paramEntry.getKey(paramContext);
    this.style = paramContext.getStyle();
    this.entry = paramEntry;
  }
  
  private Object read(InputNode paramInputNode, Map<Object, Object> paramMap) {
    InputNode inputNode = paramInputNode.getParent();
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      Object object2 = this.key.read(paramInputNode);
      Object object1 = this.value.read(paramInputNode);
      if (paramMap != null)
        paramMap.put(object2, object1); 
      object1 = inputNode.getNext(str);
    } 
    return paramMap;
  }
  
  private void write(OutputNode paramOutputNode, Map paramMap, Mode paramMode) {
    String str = this.entry.getEntry();
    str = this.style.getElement(str);
    for (Object object : paramMap.keySet()) {
      OutputNode outputNode = paramOutputNode.getChild(str);
      Object object1 = paramMap.get(object);
      outputNode.setMode(paramMode);
      this.key.write(outputNode, object);
      this.value.write(outputNode, object1);
    } 
  }
  
  public Object read(InputNode paramInputNode) {
    Map map = (Map)this.factory.getInstance();
    return (map != null) ? read(paramInputNode, map) : null;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    paramObject = paramObject;
    return (paramObject != null) ? read(paramInputNode, (Map)paramObject) : read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    InputNode inputNode = paramInputNode.getParent();
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      if (this.key.validate(paramInputNode) && this.value.validate(paramInputNode)) {
        paramInputNode = inputNode.getNext(str);
        continue;
      } 
      return false;
    } 
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    OutputNode outputNode = paramOutputNode.getParent();
    Mode mode = paramOutputNode.getMode();
    paramObject = paramObject;
    if (!paramOutputNode.isCommitted())
      paramOutputNode.remove(); 
    write(outputNode, (Map)paramObject, mode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeInlineMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */