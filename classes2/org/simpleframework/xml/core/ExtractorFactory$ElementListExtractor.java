package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementListExtractor implements Extractor<ElementList> {
  private final Contact contact;
  
  private final Format format;
  
  private final ElementListUnion union;
  
  public ExtractorFactory$ElementListExtractor(Contact paramContact, ElementListUnion paramElementListUnion, Format paramFormat) {
    this.contact = paramContact;
    this.format = paramFormat;
    this.union = paramElementListUnion;
  }
  
  public ElementList[] getAnnotations() {
    return this.union.value();
  }
  
  public Label getLabel(ElementList paramElementList) {
    return new ElementListLabel(this.contact, paramElementList, this.format);
  }
  
  public Class getType(ElementList paramElementList) {
    return paramElementList.type();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExtractorFactory$ElementListExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */