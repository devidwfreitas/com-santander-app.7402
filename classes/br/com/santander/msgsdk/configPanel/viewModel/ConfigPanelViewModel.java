package br.com.santander.msgsdk.configPanel.viewModel;

import android.util.Log;
import br.com.santander.msgsdk.configPanel.model.Category;
import br.com.santander.msgsdk.configPanel.model.ProviderConfigPanel;
import br.com.santander.msgsdk.configPanel.model.ProviderConfigPanelReceiverInterface;
import java.util.List;

public class ConfigPanelViewModel implements ProviderConfigPanelReceiverInterface, ConfigPanelViewModelInterface {
  private String TAG_LOG = ConfigPanelViewModel.class.getName();
  
  private List<Category> categoryList;
  
  private ConfigPanelViewModelReceiverInterface configPanelViewModelReceiverInterface;
  
  private ProviderConfigPanel providerConfigPanel = new ProviderConfigPanel(this);
  
  public ConfigPanelViewModel(ConfigPanelViewModelReceiverInterface paramConfigPanelViewModelReceiverInterface) {
    this.configPanelViewModelReceiverInterface = paramConfigPanelViewModelReceiverInterface;
  }
  
  public void getConfigPanelList() {
    this.providerConfigPanel.requestConfigList();
  }
  
  public void getReceivedList(List<Category> paramList, Error paramError) {
    this.categoryList = paramList;
    if (paramError != null) {
      this.configPanelViewModelReceiverInterface.getReceivedConfigList(null, paramError);
      return;
    } 
    this.configPanelViewModelReceiverInterface.getReceivedConfigList(this.categoryList, null);
  }
  
  public void getResultUpdateStatus(Error paramError) {
    this.configPanelViewModelReceiverInterface.getResultUpdateStatus(paramError);
  }
  
  public void setStatus(Category paramCategory) {
    Log.d(this.TAG_LOG, "setStatus: " + paramCategory.isMembershipStatus());
    this.providerConfigPanel.sendUpdateStatusCategory(paramCategory);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\viewModel\ConfigPanelViewModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */