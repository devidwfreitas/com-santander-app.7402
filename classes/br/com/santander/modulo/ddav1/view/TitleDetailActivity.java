package br.com.santander.modulo.ddav1.view;

import adt;
import adw;
import aem;
import aen;
import afc;
import afg;
import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;

public class TitleDetailActivity extends AppCompatActivity {
  public static final String a = "title";
  
  private afg b;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(adt.activity_detail);
    aem.a(this, getString(adw.detalhes));
    aem.a(this);
    this.b = new afg((Activity)this);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    return aem.a(paramMenuItem, (aen)new afc(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\ddav1\view\TitleDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */