package org.dom4j.tree;

public class ConcurrentReaderHashMap$KeyIterator extends ConcurrentReaderHashMap$HashIterator {
  protected ConcurrentReaderHashMap$KeyIterator() {
    super(paramConcurrentReaderHashMap);
  }
  
  protected Object returnValueOfNext() {
    return this.currentKey;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$KeyIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */