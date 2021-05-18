package org.apache.commons.cli;

import java.util.Comparator;

class HelpFormatter$OptionComparator implements Comparator {
  private HelpFormatter$OptionComparator() {}
  
  HelpFormatter$OptionComparator(HelpFormatter$1 paramHelpFormatter$1) {
    this();
  }
  
  public int compare(Object paramObject1, Object paramObject2) {
    paramObject1 = paramObject1;
    paramObject2 = paramObject2;
    return paramObject1.getKey().compareToIgnoreCase(paramObject2.getKey());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\HelpFormatter$OptionComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */