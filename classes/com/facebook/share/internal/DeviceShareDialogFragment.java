package com.facebook.share.internal;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import bim;
import biz;
import bju;
import bjw;
import bjx;
import bjy;
import bmo;
import bqx;
import bwq;
import bwr;
import bws;
import bzz;
import com.ca.android.app.CaMDOProgressBar;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class DeviceShareDialogFragment extends DialogFragment {
  public static final String a = "DeviceShareDialogFragment";
  
  private static final String b = "device/share";
  
  private static final String c = "request_state";
  
  private static ScheduledThreadPoolExecutor i;
  
  private ProgressBar d;
  
  private TextView e;
  
  private Dialog f;
  
  private volatile DeviceShareDialogFragment$RequestState g;
  
  private volatile ScheduledFuture h;
  
  private ShareContent j;
  
  private void a() {
    if (isAdded())
      getFragmentManager().beginTransaction().remove((Fragment)this).commit(); 
  }
  
  private void a(int paramInt, Intent paramIntent) {
    bmo.b(this.g.a());
    if (isAdded()) {
      FragmentActivity fragmentActivity = getActivity();
      fragmentActivity.setResult(paramInt, paramIntent);
      fragmentActivity.finish();
    } 
  }
  
  private void a(FacebookRequestError paramFacebookRequestError) {
    a();
    Intent intent = new Intent();
    intent.putExtra("error", (Parcelable)paramFacebookRequestError);
    a(-1, intent);
  }
  
  private void a(DeviceShareDialogFragment$RequestState paramDeviceShareDialogFragment$RequestState) {
    this.g = paramDeviceShareDialogFragment$RequestState;
    this.e.setText(paramDeviceShareDialogFragment$RequestState.a());
    this.e.setVisibility(0);
    CaMDOProgressBar.setVisibility(this.d, 8);
    this.h = d().schedule((Runnable)new bws(this), paramDeviceShareDialogFragment$RequestState.b(), TimeUnit.SECONDS);
  }
  
  private Bundle b() {
    ShareContent shareContent = this.j;
    return (shareContent == null) ? null : ((shareContent instanceof ShareLinkContent) ? bzz.a((ShareLinkContent)shareContent) : ((shareContent instanceof ShareOpenGraphContent) ? bzz.a((ShareOpenGraphContent)shareContent) : null));
  }
  
  private void c() {
    Bundle bundle = b();
    if (bundle == null || bundle.size() == 0)
      a(new FacebookRequestError(0, "", "Failed to get share content")); 
    bundle.putString("access_token", bqx.c() + "|" + bqx.d());
    bundle.putString("device_info", bmo.a());
    (new GraphRequest(null, "device/share", bundle, biz.POST, (bim)new bwr(this))).n();
  }
  
  private static ScheduledThreadPoolExecutor d() {
    // Byte code:
    //   0: ldc com/facebook/share/internal/DeviceShareDialogFragment
    //   2: monitorenter
    //   3: getstatic com/facebook/share/internal/DeviceShareDialogFragment.i : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   6: ifnonnull -> 20
    //   9: new java/util/concurrent/ScheduledThreadPoolExecutor
    //   12: dup
    //   13: iconst_1
    //   14: invokespecial <init> : (I)V
    //   17: putstatic com/facebook/share/internal/DeviceShareDialogFragment.i : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   20: getstatic com/facebook/share/internal/DeviceShareDialogFragment.i : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   23: astore_0
    //   24: ldc com/facebook/share/internal/DeviceShareDialogFragment
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: astore_0
    //   30: ldc com/facebook/share/internal/DeviceShareDialogFragment
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   3	20	29	finally
    //   20	24	29	finally
  }
  
  public void a(ShareContent paramShareContent) {
    this.j = paramShareContent;
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    this.f = new Dialog((Context)getActivity(), bjy.com_facebook_auth_dialog);
    View view = getActivity().getLayoutInflater().inflate(bjw.com_facebook_device_auth_dialog_fragment, null);
    this.d = (ProgressBar)view.findViewById(bju.progress_bar);
    this.e = (TextView)view.findViewById(bju.confirmation_code);
    ((Button)view.findViewById(bju.cancel_button)).setOnClickListener((View.OnClickListener)new bwq(this));
    ((TextView)view.findViewById(bju.com_facebook_device_auth_instructions)).setText((CharSequence)Html.fromHtml(getString(bjx.com_facebook_device_auth_instructions)));
    this.f.setContentView(view);
    c();
    return this.f;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (paramBundle != null) {
      DeviceShareDialogFragment$RequestState deviceShareDialogFragment$RequestState = (DeviceShareDialogFragment$RequestState)paramBundle.getParcelable("request_state");
      if (deviceShareDialogFragment$RequestState != null)
        a(deviceShareDialogFragment$RequestState); 
    } 
    return view;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface) {
    super.onDismiss(paramDialogInterface);
    if (this.h != null)
      this.h.cancel(true); 
    a(-1, new Intent());
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (this.g != null)
      paramBundle.putParcelable("request_state", this.g); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\DeviceShareDialogFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */