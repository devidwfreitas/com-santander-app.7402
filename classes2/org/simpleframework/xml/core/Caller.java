package org.simpleframework.xml.core;

class Caller {
  private final Function commit;
  
  private final Function complete;
  
  private final Context context;
  
  private final Function persist;
  
  private final Function replace;
  
  private final Function resolve;
  
  private final Function validate;
  
  public Caller(Scanner paramScanner, Context paramContext) {
    this.validate = paramScanner.getValidate();
    this.complete = paramScanner.getComplete();
    this.replace = paramScanner.getReplace();
    this.resolve = paramScanner.getResolve();
    this.persist = paramScanner.getPersist();
    this.commit = paramScanner.getCommit();
    this.context = paramContext;
  }
  
  public void commit(Object paramObject) {
    if (this.commit != null)
      this.commit.call(this.context, paramObject); 
  }
  
  public void complete(Object paramObject) {
    if (this.complete != null)
      this.complete.call(this.context, paramObject); 
  }
  
  public void persist(Object paramObject) {
    if (this.persist != null)
      this.persist.call(this.context, paramObject); 
  }
  
  public Object replace(Object paramObject) {
    Object object = paramObject;
    if (this.replace != null)
      object = this.replace.call(this.context, paramObject); 
    return object;
  }
  
  public Object resolve(Object paramObject) {
    Object object = paramObject;
    if (this.resolve != null)
      object = this.resolve.call(this.context, paramObject); 
    return object;
  }
  
  public void validate(Object paramObject) {
    if (this.validate != null)
      this.validate.call(this.context, paramObject); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Caller.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */