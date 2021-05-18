package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

class DetailScanner implements Detail {
  private DefaultType access;
  
  private NamespaceList declaration;
  
  private List<FieldDetail> fields = new LinkedList<FieldDetail>();
  
  private Annotation[] labels;
  
  private List<MethodDetail> methods = new LinkedList<MethodDetail>();
  
  private String name;
  
  private Namespace namespace;
  
  private Order order;
  
  private DefaultType override;
  
  private boolean required;
  
  private Root root;
  
  private boolean strict;
  
  private Class type;
  
  public DetailScanner(Class paramClass) {
    this(paramClass, null);
  }
  
  public DetailScanner(Class paramClass, DefaultType paramDefaultType) {
    this.labels = paramClass.getDeclaredAnnotations();
    this.override = paramDefaultType;
    this.strict = true;
    this.type = paramClass;
    scan(paramClass);
  }
  
  private void access(Annotation paramAnnotation) {
    if (paramAnnotation != null) {
      Default default_ = (Default)paramAnnotation;
      this.required = default_.required();
      this.access = default_.value();
    } 
  }
  
  private void extract(Class paramClass) {
    for (Annotation annotation : this.labels) {
      if (annotation instanceof Namespace)
        namespace(annotation); 
      if (annotation instanceof NamespaceList)
        scope(annotation); 
      if (annotation instanceof Root)
        root(annotation); 
      if (annotation instanceof Order)
        order(annotation); 
      if (annotation instanceof Default)
        access(annotation); 
    } 
  }
  
  private void fields(Class paramClass) {
    Field[] arrayOfField = paramClass.getDeclaredFields();
    int j = arrayOfField.length;
    for (int i = 0; i < j; i++) {
      FieldDetail fieldDetail = new FieldDetail(arrayOfField[i]);
      this.fields.add(fieldDetail);
    } 
  }
  
  private boolean isEmpty(String paramString) {
    return (paramString.length() == 0);
  }
  
  private void methods(Class paramClass) {
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int j = arrayOfMethod.length;
    for (int i = 0; i < j; i++) {
      MethodDetail methodDetail = new MethodDetail(arrayOfMethod[i]);
      this.methods.add(methodDetail);
    } 
  }
  
  private void namespace(Annotation paramAnnotation) {
    if (paramAnnotation != null)
      this.namespace = (Namespace)paramAnnotation; 
  }
  
  private void order(Annotation paramAnnotation) {
    if (paramAnnotation != null)
      this.order = (Order)paramAnnotation; 
  }
  
  private void root(Annotation paramAnnotation) {
    if (paramAnnotation != null) {
      Root root = (Root)paramAnnotation;
      String str = this.type.getSimpleName();
      if (root != null) {
        String str2 = root.name();
        String str1 = str2;
        if (isEmpty(str2))
          str1 = Reflector.getName(str); 
        this.strict = root.strict();
        this.root = root;
        this.name = str1;
      } 
    } 
  }
  
  private void scan(Class paramClass) {
    methods(paramClass);
    fields(paramClass);
    extract(paramClass);
  }
  
  private void scope(Annotation paramAnnotation) {
    if (paramAnnotation != null)
      this.declaration = (NamespaceList)paramAnnotation; 
  }
  
  public DefaultType getAccess() {
    return (this.override != null) ? this.override : this.access;
  }
  
  public Annotation[] getAnnotations() {
    return this.labels;
  }
  
  public Constructor[] getConstructors() {
    return (Constructor[])this.type.getDeclaredConstructors();
  }
  
  public List<FieldDetail> getFields() {
    return this.fields;
  }
  
  public List<MethodDetail> getMethods() {
    return this.methods;
  }
  
  public String getName() {
    return this.name;
  }
  
  public Namespace getNamespace() {
    return this.namespace;
  }
  
  public NamespaceList getNamespaceList() {
    return this.declaration;
  }
  
  public Order getOrder() {
    return this.order;
  }
  
  public DefaultType getOverride() {
    return this.override;
  }
  
  public Root getRoot() {
    return this.root;
  }
  
  public Class getSuper() {
    Class<Object> clazz2 = this.type.getSuperclass();
    Class<Object> clazz1 = clazz2;
    if (clazz2 == Object.class)
      clazz1 = null; 
    return clazz1;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isInstantiable() {
    return !(!Modifier.isStatic(this.type.getModifiers()) && this.type.isMemberClass());
  }
  
  public boolean isPrimitive() {
    return this.type.isPrimitive();
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public boolean isStrict() {
    return this.strict;
  }
  
  public String toString() {
    return this.type.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\DetailScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */