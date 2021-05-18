package org.simpleframework.xml.core;

class SessionManager {
  private ThreadLocal<SessionManager$Reference> local = new ThreadLocal<SessionManager$Reference>();
  
  private Session create(boolean paramBoolean) {
    SessionManager$Reference sessionManager$Reference = new SessionManager$Reference(paramBoolean);
    if (sessionManager$Reference != null)
      this.local.set(sessionManager$Reference); 
    return sessionManager$Reference.get();
  }
  
  public void close() {
    SessionManager$Reference sessionManager$Reference = this.local.get();
    if (sessionManager$Reference == null)
      throw new PersistenceException("Session does not exist", new Object[0]); 
    if (sessionManager$Reference.clear() == 0)
      this.local.remove(); 
  }
  
  public Session open() {
    return open(true);
  }
  
  public Session open(boolean paramBoolean) {
    SessionManager$Reference sessionManager$Reference = this.local.get();
    return (sessionManager$Reference != null) ? sessionManager$Reference.get() : create(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SessionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */