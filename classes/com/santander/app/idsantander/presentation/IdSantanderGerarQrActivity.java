package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import iut;
import iyw;
import iyx;
import jan;
import jao;
import java.io.Serializable;
import mxi;
import mym;

public class IdSantanderGerarQrActivity extends grs implements iyx {
  private jan a;
  
  private TextView b;
  
  private TextView c;
  
  private PlayGifView d;
  
  private RelativeLayout e;
  
  private LinearLayout f;
  
  private void a(Activity paramActivity) {
    Handler handler = new Handler();
    handler.postDelayed((Runnable)new iyw(this, (ActivityManager)paramActivity.getSystemService("activity"), handler), 2000L);
  }
  
  public void a(String paramString) {
    this.d.setGifResource(2130838876);
    this.b = (TextView)findViewById(2131755821);
    this.b.setText(getResources().getString(2131299026));
    this.c = (TextView)findViewById(2131755822);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298633)));
    d(paramString);
  }
  
  public void b(String paramString) {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.PROCESSO_INTERROMPIDO);
    intent.putExtra("content", "-1");
    startActivity(intent);
  }
  
  public void d(String paramString) {
    this.f = (LinearLayout)findViewById(2131755859);
    this.f.setGravity(17);
    this.f.removeAllViews();
    ImageView imageView = new ImageView((Context)this);
    imageView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(mxi.a(200, (Context)this), mxi.a(200, (Context)this)));
    imageView.setPadding(0, mxi.a(20, (Context)this), 0, mxi.a(20, (Context)this));
    imageView.setImageBitmap(mym.a(paramString));
    this.f.addView((View)imageView);
    this.f.setVisibility(0);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131755822);
    this.e = (RelativeLayout)findViewById(2131758198);
    this.e.setVisibility(8);
    this.d = (PlayGifView)findViewById(2131755820);
    this.a = (jan)new jao(this);
    this.a.a();
    a((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderGerarQrActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */