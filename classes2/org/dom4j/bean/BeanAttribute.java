package org.dom4j.bean;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;

public class BeanAttribute extends AbstractAttribute {
  private final BeanAttributeList beanList;
  
  private final int index;
  
  public BeanAttribute(BeanAttributeList paramBeanAttributeList, int paramInt) {
    this.beanList = paramBeanAttributeList;
    this.index = paramInt;
  }
  
  public Object getData() {
    return this.beanList.getData(this.index);
  }
  
  public Element getParent() {
    return (Element)this.beanList.getParent();
  }
  
  public QName getQName() {
    return this.beanList.getQName(this.index);
  }
  
  public String getValue() {
    Object object = getData();
    return (object != null) ? object.toString() : null;
  }
  
  public void setData(Object paramObject) {
    this.beanList.setData(this.index, paramObject);
  }
  
  public void setValue(String paramString) {
    this.beanList.setData(this.index, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\bean\BeanAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */