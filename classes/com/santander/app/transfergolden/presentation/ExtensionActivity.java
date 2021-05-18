package com.santander.app.transfergolden.presentation;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.MinhaConta;
import com.santander.app.homenaologada.presentation.HomeActivity;
import mss;
import mst;
import msu;
import msv;
import msw;
import msx;
import msy;
import msz;
import mta;
import mte;
import mti;
import mtr;
import mtu;
import mtx;
import mue;
import muh;
import mul;
import mum;
import mur;
import muu;
import muz;
import mva;
import mwm;
import mww;

public class ExtensionActivity extends AppCompatActivity implements msy, msz {
  private static final String a = "ExtensionActivity";
  
  private CardView b;
  
  private ImageButton c;
  
  private TextView d;
  
  private FrameLayout e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private TextView h;
  
  private TextView i;
  
  private Button j;
  
  private muz k;
  
  private boolean l = true;
  
  private Fragment m;
  
  private View.OnClickListener n = (View.OnClickListener)new msu(this);
  
  private <T extends Fragment> Fragment a(Class<T> paramClass) {
    return a(paramClass, (Bundle)null);
  }
  
  private <T extends Fragment> Fragment a(Class<T> paramClass, Bundle paramBundle) {
    String str = paramClass.getSimpleName();
    try {
      Fragment fragment = (Fragment)paramClass.newInstance();
      try {
        fragment.setArguments(paramBundle);
        FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
        this.m = fragment;
        fragmentTransaction.replace(2131759564, fragment, str).addToBackStack(null).commit();
        return fragment;
      } catch (Exception null) {}
    } catch (Exception exception) {
      paramClass = null;
    } 
    Log.e("ExtensionActivity", "inflateFragment", exception);
    p();
    return (Fragment)paramClass;
  }
  
  public static void a(Context paramContext, String paramString) {
    if (MinhaConta.b() == null)
      MinhaConta.a(paramContext); 
    MinhaConta.b(true);
    Intent intent = new Intent(paramContext, ExtensionActivity.class);
    intent.putExtra("EXTRA_CLIPBOARD_TEXT", paramString);
    intent.addFlags(335642624);
    paramContext.startActivity(intent);
  }
  
  private void p() {
    super.finish();
  }
  
  public void a() {
    AlertDialog alertDialog = (new AlertDialog.Builder((Context)this)).setView(getLayoutInflater().inflate(2130969211, null)).setPositiveButton(2131296657, (DialogInterface.OnClickListener)new msv(this)).setCancelable(false).create();
    alertDialog.setOnShowListener((DialogInterface.OnShowListener)new msw(this, alertDialog));
    alertDialog.show();
  }
  
  public void a(int paramInt) {
    this.k.d();
    Bundle bundle = new Bundle();
    bundle.putInt("EXTRA_TRANSFER_STEP", paramInt);
    a(mul.class, bundle);
  }
  
  public void a(String paramString) {
    this.e.setVisibility(8);
    if (!TextUtils.isEmpty(paramString)) {
      this.f.setVisibility(0);
      this.i.setText(paramString);
    } 
  }
  
  public void a(String paramString, Runnable paramRunnable) {
    byte b = 0;
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = getString(2131297343); 
    a(true);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.g.setVisibility(0);
    this.h.setText(str);
    Button button = this.j;
    if (paramRunnable == null)
      b = 4; 
    button.setVisibility(b);
    this.j.setOnClickListener((View.OnClickListener)new msx(this, paramRunnable));
  }
  
  public void a(String paramString, boolean paramBoolean) {
    this.d.setText(2131299169);
    Bundle bundle = new Bundle();
    bundle.putString("EXTRA_MESSAGE", paramString);
    bundle.putBoolean("EXTRA_SENHA_CANCELADA", paramBoolean);
    a(mue.class, bundle);
  }
  
  public void a(boolean paramBoolean) {
    this.l = paramBoolean;
    if (paramBoolean) {
      this.c.setVisibility(0);
      return;
    } 
    this.c.setVisibility(4);
  }
  
  public void b() {
    Intent intent = new Intent((Context)this, HomeActivity.class);
    intent.addFlags(335577088);
    startActivity(intent);
  }
  
  public void b(@mww int paramInt) {
    this.k.d();
    Bundle bundle = new Bundle();
    bundle.putInt("EXTRA_STEP_TRANSACAO", paramInt);
    a(mum.class, bundle);
  }
  
  public void b(String paramString) {
    this.k.d();
    Bundle bundle = new Bundle();
    bundle.putString("EXTRA_MESSAGE", paramString);
    a(mti.class, bundle);
  }
  
  public void b(boolean paramBoolean) {
    this.k.a(paramBoolean);
  }
  
  public String c() {
    return getIntent().getStringExtra("EXTRA_CLIPBOARD_TEXT");
  }
  
  public void c(boolean paramBoolean) {
    this.d.setText(2131299169);
    Bundle bundle = new Bundle();
    bundle.putBoolean("EXTRA_USE_FINGERPRINT", paramBoolean);
    a(mtx.class, bundle);
  }
  
  public void d() {
    e();
    getSupportFragmentManager().popBackStack();
  }
  
  public void e() {
    this.e.setVisibility(0);
    this.f.setVisibility(8);
  }
  
  public void f() {
    this.e.setVisibility(0);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
  }
  
  public void finish() {
    mwm.c();
    if (this.l)
      p(); 
  }
  
  public void g() {
    this.d.setText(2131299172);
    a(mtr.class);
  }
  
  public void h() {
    this.k.d();
    a(mta.class);
  }
  
  public void i() {
    this.k.d();
    a(mte.class);
  }
  
  public void j() {
    b(true);
  }
  
  public void k() {
    this.d.setText(2131299169);
    Bundle bundle = new Bundle();
    bundle.putInt("EXTRA_MESSAGE", 2131299162);
    a(muh.class, bundle);
  }
  
  public void l() {
    this.d.setText(2131299169);
    a(mtu.class);
  }
  
  public void m() {
    this.d.setText(2131299169);
    Bundle bundle = new Bundle();
    bundle.putInt("EXTRA_MESSAGE", 2131299161);
    a(muh.class, bundle);
  }
  
  public void n() {
    this.k.d();
    a(mur.class);
  }
  
  public void o() {
    this.k.d();
    a(muu.class);
  }
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969507);
    this.b = (CardView)findViewById(2131756175);
    this.c = (ImageButton)findViewById(2131759563);
    this.d = (TextView)findViewById(2131755597);
    this.e = (FrameLayout)findViewById(2131759564);
    this.f = (LinearLayout)findViewById(2131755112);
    this.i = (TextView)findViewById(2131759605);
    this.g = (LinearLayout)findViewById(2131759602);
    this.h = (TextView)findViewById(2131759603);
    this.j = (Button)findViewById(2131759604);
    this.c.setOnClickListener(this.n);
    this.k = (muz)new mva(this);
    this.k.a(getIntent());
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.k.c();
  }
  
  protected void onPause() {
    super.onPause();
    (new Handler()).postDelayed((Runnable)new mss(this), 1000L);
  }
  
  protected void onStop() {
    super.onStop();
    (new Handler()).postDelayed((Runnable)new mst(this), 1000L);
  }
  
  public void setTitle(int paramInt) {
    this.d.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.d.setText(paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transfergolden\presentation\ExtensionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */