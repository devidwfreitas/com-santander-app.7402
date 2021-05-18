package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

class Signature implements Iterable<Parameter> {
  private final Constructor factory;
  
  private final ParameterMap parameters = new ParameterMap();
  
  private final Class type;
  
  public Signature(Constructor paramConstructor) {
    this(paramConstructor, paramConstructor.getDeclaringClass());
  }
  
  public Signature(Constructor paramConstructor, Class paramClass) {
    this.factory = paramConstructor;
    this.type = paramClass;
  }
  
  public Signature(Signature paramSignature) {
    this(paramSignature.factory, paramSignature.type);
  }
  
  public void add(Parameter paramParameter) {
    Object object = paramParameter.getKey();
    if (object != null)
      this.parameters.put(object, paramParameter); 
  }
  
  public boolean contains(Object paramObject) {
    return this.parameters.containsKey(paramObject);
  }
  
  public Signature copy() {
    Signature signature = new Signature(this);
    Iterator<Parameter> iterator = iterator();
    while (iterator.hasNext())
      signature.add(iterator.next()); 
    return signature;
  }
  
  public Object create() {
    if (!this.factory.isAccessible())
      this.factory.setAccessible(true); 
    return this.factory.newInstance(new Object[0]);
  }
  
  public Object create(Object[] paramArrayOfObject) {
    if (!this.factory.isAccessible())
      this.factory.setAccessible(true); 
    return this.factory.newInstance(paramArrayOfObject);
  }
  
  public Parameter get(int paramInt) {
    return this.parameters.get(paramInt);
  }
  
  public Parameter get(Object paramObject) {
    return this.parameters.get(paramObject);
  }
  
  public List<Parameter> getAll() {
    return this.parameters.getAll();
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isEmpty() {
    return this.parameters.isEmpty();
  }
  
  public Iterator<Parameter> iterator() {
    return this.parameters.iterator();
  }
  
  public Parameter remove(Object paramObject) {
    return this.parameters.remove(paramObject);
  }
  
  public void set(Object paramObject, Parameter paramParameter) {
    this.parameters.put(paramObject, paramParameter);
  }
  
  public int size() {
    return this.parameters.size();
  }
  
  public String toString() {
    return this.factory.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Signature.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */