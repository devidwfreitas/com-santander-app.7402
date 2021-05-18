package org.simpleframework.xml.core;

import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;

class EmptyMatcher implements Matcher {
  public Transform match(Class paramClass) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\EmptyMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */