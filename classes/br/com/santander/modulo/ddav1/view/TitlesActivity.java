package br.com.santander.modulo.ddav1.view;

import adt;
import adw;
import aem;
import aen;
import afd;
import afh;
import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;

public class TitlesActivity extends AppCompatActivity {
  private afh a;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(adt.activity_title);
    aem.a(this, getString(adw.dda));
    aem.a(this);
    this.a = new afh((Activity)this);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    return aem.a(paramMenuItem, (aen)new afd(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\ddav1\view\TitlesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */