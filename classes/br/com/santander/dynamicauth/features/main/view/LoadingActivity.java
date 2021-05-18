package br.com.santander.dynamicauth.features.main.view;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.main.a.a;

public class LoadingActivity extends AppCompatActivity {
  private a a;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(R.layout.activity_loading);
    this.a = new a(this);
  }
  
  protected void onResume() {
    super.onResume();
    this.a.b();
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\main\view\LoadingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */