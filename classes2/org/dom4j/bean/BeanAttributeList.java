package org.dom4j.bean;

import java.util.AbstractList;
import org.dom4j.Attribute;
import org.dom4j.QName;

public class BeanAttributeList extends AbstractList {
  private BeanAttribute[] attributes;
  
  private BeanMetaData beanMetaData;
  
  private BeanElement parent;
  
  public BeanAttributeList(BeanElement paramBeanElement) {
    this.parent = paramBeanElement;
    Object<?> object = (Object<?>)paramBeanElement.getData();
    if (object != null) {
      object = (Object<?>)object.getClass();
    } else {
      object = null;
    } 
    this.beanMetaData = BeanMetaData.get((Class)object);
    this.attributes = new BeanAttribute[this.beanMetaData.attributeCount()];
  }
  
  public BeanAttributeList(BeanElement paramBeanElement, BeanMetaData paramBeanMetaData) {
    this.parent = paramBeanElement;
    this.beanMetaData = paramBeanMetaData;
    this.attributes = new BeanAttribute[paramBeanMetaData.attributeCount()];
  }
  
  public void add(int paramInt, Object paramObject) {
    throw new UnsupportedOperationException("add(int,Object) unsupported");
  }
  
  public boolean add(Object paramObject) {
    throw new UnsupportedOperationException("add(Object) unsupported");
  }
  
  public Attribute attribute(String paramString) {
    return (Attribute)attribute(this.beanMetaData.getIndex(paramString));
  }
  
  public Attribute attribute(QName paramQName) {
    return (Attribute)attribute(this.beanMetaData.getIndex(paramQName));
  }
  
  public BeanAttribute attribute(int paramInt) {
    if (paramInt >= 0 && paramInt <= this.attributes.length) {
      BeanAttribute beanAttribute2 = this.attributes[paramInt];
      BeanAttribute beanAttribute1 = beanAttribute2;
      if (beanAttribute2 == null) {
        beanAttribute1 = createAttribute(this.parent, paramInt);
        this.attributes[paramInt] = beanAttribute1;
      } 
      return beanAttribute1;
    } 
    return null;
  }
  
  public void clear() {
    int i = 0;
    int j = this.attributes.length;
    while (i < j) {
      BeanAttribute beanAttribute = this.attributes[i];
      if (beanAttribute != null)
        beanAttribute.setValue(null); 
      i++;
    } 
  }
  
  protected BeanAttribute createAttribute(BeanElement paramBeanElement, int paramInt) {
    return new BeanAttribute(this, paramInt);
  }
  
  public Object get(int paramInt) {
    BeanAttribute beanAttribute2 = this.attributes[paramInt];
    BeanAttribute beanAttribute1 = beanAttribute2;
    if (beanAttribute2 == null) {
      beanAttribute1 = createAttribute(this.parent, paramInt);
      this.attributes[paramInt] = beanAttribute1;
    } 
    return beanAttribute1;
  }
  
  public Object getData(int paramInt) {
    return this.beanMetaData.getData(paramInt, this.parent.getData());
  }
  
  public BeanElement getParent() {
    return this.parent;
  }
  
  public QName getQName(int paramInt) {
    return this.beanMetaData.getQName(paramInt);
  }
  
  public Object remove(int paramInt) {
    BeanAttribute beanAttribute = (BeanAttribute)get(paramInt);
    String str = beanAttribute.getValue();
    beanAttribute.setValue(null);
    return str;
  }
  
  public boolean remove(Object paramObject) {
    return false;
  }
  
  public Object set(int paramInt, Object paramObject) {
    throw new UnsupportedOperationException("set(int,Object) unsupported");
  }
  
  public void setData(int paramInt, Object paramObject) {
    this.beanMetaData.setData(paramInt, this.parent.getData(), paramObject);
  }
  
  public int size() {
    return this.attributes.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\bean\BeanAttributeList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */