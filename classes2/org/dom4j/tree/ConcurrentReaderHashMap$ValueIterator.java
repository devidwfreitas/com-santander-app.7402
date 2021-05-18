package org.dom4j.tree;

public class ConcurrentReaderHashMap$ValueIterator extends ConcurrentReaderHashMap$HashIterator {
  protected ConcurrentReaderHashMap$ValueIterator() {
    super(paramConcurrentReaderHashMap);
  }
  
  protected Object returnValueOfNext() {
    return this.currentValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$ValueIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */