package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementMapExtractor implements Extractor<ElementMap> {
  private final Contact contact;
  
  private final Format format;
  
  private final ElementMapUnion union;
  
  public ExtractorFactory$ElementMapExtractor(Contact paramContact, ElementMapUnion paramElementMapUnion, Format paramFormat) {
    this.contact = paramContact;
    this.format = paramFormat;
    this.union = paramElementMapUnion;
  }
  
  public ElementMap[] getAnnotations() {
    return this.union.value();
  }
  
  public Label getLabel(ElementMap paramElementMap) {
    return new ElementMapLabel(this.contact, paramElementMap, this.format);
  }
  
  public Class getType(ElementMap paramElementMap) {
    return paramElementMap.valueType();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExtractorFactory$ElementMapExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */