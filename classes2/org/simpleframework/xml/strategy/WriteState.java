package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

class WriteState extends WeakCache<WriteGraph> {
  private Contract contract;
  
  public WriteState(Contract paramContract) {
    this.contract = paramContract;
  }
  
  public WriteGraph find(Object paramObject) {
    WriteGraph writeGraph2 = (WriteGraph)fetch(paramObject);
    WriteGraph writeGraph1 = writeGraph2;
    if (writeGraph2 == null) {
      writeGraph1 = new WriteGraph(this.contract);
      cache(paramObject, writeGraph1);
    } 
    return writeGraph1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\WriteState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */