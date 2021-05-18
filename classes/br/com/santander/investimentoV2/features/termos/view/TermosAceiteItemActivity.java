package br.com.santander.investimentoV2.features.termos.view;

import ack;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import eju;
import lc;
import xw;
import yf;

public class TermosAceiteItemActivity extends ack {
  private yf a;
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_termo_aceite_item);
    this.a = new yf(this, (xw)(new eju()).j().a(getIntent().getExtras().getString("model"), xw.class));
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    switch (paramInt) {
      default:
        return;
      case 1:
        break;
    } 
    if (paramArrayOfint.length > 0 && paramArrayOfint[0] == 0) {
      this.a.a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\termos\view\TermosAceiteItemActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */