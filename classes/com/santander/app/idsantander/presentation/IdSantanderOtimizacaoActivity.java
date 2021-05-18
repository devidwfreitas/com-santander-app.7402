package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import iut;
import izp;
import java.io.Serializable;
import jay;
import jaz;

public class IdSantanderOtimizacaoActivity extends grs implements izp {
  public static final int a = 1231;
  
  private PlayGifView b;
  
  private TextView c;
  
  private TextView d;
  
  private jay e;
  
  public void a(String paramString) {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.OTIMIZACAO);
    intent.putExtra("content", paramString.toString());
    startActivityForResult(intent, 1231);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1231) {
      if (paramInt2 == -1) {
        setResult(-1, new Intent());
        finish();
        return;
      } 
    } else {
      return;
    } 
    setResult(0, new Intent());
    finish();
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.b = (PlayGifView)findViewById(2131755820);
    this.b.setGifResource(2130838879);
    this.c = (TextView)findViewById(2131755821);
    this.c.setVisibility(0);
    this.c.setText(2131299027);
    this.d = (TextView)findViewById(2131755822);
    this.d.setVisibility(0);
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298640)));
    this.e = (jay)new jaz(this, (Activity)this);
    this.e.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderOtimizacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */