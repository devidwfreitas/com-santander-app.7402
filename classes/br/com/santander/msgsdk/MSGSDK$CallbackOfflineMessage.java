package br.com.santander.msgsdk;

import br.com.santander.msgsdk.entities.ListInbox;
import java.util.List;

public interface MSGSDK$CallbackOfflineMessage {
  void onError(String paramString);
  
  void onSuccess(List<ListInbox> paramList);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$CallbackOfflineMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */