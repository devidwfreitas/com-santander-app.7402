package br.com.santander.dynamicauth.features.sms.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.sms.viewmodel.SmsViewModel;

public class SmsActivity extends AppCompatActivity {
  private SmsViewModel a;
  
  public void onBackPressed() {
    super.onBackPressed();
    if (this.a != null)
      this.a.b(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(R.layout.activity_sms);
    this.a = new SmsViewModel((Activity)this);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    if (paramInt == 0 && paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0)
      this.a.a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\sms\view\SmsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */