package org.simpleframework.xml.core;

import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class DetailExtractor {
  private final Cache<Detail> details = (Cache<Detail>)new ConcurrentCache();
  
  private final Cache<ContactList> fields = (Cache<ContactList>)new ConcurrentCache();
  
  private final Cache<ContactList> methods = (Cache<ContactList>)new ConcurrentCache();
  
  private final DefaultType override;
  
  private final Support support;
  
  public DetailExtractor(Support paramSupport) {
    this(paramSupport, null);
  }
  
  public DetailExtractor(Support paramSupport, DefaultType paramDefaultType) {
    this.override = paramDefaultType;
    this.support = paramSupport;
  }
  
  private ContactList getFields(Class paramClass, Detail paramDetail) {
    FieldScanner fieldScanner = new FieldScanner(paramDetail, this.support);
    if (paramDetail != null)
      this.fields.cache(paramClass, fieldScanner); 
    return fieldScanner;
  }
  
  private ContactList getMethods(Class paramClass, Detail paramDetail) {
    MethodScanner methodScanner = new MethodScanner(paramDetail, this.support);
    if (paramDetail != null)
      this.methods.cache(paramClass, methodScanner); 
    return methodScanner;
  }
  
  public Detail getDetail(Class paramClass) {
    Detail detail2 = (Detail)this.details.fetch(paramClass);
    Detail detail1 = detail2;
    if (detail2 == null) {
      detail1 = new DetailScanner(paramClass, this.override);
      this.details.cache(paramClass, detail1);
    } 
    return detail1;
  }
  
  public ContactList getFields(Class paramClass) {
    ContactList contactList2 = (ContactList)this.fields.fetch(paramClass);
    ContactList contactList1 = contactList2;
    if (contactList2 == null) {
      Detail detail = getDetail(paramClass);
      contactList1 = contactList2;
      if (detail != null)
        contactList1 = getFields(paramClass, detail); 
    } 
    return contactList1;
  }
  
  public ContactList getMethods(Class paramClass) {
    ContactList contactList2 = (ContactList)this.methods.fetch(paramClass);
    ContactList contactList1 = contactList2;
    if (contactList2 == null) {
      Detail detail = getDetail(paramClass);
      contactList1 = contactList2;
      if (detail != null)
        contactList1 = getMethods(paramClass, detail); 
    } 
    return contactList1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\DetailExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */