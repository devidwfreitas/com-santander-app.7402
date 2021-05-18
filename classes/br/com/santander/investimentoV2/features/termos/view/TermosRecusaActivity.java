package br.com.santander.investimentoV2.features.termos.view;

import ack;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import lc;
import ym;

@Deprecated
public class TermosRecusaActivity extends ack {
  ym a;
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    String str1 = getIntent().getExtras().getString("title");
    String str2 = getIntent().getExtras().getString("message");
    setContentView(lc.activity_termo_recusa);
    this.a = new ym(this, str1, str2);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\termos\view\TermosRecusaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */