package br.com.santander.dynamicauth.features.blink.view;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.blink.a.a;

public class BlinkActivity extends AppCompatActivity {
  private a a;
  
  public void onBackPressed() {
    this.a.a();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(R.layout.activity_blink);
    this.a = new a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\blink\view\BlinkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */