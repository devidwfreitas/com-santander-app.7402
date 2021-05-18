package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;

class ReadState extends WeakCache<ReadGraph> {
  private final Contract contract;
  
  private final Loader loader = new Loader();
  
  public ReadState(Contract paramContract) {
    this.contract = paramContract;
  }
  
  private ReadGraph create(Object paramObject) {
    ReadGraph readGraph2 = (ReadGraph)fetch(paramObject);
    ReadGraph readGraph1 = readGraph2;
    if (readGraph2 == null) {
      readGraph1 = new ReadGraph(this.contract, this.loader);
      cache(paramObject, readGraph1);
    } 
    return readGraph1;
  }
  
  public ReadGraph find(Object paramObject) {
    ReadGraph readGraph = (ReadGraph)fetch(paramObject);
    return (readGraph != null) ? readGraph : create(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\ReadState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */