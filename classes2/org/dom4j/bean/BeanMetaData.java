package org.dom4j.bean;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.QName;

public class BeanMetaData {
  private static final DocumentFactory DOCUMENT_FACTORY;
  
  protected static final Object[] NULL_ARGS = new Object[0];
  
  private static Map singletonCache = new HashMap<Object, Object>();
  
  private Class beanClass;
  
  private Map nameMap;
  
  private PropertyDescriptor[] propertyDescriptors;
  
  private QName[] qNames;
  
  private Method[] readMethods;
  
  private Method[] writeMethods;
  
  static {
    DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();
  }
  
  public BeanMetaData(Class<?> paramClass) {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_0
    //   5: new java/util/HashMap
    //   8: dup
    //   9: invokespecial <init> : ()V
    //   12: putfield nameMap : Ljava/util/Map;
    //   15: aload_0
    //   16: aload_1
    //   17: putfield beanClass : Ljava/lang/Class;
    //   20: aload_1
    //   21: ifnull -> 37
    //   24: aload_0
    //   25: aload_1
    //   26: invokestatic getBeanInfo : (Ljava/lang/Class;)Ljava/beans/BeanInfo;
    //   29: invokeinterface getPropertyDescriptors : ()[Ljava/beans/PropertyDescriptor;
    //   34: putfield propertyDescriptors : [Ljava/beans/PropertyDescriptor;
    //   37: aload_0
    //   38: getfield propertyDescriptors : [Ljava/beans/PropertyDescriptor;
    //   41: ifnonnull -> 52
    //   44: aload_0
    //   45: iconst_0
    //   46: anewarray java/beans/PropertyDescriptor
    //   49: putfield propertyDescriptors : [Ljava/beans/PropertyDescriptor;
    //   52: aload_0
    //   53: getfield propertyDescriptors : [Ljava/beans/PropertyDescriptor;
    //   56: arraylength
    //   57: istore_3
    //   58: aload_0
    //   59: iload_3
    //   60: anewarray org/dom4j/QName
    //   63: putfield qNames : [Lorg/dom4j/QName;
    //   66: aload_0
    //   67: iload_3
    //   68: anewarray java/lang/reflect/Method
    //   71: putfield readMethods : [Ljava/lang/reflect/Method;
    //   74: aload_0
    //   75: iload_3
    //   76: anewarray java/lang/reflect/Method
    //   79: putfield writeMethods : [Ljava/lang/reflect/Method;
    //   82: iconst_0
    //   83: istore_2
    //   84: iload_2
    //   85: iload_3
    //   86: if_icmpge -> 195
    //   89: aload_0
    //   90: getfield propertyDescriptors : [Ljava/beans/PropertyDescriptor;
    //   93: iload_2
    //   94: aaload
    //   95: astore #5
    //   97: aload #5
    //   99: invokevirtual getName : ()Ljava/lang/String;
    //   102: astore_1
    //   103: getstatic org/dom4j/bean/BeanMetaData.DOCUMENT_FACTORY : Lorg/dom4j/DocumentFactory;
    //   106: aload_1
    //   107: invokevirtual createQName : (Ljava/lang/String;)Lorg/dom4j/QName;
    //   110: astore #4
    //   112: aload_0
    //   113: getfield qNames : [Lorg/dom4j/QName;
    //   116: iload_2
    //   117: aload #4
    //   119: aastore
    //   120: aload_0
    //   121: getfield readMethods : [Ljava/lang/reflect/Method;
    //   124: iload_2
    //   125: aload #5
    //   127: invokevirtual getReadMethod : ()Ljava/lang/reflect/Method;
    //   130: aastore
    //   131: aload_0
    //   132: getfield writeMethods : [Ljava/lang/reflect/Method;
    //   135: iload_2
    //   136: aload #5
    //   138: invokevirtual getWriteMethod : ()Ljava/lang/reflect/Method;
    //   141: aastore
    //   142: new java/lang/Integer
    //   145: dup
    //   146: iload_2
    //   147: invokespecial <init> : (I)V
    //   150: astore #5
    //   152: aload_0
    //   153: getfield nameMap : Ljava/util/Map;
    //   156: aload_1
    //   157: aload #5
    //   159: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   164: pop
    //   165: aload_0
    //   166: getfield nameMap : Ljava/util/Map;
    //   169: aload #4
    //   171: aload #5
    //   173: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   178: pop
    //   179: iload_2
    //   180: iconst_1
    //   181: iadd
    //   182: istore_2
    //   183: goto -> 84
    //   186: astore_1
    //   187: aload_0
    //   188: aload_1
    //   189: invokevirtual handleException : (Ljava/lang/Exception;)V
    //   192: goto -> 37
    //   195: return
    // Exception table:
    //   from	to	target	type
    //   24	37	186	java/beans/IntrospectionException
  }
  
  public static BeanMetaData get(Class<?> paramClass) {
    BeanMetaData beanMetaData2 = (BeanMetaData)singletonCache.get(paramClass);
    BeanMetaData beanMetaData1 = beanMetaData2;
    if (beanMetaData2 == null) {
      beanMetaData1 = new BeanMetaData(paramClass);
      singletonCache.put(paramClass, beanMetaData1);
    } 
    return beanMetaData1;
  }
  
  public int attributeCount() {
    return this.propertyDescriptors.length;
  }
  
  public BeanAttributeList createAttributeList(BeanElement paramBeanElement) {
    return new BeanAttributeList(paramBeanElement, this);
  }
  
  public Object getData(int paramInt, Object paramObject) {
    try {
      return this.readMethods[paramInt].invoke(paramObject, NULL_ARGS);
    } catch (Exception exception) {
      handleException(exception);
      return null;
    } 
  }
  
  public int getIndex(String paramString) {
    Integer integer = (Integer)this.nameMap.get(paramString);
    return (integer != null) ? integer.intValue() : -1;
  }
  
  public int getIndex(QName paramQName) {
    Integer integer = (Integer)this.nameMap.get(paramQName);
    return (integer != null) ? integer.intValue() : -1;
  }
  
  public QName getQName(int paramInt) {
    return this.qNames[paramInt];
  }
  
  protected void handleException(Exception paramException) {}
  
  public void setData(int paramInt, Object paramObject1, Object paramObject2) {
    try {
      this.writeMethods[paramInt].invoke(paramObject1, new Object[] { paramObject2 });
      return;
    } catch (Exception exception) {
      handleException(exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\bean\BeanMetaData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */