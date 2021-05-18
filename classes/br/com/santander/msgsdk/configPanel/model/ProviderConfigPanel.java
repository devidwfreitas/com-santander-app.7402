package br.com.santander.msgsdk.configPanel.model;

import br.com.santander.msgsdk.MSGSDK;
import java.util.ArrayList;
import java.util.List;

public class ProviderConfigPanel implements ProviderConfigPanelInterface {
  private static final String TAG = ProviderConfigPanel.class.getName();
  
  private Category category = new Category();
  
  private List<Category> categoryList = new ArrayList<Category>();
  
  private ProviderConfigPanelReceiverInterface providerConfigPanelReceiverInterface;
  
  public ProviderConfigPanel(ProviderConfigPanelReceiverInterface paramProviderConfigPanelReceiverInterface) {
    this.providerConfigPanelReceiverInterface = paramProviderConfigPanelReceiverInterface;
  }
  
  public void requestConfigList() {
    MSGSDK.getInstance().requestConfigPanel(MSGSDK.getInstance().getAppId(), new ProviderConfigPanel$1(this));
  }
  
  public void sendUpdateStatusCategory(Category paramCategory) {
    MSGSDK.getInstance().requestConfigPanelUpdate(MSGSDK.getInstance().getAppId(), paramCategory, new ProviderConfigPanel$2(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\ProviderConfigPanel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */