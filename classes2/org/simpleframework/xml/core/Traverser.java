package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class Traverser {
  private final Context context;
  
  private final Style style;
  
  public Traverser(Context paramContext) {
    this.style = paramContext.getStyle();
    this.context = paramContext;
  }
  
  private Composite getComposite(Class paramClass) {
    Type type = getType(paramClass);
    if (paramClass == null)
      throw new RootException("Can not instantiate null class", new Object[0]); 
    return new Composite(this.context, type);
  }
  
  private Decorator getDecorator(Class paramClass) {
    return this.context.getDecorator(paramClass);
  }
  
  private Type getType(Class paramClass) {
    return new ClassType(paramClass);
  }
  
  private Object read(InputNode paramInputNode, Class paramClass, Object paramObject) {
    if (getName(paramClass) == null)
      throw new RootException("Root annotation required for %s", new Object[] { paramClass }); 
    return paramObject;
  }
  
  protected String getName(Class paramClass) {
    String str = this.context.getName(paramClass);
    return this.style.getElement(str);
  }
  
  public Object read(InputNode paramInputNode, Class paramClass) {
    Object object = getComposite(paramClass).read(paramInputNode);
    return (object != null) ? read(paramInputNode, object.getClass(), object) : null;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    return read(paramInputNode, clazz, getComposite(clazz).read(paramInputNode, paramObject));
  }
  
  public boolean validate(InputNode paramInputNode, Class paramClass) {
    Composite composite = getComposite(paramClass);
    if (getName(paramClass) == null)
      throw new RootException("Root annotation required for %s", new Object[] { paramClass }); 
    return composite.validate(paramInputNode);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    write(paramOutputNode, paramObject, paramObject.getClass());
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject, Class paramClass) {
    Class<?> clazz = paramObject.getClass();
    String str = getName(clazz);
    if (str == null)
      throw new RootException("Root annotation required for %s", new Object[] { clazz }); 
    write(paramOutputNode, paramObject, paramClass, str);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject, Class paramClass, String paramString) {
    paramOutputNode = paramOutputNode.getChild(paramString);
    Type type = getType(paramClass);
    if (paramObject != null) {
      Class<?> clazz = paramObject.getClass();
      Decorator decorator = getDecorator(clazz);
      if (decorator != null)
        decorator.decorate(paramOutputNode); 
      if (!this.context.setOverride(type, paramObject, paramOutputNode))
        getComposite(clazz).write(paramOutputNode, paramObject); 
    } 
    paramOutputNode.commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Traverser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */