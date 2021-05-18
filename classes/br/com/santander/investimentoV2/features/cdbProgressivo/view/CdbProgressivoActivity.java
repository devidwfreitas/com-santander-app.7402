package br.com.santander.investimentoV2.features.cdbProgressivo.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import nl;

public class CdbProgressivoActivity extends ack {
  nl a;
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_aplicar_cdb_progressivo_termos);
    this.a = new nl(this);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    switch (paramInt) {
      default:
        return;
      case 99:
        break;
    } 
    if (paramArrayOfint.length > 0 && paramArrayOfint[0] == 0) {
      this.a.a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\cdbProgressivo\view\CdbProgressivoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */