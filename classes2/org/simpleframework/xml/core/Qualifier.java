package org.simpleframework.xml.core;

import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.stream.OutputNode;

class Qualifier implements Decorator {
  private NamespaceDecorator decorator = new NamespaceDecorator();
  
  public Qualifier(Contact paramContact) {
    scan(paramContact);
  }
  
  private void namespace(Contact paramContact) {
    Namespace namespace = (Namespace)paramContact.getAnnotation(Namespace.class);
    if (namespace != null) {
      this.decorator.set(namespace);
      this.decorator.add(namespace);
    } 
  }
  
  private void scan(Contact paramContact) {
    namespace(paramContact);
    scope(paramContact);
  }
  
  private void scope(Contact paramContact) {
    NamespaceList namespaceList = (NamespaceList)paramContact.getAnnotation(NamespaceList.class);
    if (namespaceList != null)
      for (Namespace namespace : namespaceList.value())
        this.decorator.add(namespace);  
  }
  
  public void decorate(OutputNode paramOutputNode) {
    this.decorator.decorate(paramOutputNode);
  }
  
  public void decorate(OutputNode paramOutputNode, Decorator paramDecorator) {
    this.decorator.decorate(paramOutputNode, paramDecorator);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Qualifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */