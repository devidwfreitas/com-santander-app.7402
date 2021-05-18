package com.santander.app.validation.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import miq;
import nbv;
import nbw;
import nbx;
import nby;
import nbz;
import nde;
import ndg;
import ndm;
import ndn;

public class IdSantanderTokenCentralAtendimentoActivity extends grs implements nbz {
  public static final int a = 4;
  
  private ndm b;
  
  private RecyclerView c;
  
  private CountDownTimer d;
  
  private void a(boolean paramBoolean) {
    Intent intent = new Intent();
    intent.putExtra("showLogin", paramBoolean);
    setResult(4, intent);
    finish();
  }
  
  private void c() {
    findViewById(2131755864).setVisibility(8);
    findViewById(2131755855).setVisibility(8);
    findViewById(2131755819).setVisibility(8);
  }
  
  public void a() {
    for (int i = 0; i < this.c.getAdapter().getItemCount(); i++) {
      (this.c.findViewHolderForAdapterPosition(i)).itemView.findViewById(2131756161).setVisibility(8);
      ((ImageView)(this.c.findViewHolderForLayoutPosition(i)).itemView.findViewById(2131756160)).setImageResource(2130838791);
    } 
  }
  
  public void a(View paramView, int paramInt, String paramString, long paramLong) {
    ((TextView)paramView.findViewById(2131756162)).setText(paramString);
    ProgressBar progressBar = (ProgressBar)paramView.findViewById(2131756163);
    progressBar.setProgress(Integer.valueOf(String.valueOf(paramLong / 1000L)).intValue());
    this.d = (CountDownTimer)new nbx(this, paramLong, 1000L, progressBar);
    this.d.start();
  }
  
  public void b() {
    this.c.postDelayed((Runnable)new nby(this), 100L);
  }
  
  public void hideTokenContainer(View paramView) {
    paramView.findViewById(2131756161).setVisibility(8);
    ((ImageView)paramView.findViewById(2131756160)).setImageResource(2130838791);
  }
  
  public void onBackPressed() {
    a(false);
  }
  
  protected void onCreate(Bundle paramBundle) {
    String str;
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.b = (ndm)new ndn((Context)this, this);
    PlayGifView playGifView = (PlayGifView)findViewById(2131755820);
    playGifView.setGifResource(2130838876);
    playGifView.setVisibility(0);
    TextView textView1 = (TextView)findViewById(2131755821);
    textView1.setText(2131299026);
    textView1.setVisibility(0);
    TextView textView2 = (TextView)findViewById(2131755822);
    if (miq.C().f().k() == null) {
      str = getResources().getString(2131298614);
    } else {
      str = getResources().getString(2131298615);
    } 
    textView2.setText(str);
    textView2.setVisibility(0);
    Button button = (Button)findViewById(2131755858);
    if (miq.C().f().k() == null) {
      button.setText((CharSequence)Html.fromHtml(getResources().getString(2131296620)));
      button.setOnClickListener((View.OnClickListener)new nbv(this));
      button.setVisibility(0);
    } else {
      button.setVisibility(4);
    } 
    LinearLayout linearLayout = (LinearLayout)findViewById(2131755859);
    linearLayout.addView(getLayoutInflater().inflate(2130969173, null));
    linearLayout.setVisibility(0);
    c();
    this.c = (RecyclerView)findViewById(2131758186);
    this.c.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.c.setAdapter((RecyclerView.Adapter)this.b.a());
    ((nde)this.c.getAdapter()).a((ndg)new nbw(this));
  }
  
  protected void onResume() {
    super.onResume();
    this.b.b();
  }
  
  public void showTokenContainer(View paramView) {
    paramView.findViewById(2131756161).setVisibility(0);
    ((ImageView)paramView.findViewById(2131756160)).setImageResource(2130838795);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\IdSantanderTokenCentralAtendimentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */