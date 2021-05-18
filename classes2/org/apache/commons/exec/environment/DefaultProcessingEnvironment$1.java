package org.apache.commons.exec.environment;

import java.util.Comparator;

class DefaultProcessingEnvironment$1 implements Comparator {
  private final DefaultProcessingEnvironment this$0;
  
  DefaultProcessingEnvironment$1(DefaultProcessingEnvironment paramDefaultProcessingEnvironment) {
    this.this$0 = paramDefaultProcessingEnvironment;
  }
  
  public int compare(Object paramObject1, Object paramObject2) {
    return ((String)paramObject1).compareToIgnoreCase((String)paramObject2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\environment\DefaultProcessingEnvironment$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */