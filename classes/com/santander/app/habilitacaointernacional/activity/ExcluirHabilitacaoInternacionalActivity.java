package com.santander.app.habilitacaointernacional.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import com.santander.app.widget.Indicator;
import ghu;
import gpu;
import grs;
import hau;
import imk;
import imw;
import imx;
import imy;
import imz;
import ina;
import inb;
import inu;
import ioi;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import naq;
import nez;

@SuppressLint({"NewApi"})
public class ExcluirHabilitacaoInternacionalActivity extends grs implements ViewPager.OnPageChangeListener, Serializable, nez {
  private static final long b = 1L;
  
  private Activity A;
  
  private ghu B;
  
  private List<ghu> C;
  
  private ArrayList<ioi> D = new ArrayList<ioi>();
  
  private Button E;
  
  private int F;
  
  public Dialog a = null;
  
  private ListView c;
  
  private inu d;
  
  private int e;
  
  private final String f = "ExcluirHabilitacaoInternacionalActivity";
  
  private imk g;
  
  private Indicator w;
  
  private ViewPager x;
  
  private ImageView y;
  
  private ImageView z;
  
  private ArrayList<ioi> a(ArrayList<ioi> paramArrayList) {
    ioi ioi = null;
    if (paramArrayList != null) {
      ArrayList<ioi> arrayList = new ArrayList();
      int i = 0;
      while (true) {
        if (i < paramArrayList.size()) {
          Object object;
          ioi = new ioi();
          ioi.a(((ioi)paramArrayList.get(i)).a());
          ioi.b(((ioi)paramArrayList.get(i)).b());
          ioi.c(((ioi)paramArrayList.get(i)).c());
          ioi.d(((ioi)paramArrayList.get(i)).d());
          ioi.e(((ioi)paramArrayList.get(i)).f());
          ioi.f(((ioi)paramArrayList.get(i)).g());
          ioi.a(((ioi)paramArrayList.get(i)).e());
          arrayList.add(ioi);
          String[] arrayOfString1 = ((ioi)arrayList.get(i)).c().split("/");
          String[] arrayOfString2 = ((ioi)arrayList.get(i)).d().split("/");
          if (((ioi)arrayList.get(i)).f() != null && ((ioi)arrayList.get(i)).g() != null) {
            object = ((ioi)arrayList.get(i)).f().split("/");
            String[] arrayOfString = ((ioi)arrayList.get(i)).g().split("/");
          } else {
            ioi = null;
            object = null;
          } 
          String str = naq.b(getApplicationContext());
          byte b = -1;
          switch (str.hashCode()) {
            default:
              switch (b) {
                case 0:
                  ((ioi)arrayList.get(i)).c(arrayOfString1[0] + "/" + arrayOfString1[1] + "/" + arrayOfString1[2]);
                  ((ioi)arrayList.get(i)).d(arrayOfString2[0] + "/" + arrayOfString2[1] + "/" + arrayOfString2[2]);
                  if (object != null && ioi != null) {
                    ((ioi)arrayList.get(i)).e(object[0] + "/" + object[1] + "/" + object[2]);
                    ((ioi)arrayList.get(i)).f(ioi[0] + "/" + ioi[1] + "/" + ioi[2]);
                  } 
                  i++;
                  break;
                case 1:
                  ((ioi)arrayList.get(i)).c(arrayOfString1[1] + "/" + arrayOfString1[0] + "/" + arrayOfString1[2]);
                  ((ioi)arrayList.get(i)).d(arrayOfString2[1] + "/" + arrayOfString2[0] + "/" + arrayOfString2[2]);
                  if (object != null && ioi != null) {
                    ((ioi)arrayList.get(i)).e(object[1] + "/" + object[0] + "/" + object[2]);
                    ((ioi)arrayList.get(i)).f(ioi[1] + "/" + ioi[0] + "/" + ioi[2]);
                  } 
                  i++;
                  break;
                case 2:
                  break;
              } 
              continue;
            case -650712384:
              if (str.equals("dd/MM/yyyy"))
                b = 0; 
            case 2087096576:
              if (str.equals("MM/dd/yyyy"))
                b = 1; 
            case -102516032:
              if (str.equals("yyyy/MM/dd"))
                b = 2; 
          } 
          ((ioi)arrayList.get(i)).c(arrayOfString1[2] + "/" + arrayOfString1[1] + "/" + arrayOfString1[0]);
          ((ioi)arrayList.get(i)).d(arrayOfString2[2] + "/" + arrayOfString2[1] + "/" + arrayOfString2[0]);
          if (object != null && ioi != null) {
            ((ioi)arrayList.get(i)).e(object[2] + "/" + object[1] + "/" + object[0]);
            ((ioi)arrayList.get(i)).f(ioi[2] + "/" + ioi[1] + "/" + ioi[0]);
          } 
        } else {
          return arrayList;
        } 
        i++;
        break;
      } 
    } 
    return (ArrayList<ioi>)ioi;
  }
  
  private void b() {
    int k = View.MeasureSpec.makeMeasureSpec(this.c.getWidth(), 0);
    int j = 80;
    View view = null;
    for (int i = 0; i < this.d.getCount(); i++) {
      view = this.d.getView(i, view, (ViewGroup)this.c);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
    layoutParams.height = this.c.getDividerHeight() * (this.d.getCount() - 1) + j;
    this.c.setLayoutParams(layoutParams);
    this.c.requestLayout();
  }
  
  private void c() {
    this.x = (ViewPager)findViewById(2131757606);
    this.x.setOnTouchListener((View.OnTouchListener)new imx(this));
    this.w = (Indicator)findViewById(2131757607);
    this.z = (ImageView)findViewById(2131756232);
    this.y = (ImageView)findViewById(2131756233);
    this.g = new imk((Activity)this, this.x, this.w, this.z, this.y, 0);
    this.z.setOnClickListener((View.OnClickListener)new imy(this));
    this.y.setOnClickListener((View.OnClickListener)new imz(this));
    this.g.a(this.F, Boolean.valueOf(false));
    this.g.a(this);
    (new inb(this)).execute((Object[])new Void[0]);
  }
  
  private void d(int paramInt) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    if (paramInt == 1) {
      textView.setText("Não existem viagens cadastradas.");
    } else if (paramInt == 2) {
      textView.setText("Selecione uma viagem antes de continuar.");
    } 
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new ina(this, dialog));
    dialog.show();
  }
  
  public ArrayList<ioi> a() {
    ArrayList<ioi> arrayList = new ArrayList();
    for (int i = 0; i < this.d.getCount(); i++) {
      ioi ioi = (ioi)this.d.getItem(i);
      if (ioi.h().booleanValue())
        arrayList.add(ioi); 
    } 
    return arrayList;
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    this.e = paramInt;
    (new inb(this)).execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969116);
    this.A = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    Bundle bundle = getIntent().getExtras();
    this.C = this.v.f().s().e();
    if (bundle != null) {
      this.B = (ghu)bundle.getSerializable("cartoe");
      this.F = bundle.getInt("indiceCartaoSelecionado");
    } else if (this.C.size() > 0) {
      this.B = this.C.get(0);
    } 
    gpu.a((Activity)this, actionBar, getString(2131297557));
    this.E = (Button)findViewById(2131757527);
    this.c = (ListView)findViewById(2131757642);
    c();
    this.E.setOnClickListener((View.OnClickListener)new imw(this));
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    this.e = this.x.getCurrentItem();
    hau.a().c(this.x.getCurrentItem());
    (new inb(this)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\ExcluirHabilitacaoInternacionalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */