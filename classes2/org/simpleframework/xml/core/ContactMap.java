package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

class ContactMap extends LinkedHashMap<Object, Contact> implements Iterable<Contact> {
  public Iterator<Contact> iterator() {
    return values().iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ContactMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */