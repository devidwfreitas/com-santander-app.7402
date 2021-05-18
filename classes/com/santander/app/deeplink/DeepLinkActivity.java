package com.santander.app.deeplink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import com.adjust.sdk.Adjust;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;
import miq;

public class DeepLinkActivity extends AppCompatActivity {
  private void a() {
    Intent intent;
    b();
    if (miq.C().f().p() != null) {
      intent = new Intent((Context)this, HomeLogadaActivity.class);
    } else {
      intent = new Intent((Context)this, HomeActivity.class);
    } 
    startActivity(intent);
    finish();
  }
  
  private void b() {
    if (getIntent() == null || getIntent().getData() == null)
      return; 
    Uri uri = getIntent().getData();
    miq.C().a(uri);
    Adjust.appWillOpenUrl(uri);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    a();
  }
  
  protected void onNewIntent(Intent paramIntent) {
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\deeplink\DeepLinkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */