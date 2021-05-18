package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory {
  private final Contact contact;
  
  private final Format format;
  
  private final Annotation label;
  
  public ExtractorFactory(Contact paramContact, Annotation paramAnnotation, Format paramFormat) {
    this.contact = paramContact;
    this.format = paramFormat;
    this.label = paramAnnotation;
  }
  
  private ExtractorFactory$ExtractorBuilder getBuilder(Annotation paramAnnotation) {
    if (paramAnnotation instanceof ElementUnion)
      return new ExtractorFactory$ExtractorBuilder(ElementUnion.class, ExtractorFactory$ElementExtractor.class); 
    if (paramAnnotation instanceof ElementListUnion)
      return new ExtractorFactory$ExtractorBuilder(ElementListUnion.class, ExtractorFactory$ElementListExtractor.class); 
    if (paramAnnotation instanceof ElementMapUnion)
      return new ExtractorFactory$ExtractorBuilder(ElementMapUnion.class, ExtractorFactory$ElementMapExtractor.class); 
    throw new PersistenceException("Annotation %s is not a union", new Object[] { paramAnnotation });
  }
  
  private Object getInstance(Annotation paramAnnotation) {
    Constructor constructor = ExtractorFactory$ExtractorBuilder.access$000(getBuilder(paramAnnotation));
    if (!constructor.isAccessible())
      constructor.setAccessible(true); 
    return constructor.newInstance(new Object[] { this.contact, paramAnnotation, this.format });
  }
  
  public Extractor getInstance() {
    return (Extractor)getInstance(this.label);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExtractorFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */