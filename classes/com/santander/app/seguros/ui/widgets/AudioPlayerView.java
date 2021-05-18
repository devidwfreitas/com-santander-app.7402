package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.v7.widget.AppCompatSeekBar;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;
import maz;
import mba;
import mbb;
import mbc;

public class AudioPlayerView extends FrameLayout {
  private mbc a;
  
  private ImageButton b;
  
  private ImageButton c;
  
  private AppCompatSeekBar d;
  
  private TextView e;
  
  public AudioPlayerView(Context paramContext) {
    super(paramContext);
    d();
  }
  
  public AudioPlayerView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  private void d() {
    LayoutInflater.from(getContext()).inflate(2130968806, (ViewGroup)this);
    e();
  }
  
  private void e() {
    this.b = (ImageButton)findViewById(2131756262);
    this.c = (ImageButton)findViewById(2131756263);
    this.d = (AppCompatSeekBar)findViewById(2131756264);
    this.e = (TextView)findViewById(2131756265);
    c();
  }
  
  public AppCompatSeekBar a() {
    return this.d;
  }
  
  public TextView b() {
    return this.e;
  }
  
  public void c() {
    this.b.setOnClickListener((View.OnClickListener)new maz(this));
    this.c.setOnClickListener((View.OnClickListener)new mba(this));
    this.d.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener)new mbb(this));
  }
  
  public void setImageButtonPlay(int paramInt) {
    this.b.setImageResource(paramInt);
  }
  
  public void setListener(mbc parammbc) {
    this.a = parammbc;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\AudioPlayerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */