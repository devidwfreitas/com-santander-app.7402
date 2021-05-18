package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

class ClassScanner {
  private Function commit;
  
  private Function complete;
  
  private NamespaceDecorator decorator;
  
  private Order order;
  
  private Function persist;
  
  private Function replace;
  
  private Function resolve;
  
  private Root root;
  
  private ConstructorScanner scanner;
  
  private Support support;
  
  private Function validate;
  
  public ClassScanner(Detail paramDetail, Support paramSupport) {
    this.scanner = new ConstructorScanner(paramDetail, paramSupport);
    this.decorator = new NamespaceDecorator();
    this.support = paramSupport;
    scan(paramDetail);
  }
  
  private void commit(Method paramMethod) {
    if (this.commit == null)
      this.commit = getFunction(paramMethod); 
  }
  
  private void commit(Detail paramDetail) {
    Namespace namespace = paramDetail.getNamespace();
    if (namespace != null)
      this.decorator.set(namespace); 
  }
  
  private void complete(Method paramMethod) {
    if (this.complete == null)
      this.complete = getFunction(paramMethod); 
  }
  
  private void definition(Detail paramDetail) {
    if (this.root == null)
      this.root = paramDetail.getRoot(); 
    if (this.order == null)
      this.order = paramDetail.getOrder(); 
  }
  
  private Function getFunction(Method paramMethod) {
    boolean bool = isContextual(paramMethod);
    if (!paramMethod.isAccessible())
      paramMethod.setAccessible(true); 
    return new Function(paramMethod, bool);
  }
  
  private boolean isContextual(Method paramMethod) {
    boolean bool = false;
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    if (arrayOfClass.length == 1)
      bool = Map.class.equals(arrayOfClass[0]); 
    return bool;
  }
  
  private void method(Detail paramDetail) {
    Iterator<MethodDetail> iterator = paramDetail.getMethods().iterator();
    while (iterator.hasNext())
      method(iterator.next()); 
  }
  
  private void method(MethodDetail paramMethodDetail) {
    Annotation[] arrayOfAnnotation = paramMethodDetail.getAnnotations();
    Method method = paramMethodDetail.getMethod();
    int j = arrayOfAnnotation.length;
    for (int i = 0; i < j; i++) {
      Annotation annotation = arrayOfAnnotation[i];
      if (annotation instanceof Commit)
        commit(method); 
      if (annotation instanceof Validate)
        validate(method); 
      if (annotation instanceof Persist)
        persist(method); 
      if (annotation instanceof Complete)
        complete(method); 
      if (annotation instanceof Replace)
        replace(method); 
      if (annotation instanceof Resolve)
        resolve(method); 
    } 
  }
  
  private void namespace(Detail paramDetail) {
    NamespaceList namespaceList = paramDetail.getNamespaceList();
    Namespace namespace = paramDetail.getNamespace();
    if (namespace != null)
      this.decorator.add(namespace); 
    if (namespaceList != null)
      for (Namespace namespace1 : namespaceList.value())
        this.decorator.add(namespace1);  
  }
  
  private void persist(Method paramMethod) {
    if (this.persist == null)
      this.persist = getFunction(paramMethod); 
  }
  
  private void replace(Method paramMethod) {
    if (this.replace == null)
      this.replace = getFunction(paramMethod); 
  }
  
  private void resolve(Method paramMethod) {
    if (this.resolve == null)
      this.resolve = getFunction(paramMethod); 
  }
  
  private void scan(Detail paramDetail) {
    DefaultType defaultType = paramDetail.getOverride();
    Class clazz = paramDetail.getType();
    while (clazz != null) {
      Detail detail = this.support.getDetail(clazz, defaultType);
      namespace(detail);
      method(detail);
      definition(detail);
      Class clazz1 = detail.getSuper();
    } 
    commit(paramDetail);
  }
  
  private void validate(Method paramMethod) {
    if (this.validate == null)
      this.validate = getFunction(paramMethod); 
  }
  
  public Function getCommit() {
    return this.commit;
  }
  
  public Function getComplete() {
    return this.complete;
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Order getOrder() {
    return this.order;
  }
  
  public ParameterMap getParameters() {
    return this.scanner.getParameters();
  }
  
  public Function getPersist() {
    return this.persist;
  }
  
  public Function getReplace() {
    return this.replace;
  }
  
  public Function getResolve() {
    return this.resolve;
  }
  
  public Root getRoot() {
    return this.root;
  }
  
  public Signature getSignature() {
    return this.scanner.getSignature();
  }
  
  public List<Signature> getSignatures() {
    return this.scanner.getSignatures();
  }
  
  public Function getValidate() {
    return this.validate;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ClassScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */