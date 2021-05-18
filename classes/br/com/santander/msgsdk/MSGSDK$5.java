package br.com.santander.msgsdk;

import br.com.santander.msgsdk.entities.ListInbox;
import ejm;
import ih;
import is;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

class MSGSDK$5 implements ih {
  public void onFailure(is paramis) {
    callbackOfflineMessage.onError(paramis.b());
  }
  
  public void onSuccess(is paramis) {
    ejm ejm = new ejm();
    ArrayList arrayList = new ArrayList();
    try {
      Type type = (new MSGSDK$5$1(this)).getType();
      List<ListInbox> list = (List)ejm.a(String.valueOf(paramis.c().getJSONArray("data")), type);
      try {
        callbackOfflineMessage.onSuccess(list);
        return;
      } catch (JSONException jSONException2) {}
    } catch (JSONException jSONException1) {
      jSONException1 = jSONException2;
    } 
    callbackOfflineMessage.onSuccess((List<ListInbox>)jSONException1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */