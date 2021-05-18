package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import org.simpleframework.xml.stream.Format;

class GroupExtractor implements Group {
  private final LabelMap elements;
  
  private final ExtractorFactory factory;
  
  private final Annotation label;
  
  private final GroupExtractor$Registry registry;
  
  public GroupExtractor(Contact paramContact, Annotation paramAnnotation, Format paramFormat) {
    this.factory = new ExtractorFactory(paramContact, paramAnnotation, paramFormat);
    this.elements = new LabelMap();
    this.registry = new GroupExtractor$Registry(this.elements);
    this.label = paramAnnotation;
    extract();
  }
  
  private void extract() {
    Extractor extractor = this.factory.getInstance();
    if (extractor != null)
      extract(extractor); 
  }
  
  private void extract(Extractor<Object> paramExtractor) {
    Object[] arrayOfObject = paramExtractor.getAnnotations();
    int j = arrayOfObject.length;
    for (int i = 0; i < j; i++)
      extract(paramExtractor, (Annotation)arrayOfObject[i]); 
  }
  
  private void extract(Extractor<Annotation> paramExtractor, Annotation paramAnnotation) {
    Label label = paramExtractor.getLabel(paramAnnotation);
    Class clazz = paramExtractor.getType(paramAnnotation);
    if (this.registry != null)
      this.registry.register(clazz, label); 
  }
  
  public LabelMap getElements() {
    return this.elements.getLabels();
  }
  
  public Label getLabel(Class paramClass) {
    return this.registry.resolve(paramClass);
  }
  
  public String[] getNames() {
    return this.elements.getKeys();
  }
  
  public String[] getPaths() {
    return this.elements.getPaths();
  }
  
  public Label getText() {
    return this.registry.resolveText();
  }
  
  public boolean isDeclared(Class paramClass) {
    return this.registry.containsKey(paramClass);
  }
  
  public boolean isInline() {
    Iterator<Label> iterator = this.registry.iterator();
    while (iterator.hasNext()) {
      if (!((Label)iterator.next()).isInline())
        return false; 
    } 
    return !this.registry.isEmpty();
  }
  
  public boolean isTextList() {
    return this.registry.isText();
  }
  
  public boolean isValid(Class paramClass) {
    return (this.registry.resolve(paramClass) != null);
  }
  
  public String toString() {
    return this.label.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\GroupExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */