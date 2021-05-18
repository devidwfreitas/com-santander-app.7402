package com.santander.app.idsantander.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.widget.Indicator;
import grs;
import izs;
import izt;
import izu;
import izv;
import jab;
import java.util.Arrays;

public class IdSantanderTutorialCapturaQrCodeActivity extends grs implements izv {
  private TextView a;
  
  private Indicator b;
  
  private ViewPager c;
  
  private Button d;
  
  private Integer[] e = new Integer[] { Integer.valueOf(2130839151), Integer.valueOf(2130839152), Integer.valueOf(2130839153), Integer.valueOf(2130839154) };
  
  private void a() {
    setResult(0);
    finish();
  }
  
  private void a(int paramInt) {
    this.b.setSelected(paramInt);
    Button button = this.d;
    if (paramInt == this.e.length - 1) {
      paramInt = 0;
    } else {
      paramInt = 8;
    } 
    button.setVisibility(paramInt);
  }
  
  private void close() {
    setResult(-1);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968694);
    this.a = (TextView)findViewById(2131755819);
    this.a.setOnClickListener((View.OnClickListener)new izs(this));
    this.b = (Indicator)findViewById(2131755861);
    this.b.setSize(4);
    this.d = (Button)findViewById(2131755855);
    this.d.setText(getResources().getString(2131296666));
    this.d.setOnClickListener((View.OnClickListener)new izt(this));
    this.c = (ViewPager)findViewById(2131755860);
    this.c.setAdapter((PagerAdapter)new jab((Context)this, Arrays.asList(this.e)));
    this.c.addOnPageChangeListener((ViewPager.OnPageChangeListener)new izu(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderTutorialCapturaQrCodeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */