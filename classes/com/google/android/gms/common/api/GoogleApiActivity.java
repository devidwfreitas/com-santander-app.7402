package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.ca.android.app.CaMDOActivity;
import com.google.android.gms.common.ConnectionResult;
import con;
import dcq;

public class GoogleApiActivity extends CaMDOActivity implements DialogInterface.OnCancelListener {
  protected int a = 0;
  
  public static PendingIntent a(Context paramContext, PendingIntent paramPendingIntent, int paramInt) {
    return a(paramContext, paramPendingIntent, paramInt, true);
  }
  
  public static PendingIntent a(Context paramContext, PendingIntent paramPendingIntent, int paramInt, boolean paramBoolean) {
    return PendingIntent.getActivity(paramContext, 0, b(paramContext, paramPendingIntent, paramInt, paramBoolean), 134217728);
  }
  
  private void a() {
    Bundle bundle = getIntent().getExtras();
    if (bundle == null) {
      Log.e("GoogleApiActivity", "Activity started without extras");
      finish();
      return;
    } 
    PendingIntent pendingIntent = (PendingIntent)bundle.get("pending_intent");
    Integer integer = (Integer)bundle.get("error_code");
    if (pendingIntent == null && integer == null) {
      Log.e("GoogleApiActivity", "Activity started without resolution");
      finish();
      return;
    } 
    if (pendingIntent != null)
      try {
        startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
        this.a = 1;
        return;
      } catch (android.content.IntentSender.SendIntentException sendIntentException) {
        Log.e("GoogleApiActivity", "Failed to launch pendingIntent", (Throwable)sendIntentException);
        finish();
        return;
      }  
    con.a().b((Activity)this, integer.intValue(), 2, this);
    this.a = 1;
  }
  
  private void a(int paramInt, dcq paramdcq) {
    switch (paramInt) {
      default:
        return;
      case 0:
        paramdcq.b(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
        return;
      case -1:
        break;
    } 
    paramdcq.d();
  }
  
  public static Intent b(Context paramContext, PendingIntent paramPendingIntent, int paramInt, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, GoogleApiActivity.class);
    intent.putExtra("pending_intent", (Parcelable)paramPendingIntent);
    intent.putExtra("failing_client_id", paramInt);
    intent.putExtra("notify_manager", paramBoolean);
    return intent;
  }
  
  protected void a(int paramInt) {
    setResult(paramInt);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1) {
      boolean bool = getIntent().getBooleanExtra("notify_manager", true);
      this.a = 0;
      a(paramInt2);
      if (bool)
        a(paramInt2, dcq.a((Context)this)); 
    } else if (paramInt1 == 2) {
      this.a = 0;
      a(paramInt2);
    } 
    finish();
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {
    this.a = 0;
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (paramBundle != null)
      this.a = paramBundle.getInt("resolution"); 
    if (this.a != 1)
      a(); 
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    paramBundle.putInt("resolution", this.a);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\api\GoogleApiActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */