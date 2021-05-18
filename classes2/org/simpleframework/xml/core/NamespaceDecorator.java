package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.OutputNode;

class NamespaceDecorator implements Decorator {
  private Namespace primary;
  
  private List<Namespace> scope = new ArrayList<Namespace>();
  
  private void namespace(OutputNode paramOutputNode) {
    if (this.primary != null)
      paramOutputNode.setReference(this.primary.reference()); 
  }
  
  private void scope(OutputNode paramOutputNode) {
    NamespaceMap namespaceMap = paramOutputNode.getNamespaces();
    for (Namespace namespace : this.scope)
      namespaceMap.setReference(namespace.reference(), namespace.prefix()); 
  }
  
  public void add(Namespace paramNamespace) {
    this.scope.add(paramNamespace);
  }
  
  public void decorate(OutputNode paramOutputNode) {
    decorate(paramOutputNode, null);
  }
  
  public void decorate(OutputNode paramOutputNode, Decorator paramDecorator) {
    if (paramDecorator != null)
      paramDecorator.decorate(paramOutputNode); 
    scope(paramOutputNode);
    namespace(paramOutputNode);
  }
  
  public void set(Namespace paramNamespace) {
    if (paramNamespace != null)
      add(paramNamespace); 
    this.primary = paramNamespace;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\NamespaceDecorator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */