package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class LabelExtractor {
  private final Cache<LabelGroup> cache = (Cache<LabelGroup>)new ConcurrentCache();
  
  private final Format format;
  
  public LabelExtractor(Format paramFormat) {
    this.format = paramFormat;
  }
  
  private Annotation[] getAnnotations(Annotation paramAnnotation) {
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    return (arrayOfMethod.length > 0) ? (Annotation[])arrayOfMethod[0].invoke(paramAnnotation, new Object[0]) : new Annotation[0];
  }
  
  private LabelExtractor$LabelBuilder getBuilder(Annotation paramAnnotation) {
    if (paramAnnotation instanceof Element)
      return new LabelExtractor$LabelBuilder(ElementLabel.class, Element.class); 
    if (paramAnnotation instanceof ElementList)
      return new LabelExtractor$LabelBuilder(ElementListLabel.class, ElementList.class); 
    if (paramAnnotation instanceof ElementArray)
      return new LabelExtractor$LabelBuilder(ElementArrayLabel.class, ElementArray.class); 
    if (paramAnnotation instanceof ElementMap)
      return new LabelExtractor$LabelBuilder(ElementMapLabel.class, ElementMap.class); 
    if (paramAnnotation instanceof ElementUnion)
      return new LabelExtractor$LabelBuilder(ElementUnionLabel.class, ElementUnion.class, Element.class); 
    if (paramAnnotation instanceof ElementListUnion)
      return new LabelExtractor$LabelBuilder(ElementListUnionLabel.class, ElementListUnion.class, ElementList.class); 
    if (paramAnnotation instanceof ElementMapUnion)
      return new LabelExtractor$LabelBuilder(ElementMapUnionLabel.class, ElementMapUnion.class, ElementMap.class); 
    if (paramAnnotation instanceof Attribute)
      return new LabelExtractor$LabelBuilder(AttributeLabel.class, Attribute.class); 
    if (paramAnnotation instanceof Version)
      return new LabelExtractor$LabelBuilder(VersionLabel.class, Version.class); 
    if (paramAnnotation instanceof Text)
      return new LabelExtractor$LabelBuilder(TextLabel.class, Text.class); 
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private Constructor getConstructor(Annotation paramAnnotation) {
    Constructor constructor = getBuilder(paramAnnotation).getConstructor();
    if (!constructor.isAccessible())
      constructor.setAccessible(true); 
    return constructor;
  }
  
  private LabelGroup getGroup(Contact paramContact, Annotation paramAnnotation, Object paramObject) {
    LabelGroup labelGroup2 = (LabelGroup)this.cache.fetch(paramObject);
    LabelGroup labelGroup1 = labelGroup2;
    if (labelGroup2 == null) {
      LabelGroup labelGroup = getLabels(paramContact, paramAnnotation);
      labelGroup1 = labelGroup;
      if (labelGroup != null) {
        this.cache.cache(paramObject, labelGroup);
        labelGroup1 = labelGroup;
      } 
    } 
    return labelGroup1;
  }
  
  private Object getKey(Contact paramContact, Annotation paramAnnotation) {
    return new LabelKey(paramContact, paramAnnotation);
  }
  
  private Label getLabel(Contact paramContact, Annotation paramAnnotation1, Annotation paramAnnotation2) {
    Constructor<Label> constructor = getConstructor(paramAnnotation1);
    return (paramAnnotation2 != null) ? constructor.newInstance(new Object[] { paramContact, paramAnnotation1, paramAnnotation2, this.format }) : constructor.newInstance(new Object[] { paramContact, paramAnnotation1, this.format });
  }
  
  private LabelGroup getLabels(Contact paramContact, Annotation paramAnnotation) {
    return (paramAnnotation instanceof ElementUnion) ? getUnion(paramContact, paramAnnotation) : ((paramAnnotation instanceof ElementListUnion) ? getUnion(paramContact, paramAnnotation) : ((paramAnnotation instanceof ElementMapUnion) ? getUnion(paramContact, paramAnnotation) : getSingle(paramContact, paramAnnotation)));
  }
  
  private LabelGroup getSingle(Contact paramContact, Annotation paramAnnotation) {
    Label label = getLabel(paramContact, paramAnnotation, null);
    if (label != null)
      label = new CacheLabel(label); 
    return new LabelGroup(label);
  }
  
  private LabelGroup getUnion(Contact paramContact, Annotation paramAnnotation) {
    Annotation[] arrayOfAnnotation = getAnnotations(paramAnnotation);
    if (arrayOfAnnotation.length > 0) {
      LinkedList<Label> linkedList = new LinkedList();
      int j = arrayOfAnnotation.length;
      for (int i = 0; i < j; i++) {
        Label label = getLabel(paramContact, paramAnnotation, arrayOfAnnotation[i]);
        if (label != null)
          label = new CacheLabel(label); 
        linkedList.add(label);
      } 
      return new LabelGroup(linkedList);
    } 
    return null;
  }
  
  public Label getLabel(Contact paramContact, Annotation paramAnnotation) {
    LabelGroup labelGroup = getGroup(paramContact, paramAnnotation, getKey(paramContact, paramAnnotation));
    return (labelGroup != null) ? labelGroup.getPrimary() : null;
  }
  
  public List<Label> getList(Contact paramContact, Annotation paramAnnotation) {
    LabelGroup labelGroup = getGroup(paramContact, paramAnnotation, getKey(paramContact, paramAnnotation));
    return (labelGroup != null) ? labelGroup.getList() : Collections.emptyList();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\LabelExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */