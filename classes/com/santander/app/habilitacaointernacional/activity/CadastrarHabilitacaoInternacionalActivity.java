package com.santander.app.habilitacaointernacional.activity;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import com.santander.app.widget.Indicator;
import fqi;
import ghu;
import gpl;
import gpu;
import grs;
import ilz;
import ima;
import imb;
import imc;
import imd;
import ime;
import imf;
import img;
import imh;
import imi;
import imj;
import imk;
import inx;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import mxn;
import nez;

public class CadastrarHabilitacaoInternacionalActivity extends grs implements DatePickerDialog.OnDateSetListener, Serializable, nez {
  private static final long b = 1L;
  
  private ImageView A;
  
  private Indicator B;
  
  private ViewPager C;
  
  private final ArrayList<inx> D = new ArrayList<inx>();
  
  private ArrayList<DataSetObserver> E = new ArrayList<DataSetObserver>();
  
  private String F;
  
  private String G;
  
  private ghu H;
  
  private List<ghu> I;
  
  private EditText J;
  
  private CadastrarHabilitacaoInternacionalActivity K;
  
  private int L;
  
  public Boolean a;
  
  private TextView c;
  
  private TextView d;
  
  private ImageView e;
  
  private ImageView f;
  
  private ListView g;
  
  private fqi w;
  
  private final String x = "CadastrarHabilitacaoInternacionalActivity";
  
  private imk y;
  
  private ImageView z;
  
  private boolean a(String paramString1, String paramString2) {
    Date date1 = a(paramString1);
    Date date2 = a(paramString2);
    return !(date1.after(date2) || date1.equals(date2));
  }
  
  private boolean b(String paramString) {
    for (int i = 0; i < this.D.size(); i++) {
      if (((inx)this.D.get(i)).a().equals(paramString))
        return false; 
    } 
    return true;
  }
  
  private boolean c() {
    boolean bool = false;
    if (this.D.size() > 0)
      bool = true; 
    return bool;
  }
  
  private void d() {
    int k = View.MeasureSpec.makeMeasureSpec(this.g.getWidth(), 0);
    int j = 80;
    View view = null;
    for (int i = 0; i < this.w.getCount(); i++) {
      view = this.w.getView(i, view, (ViewGroup)this.g);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.g.getLayoutParams();
    layoutParams.height = this.g.getDividerHeight() * (this.w.getCount() - 1) + j;
    this.g.setLayoutParams(layoutParams);
    this.g.requestLayout();
  }
  
  private void d(int paramInt) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    if (paramInt == 1) {
      textView.setText("Por favor inclua ao menos uma viagem para continuar. ");
    } else if (paramInt == 2) {
      textView.setText("A data inicial deve ser menor que a final.");
    } else if (paramInt == 3) {
      textView.setText("Preencha todos os campos antes de incluir um país.");
    } 
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new imi(this, dialog));
    dialog.show();
  }
  
  private void e() {
    this.C = (ViewPager)findViewById(2131757606);
    this.C.setOnTouchListener((View.OnTouchListener)new imj(this));
    this.B = (Indicator)findViewById(2131757607);
    this.A = (ImageView)findViewById(2131756232);
    this.z = (ImageView)findViewById(2131756233);
    this.y = new imk((Activity)this, this.C, this.B, this.A, this.z, 0);
    this.A.setOnClickListener((View.OnClickListener)new ima(this));
    this.z.setOnClickListener((View.OnClickListener)new imb(this));
    this.y.a(this.L, Boolean.valueOf(false));
    this.y.a(this);
  }
  
  public Date a(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    try {
      return simpleDateFormat.parse(paramString);
    } catch (ParseException parseException) {
      throw new RuntimeException(parseException);
    } 
  }
  
  public void a() {
    Iterator<DataSetObserver> iterator = this.E.iterator();
    while (iterator.hasNext())
      ((DataSetObserver)iterator.next()).onChanged(); 
  }
  
  public void a(int paramInt) {}
  
  public void a(DataSetObserver paramDataSetObserver) {
    this.E.add(paramDataSetObserver);
  }
  
  public void b() {
    this.d.setText("");
    this.c.setText("");
    this.J.setText("");
  }
  
  public void b(int paramInt) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    switch (paramInt1) {
      default:
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        return;
      case 1:
        break;
    } 
    this.G = paramIntent.getExtras().getString("nomePais");
    this.F = paramIntent.getExtras().getString("codigoPais");
    EditText editText = (EditText)findViewById(2131757619);
    if (b(this.F))
      editText.setText(this.G); 
    mxn.b((Activity)this.K, this.G + " já existe na lista de cadastro.");
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969107);
    this.K = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297557));
    Bundle bundle = getIntent().getExtras();
    this.I = this.v.f().s().e();
    if (bundle != null) {
      this.H = (ghu)bundle.getSerializable("cartoe");
      this.L = bundle.getInt("indiceCartaoSelecionado");
    } else if (this.I.size() > 0) {
      this.H = this.I.get(0);
    } 
    Button button2 = (Button)findViewById(2131757065);
    Button button1 = (Button)findViewById(2131757621);
    this.e = (ImageView)findViewById(2131757614);
    this.f = (ImageView)findViewById(2131757616);
    this.d = (TextView)findViewById(2131757615);
    this.c = (TextView)findViewById(2131757617);
    this.g = (ListView)findViewById(2131757620);
    LinearLayout linearLayout = (LinearLayout)findViewById(2131757618);
    this.J = (EditText)findViewById(2131757619);
    linearLayout.setOnClickListener((View.OnClickListener)new ilz(this));
    this.f.setOnClickListener((View.OnClickListener)new imc(this));
    this.e.setOnClickListener((View.OnClickListener)new imd(this));
    button2.setOnClickListener((View.OnClickListener)new ime(this));
    ((EditText)findViewById(2131757619)).setOnClickListener((View.OnClickListener)new imf(this));
    img img = new img(this);
    this.w = new fqi(this.D, (Context)this, (DataSetObserver)img);
    this.g.setAdapter((ListAdapter)this.w);
    d();
    button1.setOnClickListener((View.OnClickListener)new imh(this, (DataSetObserver)img));
    e();
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(paramInt1, paramInt2, paramInt3);
    if (this.a.booleanValue()) {
      ((TextView)findViewById(2131757615)).setText(gpl.a(calendar.getTime(), "dd/MM/yyyy"));
      return;
    } 
    ((TextView)findViewById(2131757617)).setText(gpl.a(calendar.getTime(), "dd/MM/yyyy"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\CadastrarHabilitacaoInternacionalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */