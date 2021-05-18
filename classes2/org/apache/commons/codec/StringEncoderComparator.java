package org.apache.commons.codec;

import java.util.Comparator;

public class StringEncoderComparator implements Comparator {
  private final StringEncoder stringEncoder = null;
  
  public StringEncoderComparator() {}
  
  public StringEncoderComparator(StringEncoder paramStringEncoder) {}
  
  public int compare(Object paramObject1, Object paramObject2) {
    try {
      return ((Comparable<Comparable>)this.stringEncoder.encode(paramObject1)).compareTo((Comparable)this.stringEncoder.encode(paramObject2));
    } catch (EncoderException encoderException) {
      return 0;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\StringEncoderComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */