package br.com.santander.dynamicauth.features.cso.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.cso.a.a;

public class CsoActivity extends AppCompatActivity {
  private a a = null;
  
  public void onBackPressed() {
    super.onBackPressed();
    if (this.a != null)
      this.a.a(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(R.layout.activity_cso);
    this.a = new a((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\cso\view\CsoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */