package br.com.santander.msgsdk.notifications.viewModel;

import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import java.util.List;

public interface NotificationViewModelReceiverInterface {
  void getNotificationsResult(List<NotificationDetail> paramList, Error paramError);
  
  void updateStatusDeleteResult(int paramInt, Error paramError);
  
  void updateStatusReadResult(int paramInt, Error paramError);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\viewModel\NotificationViewModelReceiverInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */