package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementExtractor implements Extractor<Element> {
  private final Contact contact;
  
  private final Format format;
  
  private final ElementUnion union;
  
  public ExtractorFactory$ElementExtractor(Contact paramContact, ElementUnion paramElementUnion, Format paramFormat) {
    this.contact = paramContact;
    this.format = paramFormat;
    this.union = paramElementUnion;
  }
  
  public Element[] getAnnotations() {
    return this.union.value();
  }
  
  public Label getLabel(Element paramElement) {
    return new ElementLabel(this.contact, paramElement, this.format);
  }
  
  public Class getType(Element paramElement) {
    Class<void> clazz2 = paramElement.type();
    Class<void> clazz1 = clazz2;
    if (clazz2 == void.class)
      clazz1 = this.contact.getType(); 
    return clazz1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExtractorFactory$ElementExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */