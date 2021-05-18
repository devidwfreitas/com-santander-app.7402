package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.DefaultType;

class FieldScanner extends ContactList {
  private final ContactMap done;
  
  private final AnnotationFactory factory;
  
  private final Support support;
  
  public FieldScanner(Detail paramDetail, Support paramSupport) {
    this.factory = new AnnotationFactory(paramDetail, paramSupport);
    this.done = new ContactMap();
    this.support = paramSupport;
    scan(paramDetail);
  }
  
  private void build() {
    Iterator<Contact> iterator = this.done.iterator();
    while (iterator.hasNext())
      add(iterator.next()); 
  }
  
  private void extend(Class paramClass, DefaultType paramDefaultType) {
    ContactList contactList = this.support.getFields(paramClass, paramDefaultType);
    if (contactList != null)
      addAll(contactList); 
  }
  
  private void extract(Detail paramDetail) {
    for (FieldDetail fieldDetail : paramDetail.getFields()) {
      Annotation[] arrayOfAnnotation = fieldDetail.getAnnotations();
      Field field = fieldDetail.getField();
      int j = arrayOfAnnotation.length;
      for (int i = 0; i < j; i++)
        scan(field, arrayOfAnnotation[i], arrayOfAnnotation); 
    } 
  }
  
  private void extract(Detail paramDetail, DefaultType paramDefaultType) {
    List<FieldDetail> list = paramDetail.getFields();
    if (paramDefaultType == DefaultType.FIELD)
      for (FieldDetail fieldDetail : list) {
        Annotation[] arrayOfAnnotation = fieldDetail.getAnnotations();
        Field field = fieldDetail.getField();
        Class<?> clazz = field.getType();
        if (!isStatic(field) && !isTransient(field))
          process(field, clazz, arrayOfAnnotation); 
      }  
  }
  
  private void insert(Object paramObject, Contact paramContact) {
    Contact contact2 = this.done.remove(paramObject);
    Contact contact1 = paramContact;
    if (contact2 != null) {
      contact1 = paramContact;
      if (isText(paramContact))
        contact1 = contact2; 
    } 
    this.done.put(paramObject, contact1);
  }
  
  private boolean isStatic(Field paramField) {
    return Modifier.isStatic(paramField.getModifiers());
  }
  
  private boolean isText(Contact paramContact) {
    return (paramContact.getAnnotation() instanceof org.simpleframework.xml.Text);
  }
  
  private boolean isTransient(Field paramField) {
    return Modifier.isTransient(paramField.getModifiers());
  }
  
  private void process(Field paramField, Class paramClass, Annotation[] paramArrayOfAnnotation) {
    Class[] arrayOfClass = Reflector.getDependents(paramField);
    Annotation annotation = this.factory.getInstance(paramClass, arrayOfClass);
    if (annotation != null)
      process(paramField, annotation, paramArrayOfAnnotation); 
  }
  
  private void process(Field paramField, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    FieldContact fieldContact = new FieldContact(paramField, paramAnnotation, paramArrayOfAnnotation);
    FieldScanner$FieldKey fieldScanner$FieldKey = new FieldScanner$FieldKey(paramField);
    if (!paramField.isAccessible())
      paramField.setAccessible(true); 
    insert(fieldScanner$FieldKey, fieldContact);
  }
  
  private void remove(Field paramField, Annotation paramAnnotation) {
    this.done.remove(new FieldScanner$FieldKey(paramField));
  }
  
  private void scan(Field paramField, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    if (paramAnnotation instanceof org.simpleframework.xml.Attribute)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementUnion)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementListUnion)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMapUnion)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementList)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementArray)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMap)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Element)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Version)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Text)
      process(paramField, paramAnnotation, paramArrayOfAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Transient)
      remove(paramField, paramAnnotation); 
  }
  
  private void scan(Detail paramDetail) {
    DefaultType defaultType1 = paramDetail.getOverride();
    DefaultType defaultType2 = paramDetail.getAccess();
    Class clazz = paramDetail.getSuper();
    if (clazz != null)
      extend(clazz, defaultType1); 
    extract(paramDetail, defaultType2);
    extract(paramDetail);
    build();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\FieldScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */