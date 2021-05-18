package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.util.List;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

interface Detail {
  DefaultType getAccess();
  
  Annotation[] getAnnotations();
  
  Constructor[] getConstructors();
  
  List<FieldDetail> getFields();
  
  List<MethodDetail> getMethods();
  
  String getName();
  
  Namespace getNamespace();
  
  NamespaceList getNamespaceList();
  
  Order getOrder();
  
  DefaultType getOverride();
  
  Root getRoot();
  
  Class getSuper();
  
  Class getType();
  
  boolean isInstantiable();
  
  boolean isPrimitive();
  
  boolean isRequired();
  
  boolean isStrict();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Detail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */