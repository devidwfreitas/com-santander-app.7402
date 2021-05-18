package com.santander.app.validation.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.components.view.zxing.CustomQrScannerActivity;
import evq;
import evr;
import gky;
import gpu;
import guq;
import java.util.ArrayList;
import java.util.Iterator;
import mxn;
import mzu;
import ncr;
import ncs;
import nct;
import ncu;
import ncv;
import ncw;
import ncx;
import ncy;
import nds;
import ndt;

public class LeituraQrCodeActivity extends AppCompatActivity implements ncy {
  public static final int a = 3;
  
  private static boolean l = false;
  
  private nds b;
  
  private PlayGifView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private Button h;
  
  private Button i;
  
  private LinearLayout j;
  
  private Dialog k;
  
  private LinearLayout a(Context paramContext, gky paramgky) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(5, 15, 0, 0);
    } else {
      linearLayout.setPadding(5, 15, 0, 0);
      linearLayout.setOrientation(0);
    } 
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView2 = new TextView(paramContext);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a((Context)this, 0));
    textView2.setGravity(3);
    textView2.setText(paramgky.b());
    textView2.setTextSize(12.0F);
    TextView textView1 = new TextView(paramContext);
    if (!paramgky.d())
      textView1.setPadding(5, 0, 0, 0); 
    textView1.setLayoutParams(layoutParams);
    textView1.setTypeface(mzu.a((Context)this, 1));
    textView1.setGravity(3);
    textView1.setText(paramgky.c());
    textView1.setTextSize(12.0F);
    linearLayout.addView((View)textView2);
    linearLayout.addView((View)textView1);
    return linearLayout;
  }
  
  private void a(boolean paramBoolean) {
    l = false;
    Intent intent = new Intent();
    intent.putExtra("showLogin", paramBoolean);
    setResult(3, intent);
    finish();
  }
  
  private void c() {
    evq evq = new evq((Activity)this);
    evq.b(false);
    evq.a(true);
    evq.a(CustomQrScannerActivity.class);
    evq.b(evq.d);
  }
  
  public void a() {
    l = true;
    this.f.setVisibility(8);
    this.g.setVisibility(0);
    this.g.setOnClickListener((View.OnClickListener)new ncr(this));
    this.c.setVisibility(0);
    this.c.setGifResource(2130838876);
    this.d.setText(2131299026);
    this.d.setVisibility(0);
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131298645)));
    this.e.setVisibility(0);
    this.h.setText(getResources().getString(2131296610));
    this.h.setVisibility(0);
    this.h.setOnClickListener((View.OnClickListener)new ncs(this));
    this.i.setVisibility(4);
    this.j.setVisibility(8);
    this.k.dismiss();
  }
  
  public void a(String paramString) {
    this.c.setVisibility(0);
    this.c.setGifResource(2130838873);
    this.g.setVisibility(8);
    this.d.setText(2131299038);
    this.d.setVisibility(0);
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131298629)));
    this.e.setVisibility(0);
    if (paramString != null) {
      this.f.setVisibility(0);
      this.f.setText(getResources().getString(2131297609).replace("%data%", paramString));
    } 
    this.h.setText(getResources().getString(2131297656));
    this.h.setVisibility(0);
    this.h.setOnClickListener((View.OnClickListener)new nct(this));
    this.i.setText((CharSequence)Html.fromHtml(getResources().getString(2131296615)));
    this.i.setVisibility(0);
    this.i.setOnClickListener((View.OnClickListener)new ncu(this));
    this.j.setVisibility(8);
  }
  
  public void a(String paramString, ArrayList<gky> paramArrayList) {
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.c.setVisibility(0);
    this.c.setGifResource(2130838859);
    this.d.setText(2131299039);
    this.d.setVisibility(0);
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131298632)));
    this.e.setVisibility(0);
    this.h.setText(getResources().getString(2131296668));
    this.h.setVisibility(0);
    this.h.setOnClickListener((View.OnClickListener)new ncx(this));
    this.i.setVisibility(4);
    View view = getLayoutInflater().inflate(2130969176, null);
    this.j.addView(view);
    this.j.setVisibility(0);
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131758193);
    linearLayout.setVisibility(0);
    ((TextView)findViewById(2131758194)).setText(paramString);
    if (paramArrayList != null) {
      Iterator<gky> iterator = paramArrayList.iterator();
      while (iterator.hasNext())
        linearLayout.addView((View)a((Context)this, iterator.next())); 
    } else {
      linearLayout.setVisibility(8);
    } 
  }
  
  public void b() {
    l = true;
    this.g.setVisibility(8);
    CustomQrScannerActivity.a = guq.TOKEN_IBPF;
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)this, "android.permission.CAMERA") != 0) {
        ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.CAMERA" }, 12);
      } else {
        c();
      } 
    } else {
      c();
    } 
    this.k.dismiss();
  }
  
  public void b(String paramString) {
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.c.setVisibility(0);
    this.c.setGifResource(2130838881);
    this.d.setText(2131299039);
    this.d.setVisibility(0);
    this.e.setText(2131298647);
    this.e.setVisibility(0);
    this.h.setText(getResources().getString(2131296665));
    this.h.setVisibility(0);
    this.h.setOnClickListener((View.OnClickListener)new ncv(this));
    this.i.setVisibility(4);
    View view = getLayoutInflater().inflate(2130969177, null);
    this.j.removeAllViews();
    this.j.addView(view);
    this.j.setVisibility(0);
    ((LinearLayout)view.findViewById(2131758196)).setVisibility(0);
    ((TextView)findViewById(2131758197)).setText(paramString);
  }
  
  public void c(String paramString) {
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.c.setVisibility(0);
    this.c.setGifResource(2130838859);
    this.d.setText(2131299039);
    this.d.setVisibility(0);
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131298634).replace("{titulo}", paramString)));
    this.e.setVisibility(0);
    this.h.setText(getResources().getString(2131296668));
    this.h.setVisibility(0);
    this.h.setOnClickListener((View.OnClickListener)new ncw(this));
    this.i.setVisibility(4);
    this.j.setVisibility(8);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    evr evr = evq.a(paramInt1, paramInt2, paramIntent);
    if (evr != null && evr.a() != null) {
      this.b.a(evr.a());
      return;
    } 
    a(false);
  }
  
  public void onBackPressed() {
    a(false);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.c = (PlayGifView)findViewById(2131755820);
    this.c.setVisibility(8);
    this.d = (TextView)findViewById(2131755821);
    this.d.setVisibility(8);
    this.e = (TextView)findViewById(2131755822);
    this.e.setVisibility(8);
    this.f = (TextView)findViewById(2131755864);
    this.f.setVisibility(8);
    this.h = (Button)findViewById(2131755855);
    this.h.setVisibility(8);
    this.i = (Button)findViewById(2131755858);
    this.i.setVisibility(8);
    this.j = (LinearLayout)findViewById(2131755859);
    this.j.setVisibility(8);
    this.g = (TextView)findViewById(2131755819);
    this.g.setVisibility(8);
    this.b = (nds)new ndt(this, (Activity)this);
    if (!l) {
      this.k = mxn.b((Activity)this);
      this.b.a();
    } 
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    if (paramInt == 12)
      c(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\LeituraQrCodeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */