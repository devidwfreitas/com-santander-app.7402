package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.DefaultType;

class MethodScanner extends ContactList {
  private final Detail detail;
  
  private final MethodPartFactory factory;
  
  private final MethodScanner$PartMap read;
  
  private final Support support;
  
  private final MethodScanner$PartMap write;
  
  public MethodScanner(Detail paramDetail, Support paramSupport) {
    this.factory = new MethodPartFactory(paramDetail, paramSupport);
    this.write = new MethodScanner$PartMap(null);
    this.read = new MethodScanner$PartMap(null);
    this.support = paramSupport;
    this.detail = paramDetail;
    scan(paramDetail);
  }
  
  private void build() {
    for (String str : this.read) {
      MethodPart methodPart = this.read.get(str);
      if (methodPart != null)
        build(methodPart, str); 
    } 
  }
  
  private void build(MethodPart paramMethodPart) {
    add(new MethodContact(paramMethodPart));
  }
  
  private void build(MethodPart paramMethodPart, String paramString) {
    MethodPart methodPart = this.write.take(paramString);
    if (methodPart != null) {
      build(paramMethodPart, methodPart);
      return;
    } 
    build(paramMethodPart);
  }
  
  private void build(MethodPart paramMethodPart1, MethodPart paramMethodPart2) {
    Annotation annotation = paramMethodPart1.getAnnotation();
    String str = paramMethodPart1.getName();
    if (!paramMethodPart2.getAnnotation().equals(annotation))
      throw new MethodException("Annotations do not match for '%s' in %s", new Object[] { str, this.detail }); 
    Class clazz = paramMethodPart1.getType();
    if (clazz != paramMethodPart2.getType())
      throw new MethodException("Method types do not match for %s in %s", new Object[] { str, clazz }); 
    add(new MethodContact(paramMethodPart1, paramMethodPart2));
  }
  
  private void extend(Class paramClass, DefaultType paramDefaultType) {
    Iterator<Contact> iterator = this.support.getMethods(paramClass, paramDefaultType).iterator();
    while (iterator.hasNext())
      process((MethodContact)iterator.next()); 
  }
  
  private void extract(Detail paramDetail) {
    for (MethodDetail methodDetail : paramDetail.getMethods()) {
      Annotation[] arrayOfAnnotation = methodDetail.getAnnotations();
      Method method = methodDetail.getMethod();
      int j = arrayOfAnnotation.length;
      for (int i = 0; i < j; i++)
        scan(method, arrayOfAnnotation[i], arrayOfAnnotation); 
    } 
  }
  
  private void extract(Detail paramDetail, DefaultType paramDefaultType) {
    List<MethodDetail> list = paramDetail.getMethods();
    if (paramDefaultType == DefaultType.PROPERTY)
      for (MethodDetail methodDetail : list) {
        Annotation[] arrayOfAnnotation = methodDetail.getAnnotations();
        Method method = methodDetail.getMethod();
        if (this.factory.getType(method) != null)
          process(method, arrayOfAnnotation); 
      }  
  }
  
  private void insert(MethodPart paramMethodPart, MethodScanner$PartMap paramMethodScanner$PartMap) {
    String str = paramMethodPart.getName();
    MethodPart methodPart2 = paramMethodScanner$PartMap.remove(str);
    MethodPart methodPart1 = paramMethodPart;
    if (methodPart2 != null) {
      methodPart1 = paramMethodPart;
      if (isText(paramMethodPart))
        methodPart1 = methodPart2; 
    } 
    paramMethodScanner$PartMap.put(str, methodPart1);
  }
  
  private boolean isText(MethodPart paramMethodPart) {
    return (paramMethodPart.getAnnotation() instanceof org.simpleframework.xml.Text);
  }
  
  private void process(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    MethodPart methodPart = this.factory.getInstance(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    MethodType methodType = methodPart.getMethodType();
    if (methodType == MethodType.GET)
      process(methodPart, this.read); 
    if (methodType == MethodType.IS)
      process(methodPart, this.read); 
    if (methodType == MethodType.SET)
      process(methodPart, this.write); 
  }
  
  private void process(Method paramMethod, Annotation[] paramArrayOfAnnotation) {
    MethodPart methodPart = this.factory.getInstance(paramMethod, paramArrayOfAnnotation);
    MethodType methodType = methodPart.getMethodType();
    if (methodType == MethodType.GET)
      process(methodPart, this.read); 
    if (methodType == MethodType.IS)
      process(methodPart, this.read); 
    if (methodType == MethodType.SET)
      process(methodPart, this.write); 
  }
  
  private void process(MethodContact paramMethodContact) {
    MethodPart methodPart2 = paramMethodContact.getRead();
    MethodPart methodPart1 = paramMethodContact.getWrite();
    if (methodPart1 != null)
      insert(methodPart1, this.write); 
    insert(methodPart2, this.read);
  }
  
  private void process(MethodPart paramMethodPart, MethodScanner$PartMap paramMethodScanner$PartMap) {
    String str = paramMethodPart.getName();
    if (str != null)
      paramMethodScanner$PartMap.put(str, paramMethodPart); 
  }
  
  private void remove(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    MethodPart methodPart = this.factory.getInstance(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    MethodType methodType = methodPart.getMethodType();
    if (methodType == MethodType.GET)
      remove(methodPart, this.read); 
    if (methodType == MethodType.IS)
      remove(methodPart, this.read); 
    if (methodType == MethodType.SET)
      remove(methodPart, this.write); 
  }
  
  private void remove(MethodPart paramMethodPart, MethodScanner$PartMap paramMethodScanner$PartMap) {
    String str = paramMethodPart.getName();
    if (str != null)
      paramMethodScanner$PartMap.remove(str); 
  }
  
  private void scan(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    if (paramAnnotation instanceof org.simpleframework.xml.Attribute)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementUnion)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementListUnion)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMapUnion)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementList)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementArray)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMap)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Element)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Version)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Text)
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Transient)
      remove(paramMethod, paramAnnotation, paramArrayOfAnnotation); 
  }
  
  private void scan(Detail paramDetail) {
    DefaultType defaultType1 = paramDetail.getOverride();
    DefaultType defaultType2 = paramDetail.getAccess();
    Class clazz = paramDetail.getSuper();
    if (clazz != null)
      extend(clazz, defaultType1); 
    extract(paramDetail, defaultType2);
    extract(paramDetail);
    build();
    validate();
  }
  
  private void validate() {
    for (String str : this.write) {
      MethodPart methodPart = this.write.get(str);
      if (methodPart != null)
        validate(methodPart, str); 
    } 
  }
  
  private void validate(MethodPart paramMethodPart, String paramString) {
    MethodPart methodPart = this.read.take(paramString);
    Method method = paramMethodPart.getMethod();
    if (methodPart == null)
      throw new MethodException("No matching get method for %s in %s", new Object[] { method, this.detail }); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */