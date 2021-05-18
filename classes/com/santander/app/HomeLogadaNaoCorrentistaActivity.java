package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.util.Base64;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.faturas.activity.FaturasActivity;
import com.santander.app.widget.Carrossel;
import fib;
import fic;
import fid;
import fie;
import fif;
import fig;
import fih;
import fom;
import fon;
import gpu;
import grs;
import hau;
import java.text.SimpleDateFormat;
import java.util.Date;
import mxn;
import myg;
import myh;
import mym;
import mzq;
import mzr;
import nez;

public class HomeLogadaNaoCorrentistaActivity extends grs {
  private static HomeLogadaNaoCorrentistaActivity c;
  
  private static String y;
  
  public Dialog a = null;
  
  private final String b = "HomeLogadaNaoCorrentistaActivity";
  
  private RelativeLayout d;
  
  private Carrossel e;
  
  private TextView f;
  
  private View g;
  
  private Boolean w = Boolean.valueOf(true);
  
  private String x;
  
  private ProgressBar z;
  
  private void b(String paramString) {
    (new fid(this, paramString, getSharedPreferences("banner" + paramString, 0).getLong("dataAtualizacao", 0L), getSharedPreferences("banner" + paramString, 0).getLong("dataAtualizacaoDefault", 0L))).c((Object[])new Void[0]);
  }
  
  private void d() {
    SharedPreferences sharedPreferences = getSharedPreferences("homeLogadaWidget", 0);
    if (getResources().getBoolean(2131492870))
      this.w = Boolean.valueOf(sharedPreferences.getBoolean("isShowingCartoes", true)); 
    Date date = new Date();
    this.x = (new SimpleDateFormat("dd/MM/yyyy, HH:mm")).format(date);
  }
  
  private boolean d(String paramString) {
    long l1;
    long l2;
    long l3;
    String str;
    try {
      SharedPreferences sharedPreferences = getSharedPreferences("banner" + paramString, 0);
      l1 = (new Date()).getTime();
      l2 = sharedPreferences.getLong("dataInicioVigencia", 0L);
      l3 = sharedPreferences.getLong("dataFimVigencia", 0L);
      str = sharedPreferences.getString("imagem", "");
      if (str.isEmpty())
        return false; 
    } catch (Exception exception) {
      Log.e("HomeLogadaNCorActivity", exception.getMessage(), exception);
      return false;
    } 
    if (l1 < l2 || l1 > l3)
      return false; 
    byte[] arrayOfByte = Base64.decode(str, 0);
    Bitmap bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
    ImageView imageView = (ImageView)findViewById(2131759063);
    imageView.setImageBitmap(bitmap);
    y = exception.getString("link", "");
    if (!y.isEmpty())
      imageView.setOnClickListener((View.OnClickListener)new fif(this)); 
    CaMDOProgressBar.setVisibility((ProgressBar)findViewById(2131759064), 8);
    imageView.setVisibility(0);
    return true;
  }
  
  private void e() {
    SharedPreferences.Editor editor = getSharedPreferences("homeLogadaWidget", 0).edit();
    editor.putBoolean("isShowingCartoes", this.w.booleanValue());
    editor.commit();
  }
  
  private static void e(String paramString) {
    Dialog dialog = new Dialog((Context)c, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Confirmar");
    fig fig = new fig(dialog);
    button1.setText("Cancelar");
    fih fih = new fih(dialog);
    mxn.a((Activity)c, dialog, "Atenção", paramString, (View.OnClickListener)fig, (View.OnClickListener)fih);
  }
  
  private void f() {
    this.e = (Carrossel)findViewById(2131759072);
    this.f = (TextView)findViewById(2131759065);
    this.g = findViewById(2131759066);
    String str = getResources().getString(2131296977) + " (0)";
    this.f.setText(str);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    findViewById(2131759071).setVisibility(8);
    findViewById(2131759070).setVisibility(8);
    findViewById(2131759067).setVisibility(8);
    if (this.v.f().i().equals("SE"))
      findViewById(2131759067).setBackgroundColor(-3356986); 
  }
  
  private void g() {
    boolean bool = false;
    if (this.v.f().s().d() != null && this.v.f().s().d().size() > 0) {
      if (getResources().getBoolean(2131492870))
        findViewById(2131759067).setVisibility(0); 
      this.f.setVisibility(0);
      this.g.setVisibility(0);
      if (!this.w.booleanValue())
        bool = true; 
      this.w = Boolean.valueOf(bool);
      openCartoes((View)null);
      String str = getResources().getString(2131296977) + " (" + this.v.f().s().d().size() + ")";
      this.f.setText(str);
      fon fon = new fon((Context)this, this.v.f().s().d());
      this.e.setListener((nez)new fic(this));
      this.e.setAdapter((fom)fon);
      return;
    } 
    findViewById(2131759071).setVisibility(8);
    findViewById(2131759070).setVisibility(8);
    findViewById(2131759067).setVisibility(8);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
  }
  
  public void a() {
    mzq.a((Activity)this, false);
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)this);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new fie(this, dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298893)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void a(int paramInt) {
    Intent intent = new Intent((Context)this, FaturasActivity.class);
    intent.putExtra("indexCartao", paramInt);
    startActivity(intent);
  }
  
  public void onBackPressed() {
    this.a = mxn.a((Activity)c);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.v.e(true);
    setContentView(2130969361);
    d();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, null);
    c = this;
    this.d = (RelativeLayout)findViewById(2131758166);
    this.d.setOnClickListener((View.OnClickListener)new fib(this));
    gpu.a(mym.a((Context)this, this.v.f().k()));
    c = this;
    f();
    g();
    if (this.v.c()) {
      switch (mzr.d()) {
        default:
          b("NC0");
          b("NC1");
          return;
        case 2:
        case 5:
          actionBar.setBackgroundDrawable(getResources().getDrawable(2130839159));
        case 3:
          actionBar.setBackgroundDrawable(getResources().getDrawable(2130839040));
        case 4:
          break;
      } 
      actionBar.setBackgroundDrawable(getResources().getDrawable(2130839156));
    } 
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886092, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy() {
    SharedPreferences.Editor editor = getSharedPreferences("homeLogadaWidget", 0).edit();
    editor.putString("lastConecctionDate", this.x);
    editor.commit();
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    mxn.a((Activity)this);
    return true;
  }
  
  protected void onPause() {
    hau.a().a(null);
    super.onPause();
  }
  
  protected void onResume() {
    super.onResume();
    hau.a().a((Activity)this);
  }
  
  public void openCartoes(View paramView) {
    boolean bool;
    if (this.w.booleanValue()) {
      hau.a().b(false);
      ((ImageView)findViewById(2131759068)).setVisibility(0);
      ((ImageView)findViewById(2131759069)).setVisibility(8);
      findViewById(2131759071).setVisibility(8);
      findViewById(2131759070).setVisibility(0);
    } else if (this.v.f().s().d() != null && this.v.f().s().d().size() > 0) {
      hau.a().b(true);
      ((ImageView)findViewById(2131759068)).setVisibility(8);
      ((ImageView)findViewById(2131759069)).setVisibility(0);
      findViewById(2131759071).setVisibility(0);
      findViewById(2131759070).setVisibility(8);
    } 
    if (!this.w.booleanValue()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.w = Boolean.valueOf(bool);
    e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\HomeLogadaNaoCorrentistaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */