package com.santander.app.meuperfil.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import fze;
import fzi;
import fzn;
import grs;
import jpv;
import jpw;
import jpx;
import jpy;
import jpz;
import jqd;
import jqk;
import mxn;
import myg;
import myh;
import naf;
import nai;

@SuppressLint({"NewApi"})
public class SenhaAcessoActivity extends grs {
  private String A;
  
  private String B;
  
  private String C;
  
  private boolean D;
  
  private jqk E;
  
  private jqd F;
  
  private final String a = "SenhaAcessoActivity";
  
  private Activity b;
  
  private Button c;
  
  private EditText d;
  
  private EditText e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private ImageView x;
  
  private String y;
  
  private String z;
  
  private void a(String paramString) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            textView.setText("Sistema indisponível. Por favor, entre em contato com a Central de Atendimento Santander.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 0:
            textView.setText("Por medida de segurança, seu acesso foi cancelado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 1:
            textView.setText("Por medidas de segurança, seu acesso foi bloqueado. Por favor, entre em contato com a Central de Atendimento Santander.Capitais: 4004-3535 Demais localidades: 0800 702 3535");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 2:
            textView.setText("Senha escolhida já foi utilizada e não poderá ser repetida. Por favor, escolha uma nova senha diferente.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 3:
            textView.setText("Senha informada é inválida.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 4:
            textView.setText("Senha inválida. Para sua segurança, a senha de acesso deve ter 6 (seis) números que não podem ser repetidos, nem sequenciais. Também não podem ser escolhidas as últimas senhas já utilizadas.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 5:
            textView.setText("Senha inválida. Uma nova tentativa incorreta cancelará sua senha, e será necessário cadastrar uma nova.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 6:
            textView.setText("Sua senha foi cancelada por medida preventiva de segurança. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de dúvidas, entre em contato com a Central de Atendimento.");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 7:
            textView.setText("Usuário Não localizado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535");
            ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
            ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
            dialog.show();
            return;
          case 8:
            break;
        } 
        break;
      case 46971567:
        if (paramString.equals("18369"))
          b = 0; 
      case 46971589:
        if (paramString.equals("18370"))
          b = 1; 
      case 46971440:
        if (paramString.equals("18326"))
          b = 2; 
      case 46971378:
        if (paramString.equals("18306"))
          b = 3; 
      case 46971535:
        if (paramString.equals("18358"))
          b = 4; 
      case 46971565:
        if (paramString.equals("18367"))
          b = 5; 
      case 46971442:
        if (paramString.equals("18328"))
          b = 6; 
      case 46971566:
        if (paramString.equals("18368"))
          b = 7; 
      case -1268549548:
        if (paramString.equals("FACSEG_30300019"))
          b = 8; 
    } 
    textView.setText("Senha escolhida já foi utilizada e não poderá ser repetida. Por favor, escolha uma nova senha diferente.");
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new jpz(this));
    dialog.show();
  }
  
  public Dialog a(Boolean paramBoolean) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968955);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    if (paramBoolean.booleanValue())
      ((TextView)dialog.findViewById(2131756891)).setText("Senha inválida. Para sua segurança, a nova senha de acesso deve cumprir as seguintes regras:"); 
    ((Button)dialog.findViewById(2131756828)).setOnClickListener((View.OnClickListener)new jpw(this, dialog));
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.show();
    return dialog;
  }
  
  public void continuar(View paramView) {
    this.E.a(this.d.getText().toString());
    this.E.b(this.e.getText().toString());
    if (this.F.c(this.E)) {
      mxn.e((Activity)this, "Por favor, informe a senha.");
      return;
    } 
    if (!this.F.b(this.E)) {
      mxn.e((Activity)this, "A senha de acesso e sua confirmação devem ser iguais. Por favor, digite novamente.");
      return;
    } 
    if (this.F.a(this.E)) {
      mxn.a((Activity)this, 2130968956);
      return;
    } 
    naf naf = new naf();
    try {
      String str1 = naf.b(this.d.getText().toString().getBytes("UTF-8"));
      String str2 = naf.b(this.e.getText().toString().getBytes("UTF-8"));
      this.C = naf.b(this.A.getBytes("UTF-8"));
      this.E.a(str1);
      this.E.b(str2);
      if (this.D) {
        (new fze((fzi)new jpx(this), (Activity)this, this.E, this.C)).c((Object[])new Void[0]);
        return;
      } 
    } catch (Exception exception) {
      this.E.a("");
      this.E.b("");
      if (this.D) {
        (new fze((fzi)new jpx(this), (Activity)this, this.E, this.C)).c((Object[])new Void[0]);
        return;
      } 
    } 
    (new fzn((fzi)new jpy(this), (Activity)this, this.E)).c((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    String str;
    this.b = (Activity)this;
    super.onCreate(paramBundle);
    setContentView(2130969487);
    this.y = getIntent().getStringExtra("nome");
    this.z = getIntent().getStringExtra("cpf");
    this.D = getIntent().getBooleanExtra("cadastro", true);
    if (getIntent().hasExtra("contaPreferencial")) {
      str = getIntent().getStringExtra("contaPreferencial");
    } else {
      str = "";
    } 
    this.A = str;
    if (getIntent().hasExtra("codRetorno")) {
      str = getIntent().getStringExtra("codRetorno");
    } else {
      str = "";
    } 
    this.B = str;
    if (this.v.f().k() == null)
      this.v.f().h(this.z); 
    this.F = new jqd();
    this.E = new jqk();
    this.f = (TextView)findViewById(2131759526);
    this.g = (TextView)findViewById(2131759527);
    this.w = (TextView)findViewById(2131759528);
    this.c = (Button)findViewById(2131759531);
    this.x = (ImageView)findViewById(2131756383);
    this.d = (EditText)findViewById(2131759529);
    this.e = (EditText)findViewById(2131759530);
    this.f.setText(this.y);
    this.g.setText("CPF: " + new StringBuilder(new String(nai.c(this.z))));
    if (this.B.equals("104")) {
      this.x.setImageDrawable(getResources().getDrawable(2130838889));
      this.w.setText("Agora crie sua senha de acesso, ela é utilizada no aplicativo Santander, no Internet Banking e na Central de Atendimento Santander.");
    } else if (this.B.equals("105")) {
      this.x.setImageDrawable(getResources().getDrawable(2130838888));
      this.w.setText("Agora crie sua senha de acesso, ela é utilizada no aplicativo Santander e no Internet Banking.");
    } 
    this.c.setOnClickListener((View.OnClickListener)new jpv(this));
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    findViewById(2131756230).requestFocus();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886095, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    a(Boolean.valueOf(false));
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\SenhaAcessoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */