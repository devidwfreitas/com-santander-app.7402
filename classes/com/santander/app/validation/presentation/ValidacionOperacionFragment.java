package com.santander.app.validation.presentation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.LayoutRes;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import ftz;
import fvu;
import hat;
import hav;
import mip;
import miq;
import mzv;
import nau;
import ndb;
import ndc;
import ndd;
import ndw;
import ndx;

public class ValidacionOperacionFragment extends Fragment implements ndb {
  private final String a = "ValidacionOperacionFragment";
  
  public nau b;
  
  public View c;
  
  public TextView d;
  
  protected TextView e;
  
  private Button f;
  
  private Button[] g;
  
  private ImageButton h;
  
  private EditText i;
  
  private TextView j;
  
  private int k;
  
  private mip l = (mip)miq.C();
  
  private ndw m;
  
  private int n = 0;
  
  private void a(Boolean paramBoolean) {
    Handler handler = new Handler();
    handler.postDelayed((Runnable)new ndd(this, handler, paramBoolean), 1000L);
  }
  
  @LayoutRes
  public int a() {
    return 2130969094;
  }
  
  public void a(@StringRes int paramInt) {
    hav.c((Activity)getActivity(), getString(paramInt));
  }
  
  public void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup) {
    this.c = paramLayoutInflater.inflate(a(), paramViewGroup, false);
    this.j = (TextView)this.c.findViewById(2131757583);
    this.f = (Button)this.c.findViewById(2131755277);
    this.g = new Button[5];
    this.g[0] = (Button)this.c.findViewById(2131755838);
    this.g[1] = (Button)this.c.findViewById(2131755839);
    this.g[2] = (Button)this.c.findViewById(2131755840);
    this.g[3] = (Button)this.c.findViewById(2131755842);
    this.g[4] = (Button)this.c.findViewById(2131755843);
    this.i = (EditText)this.c.findViewById(2131755836);
    this.h = (ImageButton)this.c.findViewById(2131755844);
    this.d = (TextView)this.c.findViewById(2131757584);
    this.e = (TextView)this.c.findViewById(2131755824);
    this.m.a();
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.h.setOnClickListener(paramOnClickListener);
  }
  
  public void a(ftz paramftz) {
    hat.d().a((Activity)getActivity(), (fvu)paramftz, true, false);
  }
  
  public void a(Integer paramInteger) {
    Intent intent = new Intent(getContext(), ValidacaoIdSantanderComprovanteActivity.class);
    if (paramInteger != null)
      intent.putExtra("content", paramInteger.toString()); 
    startActivity(intent);
  }
  
  public void a(String paramString) {
    this.d.setText(paramString);
  }
  
  public void a(boolean paramBoolean) {
    this.f.setEnabled(paramBoolean);
  }
  
  public void a(String[] paramArrayOfString) {
    this.g[0].setText(paramArrayOfString[1] + " ou " + paramArrayOfString[2]);
    this.g[1].setText(paramArrayOfString[3] + " ou " + paramArrayOfString[4]);
    this.g[2].setText(paramArrayOfString[5] + " ou " + paramArrayOfString[6]);
    this.g[3].setText(paramArrayOfString[7] + " ou " + paramArrayOfString[8]);
    this.g[4].setText(paramArrayOfString[9] + " ou " + paramArrayOfString[10]);
  }
  
  @LayoutRes
  public int b() {
    return 2130969096;
  }
  
  public void b(int paramInt) {
    this.k = paramInt;
  }
  
  public void b(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup) {
    this.c = paramLayoutInflater.inflate(b(), paramViewGroup, false);
    try {
      ((AppCompatActivity)getActivity()).getSupportActionBar().hide();
    } catch (Exception exception) {
      Log.v(getClass().getName(), exception.toString());
    } 
    PlayGifView playGifView = (PlayGifView)this.c.findViewById(2131755820);
    this.j = (TextView)this.c.findViewById(2131755821);
    playGifView.setGifResource(2130838875);
    this.j.setText((CharSequence)Html.fromHtml(getResources().getString(2131299054)));
    a(Boolean.valueOf(false));
  }
  
  public void b(View.OnClickListener paramOnClickListener) {
    this.f.setOnClickListener(paramOnClickListener);
  }
  
  public void b(String paramString) {
    this.e.setText(paramString);
  }
  
  public void c() {
    this.b.a(i(), false);
  }
  
  public void c(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup) {
    this.c = paramLayoutInflater.inflate(a(), paramViewGroup, false);
    this.f = (Button)this.c.findViewById(2131755277);
    this.g = new Button[5];
    this.g[0] = (Button)this.c.findViewById(2131755838);
    this.g[1] = (Button)this.c.findViewById(2131755839);
    this.g[2] = (Button)this.c.findViewById(2131755840);
    this.g[3] = (Button)this.c.findViewById(2131755842);
    this.g[4] = (Button)this.c.findViewById(2131755843);
    this.i = (EditText)this.c.findViewById(2131755836);
    this.h = (ImageButton)this.c.findViewById(2131755844);
    this.d = (TextView)this.c.findViewById(2131757584);
    this.e = (TextView)this.c.findViewById(2131755824);
    this.m.i();
  }
  
  public void c(View.OnClickListener paramOnClickListener) {
    this.g[0].setOnClickListener(paramOnClickListener);
    this.g[1].setOnClickListener(paramOnClickListener);
    this.g[2].setOnClickListener(paramOnClickListener);
    this.g[3].setOnClickListener(paramOnClickListener);
    this.g[4].setOnClickListener(paramOnClickListener);
  }
  
  public void c(String paramString) {
    this.i.setText(paramString);
  }
  
  public void d() {
    mzv.a(this.g);
  }
  
  public void d(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup) {
    this.c = paramLayoutInflater.inflate(b(), paramViewGroup, false);
    try {
      ((AppCompatActivity)getActivity()).getSupportActionBar().hide();
    } catch (Exception exception) {
      Log.v(getClass().getName(), exception.toString());
    } 
    PlayGifView playGifView = (PlayGifView)this.c.findViewById(2131755820);
    this.j = (TextView)this.c.findViewById(2131755821);
    playGifView.setGifResource(2130838875);
    this.j.setText((CharSequence)Html.fromHtml(getResources().getString(2131299054)));
    a(Boolean.valueOf(true));
  }
  
  public void e() {
    this.i.setBackgroundResource(2130838265);
  }
  
  public void f() {
    this.i.setBackgroundResource(2130838266);
  }
  
  public void g() {
    this.m.c((View.OnClickListener)new ndc(this));
  }
  
  public void h() {
    ((PlayGifView)this.c.findViewById(2131755820)).setGifResource(2130838881);
    ((TextView)this.c.findViewById(2131755821)).setText((CharSequence)Html.fromHtml(getResources().getString(2131299058)));
  }
  
  public int i() {
    return this.k;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    try {
      this.b = (nau)paramActivity;
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    this.m = (ndw)new ndx(this, this);
    this.m.a(paramLayoutInflater, paramViewGroup, this.l);
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\ValidacionOperacionFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */