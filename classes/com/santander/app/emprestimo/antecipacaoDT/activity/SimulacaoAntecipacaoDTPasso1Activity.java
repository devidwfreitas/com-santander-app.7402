package com.santander.app.emprestimo.antecipacaoDT.activity;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import grs;
import guj;
import hhz;
import hia;
import hib;
import hic;
import hid;
import hie;
import hif;
import hig;
import hiw;
import hiz;
import hxk;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import mzr;
import naq;

public class SimulacaoAntecipacaoDTPasso1Activity extends grs {
  private TextView A;
  
  private EditText B;
  
  private Activity C;
  
  private List<Conta> D;
  
  private hiz E;
  
  private hiw F;
  
  private DatePickerDialog G;
  
  private Dialog H;
  
  private String I = "1";
  
  private guj J;
  
  private TextView K;
  
  private final String a = "SimulacaoAntecipacaoDTPasso1Activity";
  
  private RelativeLayout b;
  
  private ImageButton c;
  
  private ImageButton d;
  
  private RadioButton e;
  
  private RadioButton f;
  
  private EditText g;
  
  private ImageButton w;
  
  private Button x;
  
  private RelativeLayout y;
  
  private TextView z;
  
  private void a() {
    this.J = new guj();
    b();
    this.b = (RelativeLayout)findViewById(2131757164);
    this.y = (RelativeLayout)findViewById(2131757179);
    this.c = (ImageButton)findViewById(2131757165);
    this.d = (ImageButton)findViewById(2131757174);
    this.e = (RadioButton)findViewById(2131757171);
    this.f = (RadioButton)findViewById(2131757172);
    this.g = (EditText)findViewById(2131757177);
    this.w = (ImageButton)findViewById(2131757178);
    this.x = (Button)findViewById(2131757180);
    this.z = (TextView)findViewById(2131757948);
    this.A = (TextView)findViewById(2131757951);
    this.B = (EditText)findViewById(2131757954);
    this.J.a(this.B);
    this.B.addTextChangedListener((TextWatcher)this.J);
    this.K = (TextView)findViewById(2131757163);
    c();
    d();
    this.c.setOnClickListener((View.OnClickListener)new hhz(this));
    this.d.setOnClickListener((View.OnClickListener)new hia(this));
    this.w.setEnabled(false);
    this.w.setAlpha(0.6F);
    this.w.setOnClickListener((View.OnClickListener)new hib(this));
    this.e.setChecked(false);
    this.e.setOnClickListener((View.OnClickListener)new hic(this));
    this.f.setOnClickListener((View.OnClickListener)new hid(this));
    this.x.setOnClickListener((View.OnClickListener)new hie(this));
  }
  
  private void a(String paramString1, String paramString2) {
    new hiw();
    hig hig = new hig(this, paramString1, paramString2);
    try {
      hig.execute((Object[])new hiz[] { this.E });
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  private void b() {
    hxk hxk = this.v.f().u().a().e();
    this.E = new hiz();
    this.E.a(hxk.a());
    this.E.c(hxk.d());
    this.E.b(hxk.b());
    this.E.d(hxk.c());
  }
  
  private void c() {
    this.K.setText(naq.c(mzr.e(), mzr.f()));
  }
  
  private void d() {
    Calendar calendar1 = Calendar.getInstance();
    try {
      calendar1.setTime(new Date((new SimpleDateFormat("dd/MM/yyyy")).parse(this.E.c().trim()).getTime()));
    } catch (Exception exception) {
      Log.e("ANTECIPACAO_DT", "Erro ao realizar parser da Data: " + exception.getMessage());
    } 
    this.G = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new hif(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    Calendar calendar2 = Calendar.getInstance();
    calendar2.add(2, 0);
    this.G.getDatePicker().setMinDate(calendar2.getTimeInMillis() - 1000L);
    this.G.getDatePicker().setMaxDate(calendar1.getTimeInMillis());
    this.G.setTitle("Selecione a Data");
  }
  
  private boolean e() {
    Double double_;
    double d1 = Double.parseDouble(this.F.a());
    double d2 = Double.parseDouble(this.F.b());
    if (this.B.getText() != null || !this.B.getText().equals("")) {
      double_ = Double.valueOf(Double.parseDouble(this.B.getText().toString().replace(".", "").replace(",", ".")));
    } else {
      double_ = new Double("0.00");
    } 
    return (double_.doubleValue() <= Double.valueOf(d1).doubleValue() && double_.doubleValue() >= Double.valueOf(d2).doubleValue());
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969016);
    c(2131298966);
    this.C = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoDT\activity\SimulacaoAntecipacaoDTPasso1Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */