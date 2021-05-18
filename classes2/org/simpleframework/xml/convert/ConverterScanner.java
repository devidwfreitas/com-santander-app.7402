package org.simpleframework.xml.convert;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;

class ConverterScanner {
  private final ScannerBuilder builder = new ScannerBuilder();
  
  private final ConverterFactory factory = new ConverterFactory();
  
  private <T extends java.lang.annotation.Annotation> T getAnnotation(Class<?> paramClass, Class<T> paramClass1) {
    return this.builder.build(paramClass).scan(paramClass1);
  }
  
  private Convert getConvert(Class<?> paramClass) {
    Convert convert = getAnnotation(paramClass, Convert.class);
    if (convert != null && (Root)getAnnotation(paramClass, Root.class) == null)
      throw new ConvertException("Root annotation required for %s", new Object[] { paramClass }); 
    return convert;
  }
  
  private Convert getConvert(Type paramType) {
    Convert convert = (Convert)paramType.getAnnotation(Convert.class);
    if (convert != null && (Element)paramType.getAnnotation(Element.class) == null)
      throw new ConvertException("Element annotation required for %s", new Object[] { paramType }); 
    return convert;
  }
  
  private Convert getConvert(Type paramType, Class paramClass) {
    Convert convert2 = getConvert(paramType);
    Convert convert1 = convert2;
    if (convert2 == null)
      convert1 = getConvert(paramClass); 
    return convert1;
  }
  
  private Class getType(Type paramType, Object paramObject) {
    Class<?> clazz = paramType.getType();
    if (paramObject != null)
      clazz = paramObject.getClass(); 
    return clazz;
  }
  
  private Class getType(Type paramType, Value paramValue) {
    Class clazz = paramType.getType();
    if (paramValue != null)
      clazz = paramValue.getType(); 
    return clazz;
  }
  
  public Converter getConverter(Type paramType, Object paramObject) {
    Convert convert = getConvert(paramType, getType(paramType, paramObject));
    return (convert != null) ? this.factory.getInstance(convert) : null;
  }
  
  public Converter getConverter(Type paramType, Value paramValue) {
    Convert convert = getConvert(paramType, getType(paramType, paramValue));
    return (convert != null) ? this.factory.getInstance(convert) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\ConverterScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */