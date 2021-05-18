package br.com.santander.uisdk.comprovante;

import als;
import alu;
import ama;
import amc;
import ame;
import amg;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import ano;

public class SantanderComprovanteActivity extends AppCompatActivity implements ame {
  public static final String a = "extra_comprovante";
  
  private View b;
  
  private View c;
  
  private TextView d;
  
  private RecyclerView e;
  
  private TextView f;
  
  private Button g;
  
  private Dialog h;
  
  private amc i;
  
  private SantanderComprovante j;
  
  private View.OnClickListener k = (View.OnClickListener)new amg(this);
  
  public static Intent a(Context paramContext, SantanderComprovante paramSantanderComprovante) {
    Intent intent = new Intent(paramContext, SantanderComprovanteActivity.class);
    intent.putExtra("extra_comprovante", paramSantanderComprovante);
    return intent;
  }
  
  private void c() {
    this.j = (SantanderComprovante)getIntent().getParcelableExtra("extra_comprovante");
    if (this.j == null)
      throw new NullPointerException("não foi possivel obter seu comprovante"); 
  }
  
  private void d() {
    this.d.setText(this.j.b());
    this.f.setText(this.j.c());
    if (TextUtils.isEmpty(this.j.c()))
      this.f.setVisibility(8); 
    ama ama = new ama(this.j.d());
    this.e.setHasFixedSize(true);
    this.e.setNestedScrollingEnabled(false);
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    this.e.setAdapter((RecyclerView.Adapter)ama);
    this.g.setOnClickListener(this.k);
  }
  
  private void e() {
    f();
    this.h = ano.b((Activity)this);
  }
  
  private void f() {
    if (this.h != null)
      this.h.dismiss(); 
  }
  
  public void a() {
    e();
    this.c.setVisibility(0);
    this.g.setVisibility(8);
    this.b.requestLayout();
  }
  
  public void a(Exception paramException) {
    f();
    this.c.setVisibility(8);
    this.g.setVisibility(0);
  }
  
  public void b() {
    f();
    this.c.setVisibility(8);
    this.g.setVisibility(0);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(alu.santander_activity_comprovante);
    c();
    setSupportActionBar((Toolbar)findViewById(als.toolbar));
    if (getSupportActionBar() != null)
      getSupportActionBar().setDisplayHomeAsUpEnabled(true); 
    this.b = findViewById(als.comprovante_tela);
    this.c = findViewById(als.comprovante_logo_santander);
    this.d = (TextView)findViewById(als.comprovante_titulo);
    this.e = (RecyclerView)findViewById(als.comprovante_recycler_view);
    this.f = (TextView)findViewById(als.comprovante_footer);
    this.g = (Button)findViewById(als.comprovante_compartilhar);
    this.i = new amc((Activity)this, this.j, this.b);
    this.i.a(this);
    d();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.i.b();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    if (paramMenuItem.getItemId() == 16908332)
      onBackPressed(); 
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    this.i.a(paramInt, paramArrayOfString, paramArrayOfint);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\comprovante\SantanderComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */