package com.santander.app.seguros.utils;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import com.santander.app.seguros.ui.widgets.ButtonWithDialog;
import com.santander.app.seguros.ui.widgets.cancellation.CancelSeekBar;
import mff;
import mgl;
import mgm;
import mgn;
import mgo;
import mgp;
import mgq;
import mgr;

public class DummyActivity extends AppCompatActivity {
  public static final String a = "Simulação";
  
  public static final String b = "Proposta";
  
  public static final String c = "Resumo";
  
  public static final String d = "Formalizar";
  
  private Button e;
  
  private Button f;
  
  private Button g;
  
  private Button h;
  
  private Button i;
  
  private CancelSeekBar j;
  
  private Button k;
  
  private ButtonWithDialog l;
  
  private int m = 0;
  
  private void a() {}
  
  private void b() {
    this.e = (Button)findViewById(2131755734);
    this.f = (Button)findViewById(2131755735);
    this.g = (Button)findViewById(2131755736);
    this.i = (Button)findViewById(2131755739);
    this.l = (ButtonWithDialog)findViewById(2131755738);
    this.l.setTextName("aldfsçjalskdf");
    this.l.a(getSupportFragmentManager());
    this.i.setOnClickListener((View.OnClickListener)new mgl(this));
    this.e.setOnClickListener((View.OnClickListener)new mgm(this));
    this.f.setOnClickListener((View.OnClickListener)new mgn(this));
    this.g.setOnClickListener((View.OnClickListener)new mgo(this));
    this.h = (Button)findViewById(2131755740);
    this.j = (CancelSeekBar)findViewById(2131755349);
    this.h.setOnClickListener((View.OnClickListener)new mgp(this));
    this.j.setListener((mff)new mgq(this));
    this.k = (Button)findViewById(2131755737);
    this.k.setOnClickListener((View.OnClickListener)new mgr(this));
  }
  
  public void a(Fragment paramFragment, String paramString) {
    getSupportFragmentManager().beginTransaction().setCustomAnimations(2131034148, 2131034149, 2131034147, 2131034150).replace(2131755534, paramFragment, paramString).addToBackStack(null).commit();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968666);
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\utils\DummyActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */