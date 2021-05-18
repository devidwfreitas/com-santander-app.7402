package org.simpleframework.xml.core;

class SessionManager$Reference {
  private int count;
  
  private Session session;
  
  public SessionManager$Reference(boolean paramBoolean) {
    this.session = new Session(paramBoolean);
  }
  
  public int clear() {
    int i = this.count - 1;
    this.count = i;
    return i;
  }
  
  public Session get() {
    if (this.count >= 0)
      this.count++; 
    return this.session;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SessionManager$Reference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */