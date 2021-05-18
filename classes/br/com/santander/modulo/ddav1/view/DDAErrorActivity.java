package br.com.santander.modulo.ddav1.view;

import adt;
import adw;
import aem;
import aen;
import aex;
import afe;
import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;

public class DDAErrorActivity extends AppCompatActivity {
  public static final String a = "titleError";
  
  public static final String b = "subtitleError";
  
  public static final String c = "deviceId";
  
  public static final String d = "cpf";
  
  private afe e;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(adt.activity_dda_error);
    aem.a(this, getString(adw.dda));
    aem.a(this);
    this.e = new afe((Activity)this);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    return aem.a(paramMenuItem, (aen)new aex(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\ddav1\view\DDAErrorActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */