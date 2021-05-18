package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

class ParameterFactory {
  private final Format format;
  
  public ParameterFactory(Support paramSupport) {
    this.format = paramSupport.getFormat();
  }
  
  private ParameterFactory$ParameterBuilder getBuilder(Annotation paramAnnotation) {
    if (paramAnnotation instanceof Element)
      return new ParameterFactory$ParameterBuilder(ElementParameter.class, Element.class); 
    if (paramAnnotation instanceof ElementList)
      return new ParameterFactory$ParameterBuilder(ElementListParameter.class, ElementList.class); 
    if (paramAnnotation instanceof ElementArray)
      return new ParameterFactory$ParameterBuilder(ElementArrayParameter.class, ElementArray.class); 
    if (paramAnnotation instanceof ElementMapUnion)
      return new ParameterFactory$ParameterBuilder(ElementMapUnionParameter.class, ElementMapUnion.class, ElementMap.class); 
    if (paramAnnotation instanceof ElementListUnion)
      return new ParameterFactory$ParameterBuilder(ElementListUnionParameter.class, ElementListUnion.class, ElementList.class); 
    if (paramAnnotation instanceof ElementUnion)
      return new ParameterFactory$ParameterBuilder(ElementUnionParameter.class, ElementUnion.class, Element.class); 
    if (paramAnnotation instanceof ElementMap)
      return new ParameterFactory$ParameterBuilder(ElementMapParameter.class, ElementMap.class); 
    if (paramAnnotation instanceof Attribute)
      return new ParameterFactory$ParameterBuilder(AttributeParameter.class, Attribute.class); 
    if (paramAnnotation instanceof Text)
      return new ParameterFactory$ParameterBuilder(TextParameter.class, Text.class); 
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private Constructor getConstructor(Annotation paramAnnotation) {
    Constructor constructor = getBuilder(paramAnnotation).getConstructor();
    if (!constructor.isAccessible())
      constructor.setAccessible(true); 
    return constructor;
  }
  
  public Parameter getInstance(Constructor paramConstructor, Annotation paramAnnotation, int paramInt) {
    return getInstance(paramConstructor, paramAnnotation, null, paramInt);
  }
  
  public Parameter getInstance(Constructor paramConstructor, Annotation paramAnnotation1, Annotation paramAnnotation2, int paramInt) {
    Constructor<Parameter> constructor = getConstructor(paramAnnotation1);
    return (paramAnnotation2 != null) ? constructor.newInstance(new Object[] { paramConstructor, paramAnnotation1, paramAnnotation2, this.format, Integer.valueOf(paramInt) }) : constructor.newInstance(new Object[] { paramConstructor, paramAnnotation1, this.format, Integer.valueOf(paramInt) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ParameterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */