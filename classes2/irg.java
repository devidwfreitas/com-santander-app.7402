import br.com.santander.msgsdk.Tracking;

class irg implements Tracking {
  irg(ird paramird) {}
  
  public void configNotificationAction(String paramString, boolean paramBoolean) {
    jrq.a(paramString, paramBoolean);
  }
  
  public void menuConfigPanelAction() {
    jrq.c();
  }
  
  public void menuNotificationsAction() {
    jrq.a();
  }
  
  public void notificationDetailedBackAction() {
    jrq.b();
  }
  
  public void notificationDetailedOptions() {
    jrq.a(jrq.b, "MaisOpcoes");
  }
  
  public void notificationDetailedPopUpOptionCancel() {
    jrq.a(jrq.c, "Cancelar");
  }
  
  public void notificationDetailedPopUpOptionDelete() {
    jrq.a(jrq.c, "Excluir");
  }
  
  public void notificationDetailedPopUpOptionUnread() {
    jrq.a(jrq.c, "MarcarNaoLida");
  }
  
  public void notificationTypeAction(String paramString) {
    jrq.a(paramString);
  }
  
  public void swipeNotificationOptionDelete() {
    jrq.a(jrq.a, "Excluir");
  }
  
  public void swipeNotificationOptionReadUnread(boolean paramBoolean) {
    if (paramBoolean)
      jrq.a(jrq.a, "MarcarNaoLida"); 
  }
  
  public void swipeNotificationOptions() {
    jrq.a(jrq.a, "MaisOpcoes");
  }
  
  public void swipeNotificationPopUpOptionCancel() {
    jrq.a(jrq.d, "Cancelar");
  }
  
  public void swipeNotificationPopUpOptionDelete() {
    jrq.a(jrq.d, "Excluir");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\irg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */