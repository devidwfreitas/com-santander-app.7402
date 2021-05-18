package org.apache.commons.io.input;

import java.util.Comparator;
import org.apache.commons.io.ByteOrderMark;

final class BOMInputStream$1 implements Comparator<ByteOrderMark> {
  public int compare(ByteOrderMark paramByteOrderMark1, ByteOrderMark paramByteOrderMark2) {
    int i = paramByteOrderMark1.length();
    int j = paramByteOrderMark2.length();
    return (i > j) ? -1 : ((j > i) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\BOMInputStream$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */