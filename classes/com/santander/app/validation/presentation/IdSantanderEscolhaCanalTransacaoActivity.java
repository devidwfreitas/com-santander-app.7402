package com.santander.app.validation.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import java.io.Serializable;
import myl;
import nat;
import nbt;
import nbu;
import ndj;
import ndk;

public class IdSantanderEscolhaCanalTransacaoActivity extends grs implements nbu {
  public static final int a = 5;
  
  private ndj b;
  
  private void a(boolean paramBoolean) {
    Intent intent = new Intent();
    intent.putExtra("showLogin", paramBoolean);
    setResult(5, intent);
    finish();
  }
  
  private void d() {
    findViewById(2131755855).setVisibility(8);
    findViewById(2131755858).setVisibility(8);
    findViewById(2131755864).setVisibility(8);
  }
  
  public void a() {
    myl.e((Activity)this);
  }
  
  public void b() {
    myl.f((Activity)this);
  }
  
  public void c() {
    startActivityForResult((new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class)).putExtra("tipo", (Serializable)nat.USUARIO_SEM_SEMENTE), 5);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt2 == 3) {
      if (!paramIntent.getBooleanExtra("showLogin", false)) {
        a(false);
        return;
      } 
      a(true);
      return;
    } 
    if (paramIntent.getBooleanExtra("showLogin", false)) {
      a(true);
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.b = (ndj)new ndk((Context)this, this);
    PlayGifView playGifView = (PlayGifView)findViewById(2131755820);
    playGifView.setGifResource(2130838876);
    playGifView.setVisibility(0);
    findViewById(2131755819).setVisibility(0);
    findViewById(2131755819).setOnClickListener((View.OnClickListener)new nbt(this));
    TextView textView = (TextView)findViewById(2131755821);
    textView.setText(2131299026);
    textView.setVisibility(0);
    textView = (TextView)findViewById(2131755822);
    textView.setText(getResources().getString(2131298630));
    textView.setVisibility(0);
    LinearLayout linearLayout = (LinearLayout)findViewById(2131755859);
    linearLayout.addView(getLayoutInflater().inflate(2130969173, null));
    linearLayout.setVisibility(0);
    d();
    RecyclerView recyclerView = (RecyclerView)findViewById(2131758186);
    recyclerView.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    recyclerView.setAdapter((RecyclerView.Adapter)this.b.a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\IdSantanderEscolhaCanalTransacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */