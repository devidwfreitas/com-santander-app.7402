package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class CompositeFileComparator extends AbstractFileComparator implements Serializable {
  private static final Comparator<?>[] NO_COMPARATORS = (Comparator<?>[])new Comparator[0];
  
  private final Comparator<File>[] delegates;
  
  public CompositeFileComparator(Iterable<Comparator<File>> paramIterable) {
    if (paramIterable == null) {
      this.delegates = (Comparator<File>[])NO_COMPARATORS;
      return;
    } 
    ArrayList<Comparator> arrayList = new ArrayList();
    Iterator<Comparator<File>> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    this.delegates = arrayList.<Comparator<File>>toArray((Comparator<File>[])new Comparator[arrayList.size()]);
  }
  
  public CompositeFileComparator(Comparator<File>... paramVarArgs) {
    if (paramVarArgs == null) {
      this.delegates = (Comparator<File>[])NO_COMPARATORS;
      return;
    } 
    this.delegates = (Comparator<File>[])new Comparator[paramVarArgs.length];
    System.arraycopy(paramVarArgs, 0, this.delegates, 0, paramVarArgs.length);
  }
  
  public int compare(File paramFile1, File paramFile2) {
    int i = 0;
    Comparator<File>[] arrayOfComparator = this.delegates;
    int k = arrayOfComparator.length;
    int j = 0;
    while (true) {
      if (j < k) {
        i = arrayOfComparator[j].compare(paramFile1, paramFile2);
        if (i == 0) {
          j++;
          continue;
        } 
      } 
      return i;
    } 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(super.toString());
    stringBuilder.append('{');
    for (int i = 0; i < this.delegates.length; i++) {
      if (i > 0)
        stringBuilder.append(','); 
      stringBuilder.append(this.delegates[i]);
    } 
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\CompositeFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */