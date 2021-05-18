package com.santander.app;

import amr;
import amt;
import amy;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.widget.Indicator;
import fgq;
import fgr;
import fgs;
import fgt;
import fgu;
import fgv;
import fgw;
import fgx;
import foh;
import fpn;
import fpo;
import fuf;
import fun;
import ghu;
import gmy;
import goi;
import gpm;
import grs;
import hau;
import java.util.ArrayList;
import java.util.List;
import mxn;
import nez;

public class CadastramentoFacturaActivity extends grs implements nez {
  private SantanderDropDownView A;
  
  private List<ghu> B;
  
  private ghu C;
  
  private int D;
  
  public Dialog a = null;
  
  public Dialog b = null;
  
  private final String c = "CadastramentoFacturaActivity";
  
  private List<fpn> d;
  
  private Indicator e;
  
  private ViewPager f;
  
  private ImageView g;
  
  private ImageView w;
  
  private ViewPager x;
  
  private Activity y;
  
  private fgx z;
  
  private void a() {
    this.A = (SantanderDropDownView)findViewById(2131755321);
    ((Button)findViewById(2131756343)).setOnClickListener((View.OnClickListener)new fgq(this));
    if (b()) {
      c();
    } else {
      d();
    } 
    this.y = (Activity)this;
    hau.a().a(false);
  }
  
  private void a(ghu paramghu) {
    if (paramghu == null)
      paramghu = this.v.f().s().d().get(0); 
    fuf fuf = paramghu.m();
    if (fuf == null)
      return; 
    this.x = (ViewPager)findViewById(2131756338);
    this.x.setOnTouchListener((View.OnTouchListener)new fgt(this));
    this.d = new ArrayList<fpn>();
    for (int i = 0; i < fuf.g().size(); i++) {
      fpn fpn = new fpn();
      fpn.a(((fun)fuf.g().get(i)).b());
      fpn.a(i);
      this.d.add(fpn);
    } 
    fpo fpo = new fpo((Context)this, this.d);
    this.x.setAdapter((PagerAdapter)fpo);
    this.e = (Indicator)findViewById(2131756341);
    this.w = (ImageView)findViewById(2131756339);
    this.g = (ImageView)findViewById(2131756340);
    this.w.setImageDrawable(getResources().getDrawable(2130837603));
    this.g.setImageDrawable(getResources().getDrawable(2130837607));
    if (fpo.getCount() > 1)
      this.g.setImageDrawable(getResources().getDrawable(2130837606)); 
    this.w.setOnClickListener((View.OnClickListener)new fgu(this));
    this.g.setOnClickListener((View.OnClickListener)new fgv(this));
    this.x.setOnPageChangeListener((ViewPager.OnPageChangeListener)new fgw(this));
    if (this.x.getAdapter().getCount() < 2) {
      this.g.setVisibility(4);
      this.w.setVisibility(4);
    } else {
      this.g.setVisibility(0);
      this.w.setVisibility(0);
    } 
    gpm.a(this.e, fpo.getCount(), this.g, this.w, this.x);
  }
  
  private boolean b() {
    return (this.v.f().s().a() != null && ((ghu)this.v.f().s().a().get(0)).A() == null);
  }
  
  private void c() {
    this.b = mxn.b((Activity)this);
    this.v.f().t().a((foh)new fgr(this));
  }
  
  private void d() {
    this.C = null;
    this.B = this.v.f().s().f();
    List list = gmy.b(this.B);
    amy amy = new amy(list);
    this.A.setAdapter((amr)amy);
    if (list.size() >= this.D)
      this.D = 0; 
    this.A.setCurrentItem(list.get(this.D));
    this.A.setOnItemSelectedListener((amt)new fgs(this));
  }
  
  private void e() {
    if (this.x.getCurrentItem() > 0) {
      this.w.setImageDrawable(getResources().getDrawable(2130837602));
    } else {
      this.w.setImageDrawable(getResources().getDrawable(2130837603));
    } 
    if (this.x.getCurrentItem() < this.x.getAdapter().getCount() - 1) {
      this.g.setImageDrawable(getResources().getDrawable(2130837606));
    } else {
      this.g.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    this.e.setSelected(this.x.getCurrentItem());
  }
  
  private void f() {
    this.z = new fgx(this, null);
    this.z.execute((Object[])new Void[0]);
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968820);
    c(2131297338);
    if (getIntent().getExtras() != null)
      this.D = getIntent().getExtras().getInt("cartao"); 
    a();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    if (2 == (getResources().getConfiguration()).orientation)
      getMenuInflater().inflate(2131886096, paramMenu); 
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759631:
        break;
    } 
    (new goi((Activity)this)).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\CadastramentoFacturaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */