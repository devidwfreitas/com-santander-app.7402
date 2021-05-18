package com.santander.app.habilitacaointernacional.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
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
import imo;
import imp;
import imq;
import imr;
import ims;
import imt;
import imu;
import inp;
import ioh;
import ioi;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import naq;
import nez;

public class ConsultarAlterarHabilitacaoInternacionalActivity extends grs implements ViewPager.OnPageChangeListener, Serializable, nez {
  private static final long d = 1L;
  
  private ghu A;
  
  private List<ghu> B;
  
  private ArrayList<DataSetObserver> C = new ArrayList<DataSetObserver>();
  
  private ArrayList<ioi> D = new ArrayList<ioi>();
  
  private Button E;
  
  private Activity F;
  
  private int G;
  
  private int H;
  
  public inp a;
  
  public Dialog b = null;
  
  private final String c = "ConsultarAlterarHabilitacaoInternacionalActivity";
  
  private ListView e;
  
  private imk f;
  
  private Indicator g;
  
  private ViewPager w;
  
  private ImageView x;
  
  private ImageView y;
  
  private ioh z;
  
  private boolean a(ArrayList<ioi> paramArrayList) {
    Iterator<ioi> iterator = paramArrayList.iterator();
    boolean bool;
    for (bool = false; iterator.hasNext(); bool = true) {
      ioi ioi = iterator.next();
      if (ioi.g() == null || ioi.f() == null) {
        bool = false;
        continue;
      } 
    } 
    return bool;
  }
  
  private ArrayList<ioi> b(ArrayList<ioi> paramArrayList) {
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
  
  private void c() {
    this.w = (ViewPager)findViewById(2131757606);
    this.w.setOnTouchListener((View.OnTouchListener)new imq(this));
    this.g = (Indicator)findViewById(2131757607);
    this.y = (ImageView)findViewById(2131756232);
    this.x = (ImageView)findViewById(2131756233);
    this.f = new imk((Activity)this, this.w, this.g, this.y, this.x, 0);
    this.y.setOnClickListener((View.OnClickListener)new imr(this));
    this.x.setOnClickListener((View.OnClickListener)new ims(this));
    this.f.a(this.H, Boolean.valueOf(false));
    this.f.a(this);
    (new imu(this)).execute((Object[])new Void[0]);
  }
  
  private void d(int paramInt) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    if (paramInt == 1) {
      textView.setText(getResources().getString(2131297561));
    } else if (paramInt == 2) {
      textView.setText("Favor preencher as novas datas.");
    } 
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new imt(this, dialog));
    dialog.show();
  }
  
  public void a() {
    int k = View.MeasureSpec.makeMeasureSpec(this.e.getWidth(), 0);
    int j = 150;
    View view = null;
    for (int i = 0; i < this.a.getCount(); i++) {
      view = this.a.getView(i, view, (ViewGroup)this.e);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.e.getLayoutParams();
    layoutParams.height = this.e.getDividerHeight() * (this.a.getCount() - 1) + j;
    this.e.setLayoutParams(layoutParams);
    this.e.requestLayout();
  }
  
  public void a(int paramInt) {}
  
  public void a(DataSetObserver paramDataSetObserver) {
    this.C.add(paramDataSetObserver);
  }
  
  public void b() {
    Iterator<DataSetObserver> iterator = this.C.iterator();
    while (iterator.hasNext())
      ((DataSetObserver)iterator.next()).onChanged(); 
  }
  
  public void b(int paramInt) {
    this.G = paramInt;
    (new imu(this)).execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969114);
    this.F = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    Bundle bundle = getIntent().getExtras();
    this.B = this.v.f().s().e();
    if (bundle != null) {
      this.A = (ghu)bundle.getSerializable("cartoe");
      this.H = bundle.getInt("indiceCartaoSelecionado");
      this.G = this.H;
    } else if (this.B.size() > 0) {
      this.A = this.B.get(0);
    } 
    gpu.a((Activity)this, actionBar, getString(2131297557));
    this.E = (Button)findViewById(2131757527);
    this.e = (ListView)findViewById(2131757642);
    c();
    this.e.setOnItemClickListener((AdapterView.OnItemClickListener)new imo(this));
    this.E.setOnClickListener((View.OnClickListener)new imp(this));
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    this.G = this.w.getCurrentItem();
    hau.a().c(this.w.getCurrentItem());
    (new imu(this)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\ConsultarAlterarHabilitacaoInternacionalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */