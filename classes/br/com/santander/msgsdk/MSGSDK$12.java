package br.com.santander.msgsdk;

import ih;
import is;

class MSGSDK$12 implements ih {
  public void onFailure(is paramis) {
    callbackUpdateStatusReadOrDelete.onError(paramis);
  }
  
  public void onSuccess(is paramis) {
    callbackUpdateStatusReadOrDelete.onSuccess(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$12.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */