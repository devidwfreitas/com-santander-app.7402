package br.com.santander.dynamicauth.features.idsantander.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.idsantander.a.a;

public class IdSantanderActivity extends AppCompatActivity {
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(R.layout.activity_id_santander);
    new a((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\idsantander\view\IdSantanderActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */