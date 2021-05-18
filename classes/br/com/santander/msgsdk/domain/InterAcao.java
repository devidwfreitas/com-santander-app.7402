package br.com.santander.msgsdk.domain;

public class InterAcao {
  private int icon;
  
  private String title;
  
  private String value;
  
  public InterAcao() {}
  
  public InterAcao(String paramString1, String paramString2) {
    this.value = paramString1;
    this.title = paramString2;
    this.icon = -1;
  }
  
  public InterAcao(String paramString1, String paramString2, int paramInt) {
    this.value = paramString1;
    this.title = paramString2;
    this.icon = paramInt;
  }
  
  public int getIcon() {
    return this.icon;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public void setIcon(int paramInt) {
    this.icon = paramInt;
  }
  
  public void setTitle(String paramString) {
    this.title = paramString;
  }
  
  public void setValue(String paramString) {
    this.value = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\domain\InterAcao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */