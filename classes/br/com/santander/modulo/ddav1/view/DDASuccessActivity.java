package br.com.santander.modulo.ddav1.view;

import adt;
import adw;
import aem;
import aff;
import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

public class DDASuccessActivity extends AppCompatActivity {
  private aff a;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(adt.activity_dda_success);
    aem.a(this, getString(adw.dda));
    this.a = new aff((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\ddav1\view\DDASuccessActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */