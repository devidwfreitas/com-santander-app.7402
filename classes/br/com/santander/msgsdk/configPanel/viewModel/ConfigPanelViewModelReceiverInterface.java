package br.com.santander.msgsdk.configPanel.viewModel;

import br.com.santander.msgsdk.configPanel.model.Category;
import java.util.List;

public interface ConfigPanelViewModelReceiverInterface {
  void getReceivedConfigList(List<Category> paramList, Error paramError);
  
  void getResultUpdateStatus(Error paramError);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\viewModel\ConfigPanelViewModelReceiverInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */