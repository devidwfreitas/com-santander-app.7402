package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import bgy;
import bhp;
import bhv;
import bim;
import bit;
import biz;
import bju;
import bjw;
import bjx;
import bjy;
import bla;
import bmo;
import bqv;
import bqx;
import bro;
import brp;
import brq;
import brr;
import brs;
import brt;
import bru;
import bsl;
import com.ca.android.app.CaMDOProgressBar;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.GraphRequest;
import java.util.Date;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class DeviceAuthDialog extends DialogFragment {
  private static final String a = "device/login";
  
  private static final String b = "device/login_status";
  
  private static final String c = "request_state";
  
  private static final int d = 1349172;
  
  private static final int e = 1349173;
  
  private static final int f = 1349174;
  
  private static final int g = 1349152;
  
  private ProgressBar h;
  
  private TextView i;
  
  private DeviceAuthMethodHandler j;
  
  private AtomicBoolean k = new AtomicBoolean();
  
  private volatile bit l;
  
  private volatile ScheduledFuture m;
  
  private volatile DeviceAuthDialog$RequestState n;
  
  private Dialog o;
  
  private boolean p = false;
  
  private boolean q = false;
  
  private LoginClient$Request r = null;
  
  private View a(boolean paramBoolean) {
    LayoutInflater layoutInflater = getActivity().getLayoutInflater();
    if (paramBoolean) {
      view = layoutInflater.inflate(bjw.com_facebook_smart_device_dialog_fragment, null);
      this.h = (ProgressBar)view.findViewById(bju.progress_bar);
      this.i = (TextView)view.findViewById(bju.confirmation_code);
      ((Button)view.findViewById(bju.cancel_button)).setOnClickListener((View.OnClickListener)new brp(this));
      ((TextView)view.findViewById(bju.com_facebook_device_auth_instructions)).setText((CharSequence)Html.fromHtml(getString(bjx.com_facebook_device_auth_instructions)));
      return view;
    } 
    View view = view.inflate(bjw.com_facebook_device_auth_dialog_fragment, null);
    this.h = (ProgressBar)view.findViewById(bju.progress_bar);
    this.i = (TextView)view.findViewById(bju.confirmation_code);
    ((Button)view.findViewById(bju.cancel_button)).setOnClickListener((View.OnClickListener)new brp(this));
    ((TextView)view.findViewById(bju.com_facebook_device_auth_instructions)).setText((CharSequence)Html.fromHtml(getString(bjx.com_facebook_device_auth_instructions)));
    return view;
  }
  
  private void a() {
    this.n.b((new Date()).getTime());
    this.l = c().n();
  }
  
  private void a(bhp parambhp) {
    if (!this.k.compareAndSet(false, true))
      return; 
    if (this.n != null)
      bmo.b(this.n.a()); 
    this.j.a((Exception)parambhp);
    this.o.dismiss();
  }
  
  private void a(DeviceAuthDialog$RequestState paramDeviceAuthDialog$RequestState) {
    this.n = paramDeviceAuthDialog$RequestState;
    this.i.setText(paramDeviceAuthDialog$RequestState.a());
    this.i.setVisibility(0);
    CaMDOProgressBar.setVisibility(this.h, 8);
    if (!this.q && bmo.a(paramDeviceAuthDialog$RequestState.a()))
      bla.c(getContext()).a("fb_smart_login_service", null, null); 
    if (paramDeviceAuthDialog$RequestState.d()) {
      b();
      return;
    } 
    a();
  }
  
  private void a(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("fields", "id,permissions,name");
    (new GraphRequest(new AccessToken(paramString, bhv.l(), "0", null, null, null, null, null), "me", bundle, biz.GET, (bim)new bru(this, paramString))).n();
  }
  
  private void a(String paramString1, bqv parambqv, String paramString2) {
    this.j.a(paramString2, bhv.l(), paramString1, parambqv.a(), parambqv.b(), bgy.DEVICE_AUTH, null, null);
    this.o.dismiss();
  }
  
  private void a(String paramString1, bqv parambqv, String paramString2, String paramString3) {
    String str1 = getResources().getString(bjx.com_facebook_smart_login_confirmation_title);
    String str3 = getResources().getString(bjx.com_facebook_smart_login_confirmation_continue_as);
    String str2 = getResources().getString(bjx.com_facebook_smart_login_confirmation_cancel);
    paramString3 = String.format(str3, new Object[] { paramString3 });
    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
    builder.setMessage(str1).setCancelable(true).setNegativeButton(paramString3, (DialogInterface.OnClickListener)new brt(this, paramString1, parambqv, paramString2)).setPositiveButton(str2, (DialogInterface.OnClickListener)new brs(this));
    builder.create().show();
  }
  
  private void b() {
    this.m = DeviceAuthMethodHandler.c().schedule((Runnable)new brq(this), this.n.c(), TimeUnit.SECONDS);
  }
  
  private GraphRequest c() {
    Bundle bundle = new Bundle();
    bundle.putString("code", this.n.b());
    return new GraphRequest(null, "device/login_status", bundle, biz.POST, (bim)new brr(this));
  }
  
  private void d() {
    if (!this.k.compareAndSet(false, true))
      return; 
    if (this.n != null)
      bmo.b(this.n.a()); 
    if (this.j != null)
      this.j.c_(); 
    this.o.dismiss();
  }
  
  public void a(LoginClient$Request paramLoginClient$Request) {
    this.r = paramLoginClient$Request;
    Bundle bundle = new Bundle();
    bundle.putString("scope", TextUtils.join(",", paramLoginClient$Request.a()));
    String str = paramLoginClient$Request.g();
    if (str != null)
      bundle.putString("redirect_uri", str); 
    bundle.putString("access_token", bqx.c() + "|" + bqx.d());
    bundle.putString("device_info", bmo.a());
    (new GraphRequest(null, "device/login", bundle, biz.POST, (bim)new bro(this))).n();
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    this.o = new Dialog((Context)getActivity(), bjy.com_facebook_auth_dialog);
    getActivity().getLayoutInflater();
    if (bmo.b() && !this.q) {
      boolean bool1 = true;
      View view1 = a(bool1);
      this.o.setContentView(view1);
      return this.o;
    } 
    boolean bool = false;
    View view = a(bool);
    this.o.setContentView(view);
    return this.o;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    this.j = (DeviceAuthMethodHandler)((bsl)((FacebookActivity)getActivity()).b()).b().g();
    if (paramBundle != null) {
      DeviceAuthDialog$RequestState deviceAuthDialog$RequestState = (DeviceAuthDialog$RequestState)paramBundle.getParcelable("request_state");
      if (deviceAuthDialog$RequestState != null)
        a(deviceAuthDialog$RequestState); 
    } 
    return view;
  }
  
  public void onDestroy() {
    this.p = true;
    this.k.set(true);
    super.onDestroy();
    if (this.l != null)
      this.l.cancel(true); 
    if (this.m != null)
      this.m.cancel(true); 
  }
  
  public void onDismiss(DialogInterface paramDialogInterface) {
    super.onDismiss(paramDialogInterface);
    if (!this.p)
      d(); 
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (this.n != null)
      paramBundle.putParcelable("request_state", this.n); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\DeviceAuthDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */