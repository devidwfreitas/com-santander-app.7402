package br.com.santander.msgsdk.configPanel.model;

import java.util.List;

public interface ProviderConfigPanelReceiverInterface {
  void getReceivedList(List<Category> paramList, Error paramError);
  
  void getResultUpdateStatus(Error paramError);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\ProviderConfigPanelReceiverInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */