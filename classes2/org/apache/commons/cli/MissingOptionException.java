package org.apache.commons.cli;

import java.util.Iterator;
import java.util.List;

public class MissingOptionException extends ParseException {
  private List missingOptions;
  
  public MissingOptionException(String paramString) {
    super(paramString);
  }
  
  public MissingOptionException(List paramList) {
    this(createMessage(paramList));
    this.missingOptions = paramList;
  }
  
  private static String createMessage(List paramList) {
    String str;
    StringBuffer stringBuffer = new StringBuffer("Missing required option");
    if (paramList.size() == 1) {
      str = "";
    } else {
      str = "s";
    } 
    stringBuffer.append(str);
    stringBuffer.append(": ");
    Iterator iterator = paramList.iterator();
    while (iterator.hasNext()) {
      stringBuffer.append(iterator.next());
      if (iterator.hasNext())
        stringBuffer.append(", "); 
    } 
    return stringBuffer.toString();
  }
  
  public List getMissingOptions() {
    return this.missingOptions;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\MissingOptionException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */