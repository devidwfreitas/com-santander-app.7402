package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;
import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;
import org.simpleframework.xml.transform.Transformer;

class Support implements Filter {
  private final DetailExtractor defaults = new DetailExtractor(this, DefaultType.FIELD);
  
  private final DetailExtractor details;
  
  private final Filter filter;
  
  private final Format format;
  
  private final InstanceFactory instances;
  
  private final LabelExtractor labels;
  
  private final Matcher matcher;
  
  private final ScannerFactory scanners;
  
  private final Transformer transform;
  
  public Support() {
    this((Filter)new PlatformFilter());
  }
  
  public Support(Filter paramFilter) {
    this(paramFilter, new EmptyMatcher());
  }
  
  public Support(Filter paramFilter, Matcher paramMatcher) {
    this(paramFilter, paramMatcher, new Format());
  }
  
  public Support(Filter paramFilter, Matcher paramMatcher, Format paramFormat) {
    this.transform = new Transformer(paramMatcher);
    this.scanners = new ScannerFactory(this);
    this.details = new DetailExtractor(this);
    this.labels = new LabelExtractor(paramFormat);
    this.instances = new InstanceFactory();
    this.matcher = paramMatcher;
    this.filter = paramFilter;
    this.format = paramFormat;
  }
  
  private String getClassName(Class<?> paramClass) {
    Class<?> clazz = paramClass;
    if (paramClass.isArray())
      clazz = paramClass.getComponentType(); 
    String str = clazz.getSimpleName();
    return clazz.isPrimitive() ? str : Reflector.getName(str);
  }
  
  public static Class getPrimitive(Class<double> paramClass) {
    if (paramClass == double.class)
      return Double.class; 
    if (paramClass == float.class)
      return Float.class; 
    if (paramClass == int.class)
      return Integer.class; 
    if (paramClass == long.class)
      return Long.class; 
    if (paramClass == boolean.class)
      return Boolean.class; 
    if (paramClass == char.class)
      return Character.class; 
    if (paramClass == short.class)
      return Short.class; 
    Class<double> clazz = paramClass;
    return (Class)((paramClass == byte.class) ? Byte.class : clazz);
  }
  
  public static boolean isAssignable(Class<?> paramClass1, Class<?> paramClass2) {
    Class<?> clazz = paramClass1;
    if (paramClass1.isPrimitive())
      clazz = getPrimitive(paramClass1); 
    paramClass1 = paramClass2;
    if (paramClass2.isPrimitive())
      paramClass1 = getPrimitive(paramClass2); 
    return paramClass1.isAssignableFrom(clazz);
  }
  
  public static boolean isFloat(Class<Double> paramClass) {
    return !(paramClass != Double.class && paramClass != Float.class && paramClass != float.class && paramClass != double.class);
  }
  
  public Detail getDetail(Class paramClass) {
    return getDetail(paramClass, null);
  }
  
  public Detail getDetail(Class paramClass, DefaultType paramDefaultType) {
    return (paramDefaultType != null) ? this.defaults.getDetail(paramClass) : this.details.getDetail(paramClass);
  }
  
  public ContactList getFields(Class paramClass) {
    return getFields(paramClass, null);
  }
  
  public ContactList getFields(Class paramClass, DefaultType paramDefaultType) {
    return (paramDefaultType != null) ? this.defaults.getFields(paramClass) : this.details.getFields(paramClass);
  }
  
  public Format getFormat() {
    return this.format;
  }
  
  public Instance getInstance(Class paramClass) {
    return this.instances.getInstance(paramClass);
  }
  
  public Instance getInstance(Value paramValue) {
    return this.instances.getInstance(paramValue);
  }
  
  public Label getLabel(Contact paramContact, Annotation paramAnnotation) {
    return this.labels.getLabel(paramContact, paramAnnotation);
  }
  
  public List<Label> getLabels(Contact paramContact, Annotation paramAnnotation) {
    return this.labels.getList(paramContact, paramAnnotation);
  }
  
  public ContactList getMethods(Class paramClass) {
    return getMethods(paramClass, null);
  }
  
  public ContactList getMethods(Class paramClass, DefaultType paramDefaultType) {
    return (paramDefaultType != null) ? this.defaults.getMethods(paramClass) : this.details.getMethods(paramClass);
  }
  
  public String getName(Class paramClass) {
    String str = getScanner(paramClass).getName();
    return (str != null) ? str : getClassName(paramClass);
  }
  
  public Scanner getScanner(Class paramClass) {
    return this.scanners.getInstance(paramClass);
  }
  
  public Style getStyle() {
    return this.format.getStyle();
  }
  
  public Transform getTransform(Class paramClass) {
    return this.matcher.match(paramClass);
  }
  
  public boolean isContainer(Class<?> paramClass) {
    return (!Collection.class.isAssignableFrom(paramClass) && !Map.class.isAssignableFrom(paramClass)) ? paramClass.isArray() : true;
  }
  
  public boolean isPrimitive(Class<String> paramClass) {
    return (paramClass != String.class && paramClass != Float.class && paramClass != Double.class && paramClass != Long.class && paramClass != Integer.class && paramClass != Boolean.class && !paramClass.isEnum() && !paramClass.isPrimitive()) ? this.transform.valid(paramClass) : true;
  }
  
  public Object read(String paramString, Class paramClass) {
    return this.transform.read(paramString, paramClass);
  }
  
  public String replace(String paramString) {
    return this.filter.replace(paramString);
  }
  
  public boolean valid(Class paramClass) {
    return this.transform.valid(paramClass);
  }
  
  public String write(Object paramObject, Class paramClass) {
    return this.transform.write(paramObject, paramClass);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Support.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */