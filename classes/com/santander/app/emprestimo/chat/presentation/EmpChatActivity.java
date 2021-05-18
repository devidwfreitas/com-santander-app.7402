package com.santander.app.emprestimo.chat.presentation;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import br.com.santander.uisdk.error.SantanderChatErrorItem;
import br.com.santander.uisdk.error.SantanderErrorItem;
import br.com.santander.uisdk.error.SantanderErrorView;
import grs;
import hnq;
import hnr;
import hns;
import hnt;
import hnu;
import hnv;
import hxu;
import mxn;

public class EmpChatActivity extends grs implements hnt {
  public static final String a = "EXTRA_TYPE";
  
  private SantanderErrorView b;
  
  private hnu c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private void a() {
    String str = c();
    if (str == null)
      str = getString(2131298998); 
    c(str);
  }
  
  public static void a(Context paramContext, @hxu int paramInt) {
    Intent intent = new Intent(paramContext, EmpChatActivity.class);
    intent.putExtra("EXTRA_TYPE", paramInt);
    paramContext.startActivity(intent);
  }
  
  private void b() {
    this.b = (SantanderErrorView)findViewById(2131755769);
    this.b.setIcon(2130838462);
    this.b.setTextSubTitle("Fale com nossos especialistas e conheça outras opções que temos para você.");
    SantanderChatErrorItem santanderChatErrorItem = new SantanderChatErrorItem(getString(2131299188), (View.OnClickListener)new hnq(this));
    this.b.a(new SantanderErrorItem[] { (SantanderErrorItem)santanderChatErrorItem });
  }
  
  private String c() {
    if (getIntent() != null) {
      switch (getIntent().getIntExtra("EXTRA_TYPE", 0)) {
        default:
          return null;
        case 11:
          str = getString(2131298974);
          this.b.setTextTitle(String.format("%s %s", new Object[] { str, getString(2131298972) }));
          return str;
        case 10:
          str = getString(2131297072);
          this.b.setTextTitle(String.format("%s %s", new Object[] { str, getString(2131298972) }));
          return str;
        case 7:
          str = getString(2131298966);
          this.b.setTextTitle(String.format("%s %s", new Object[] { str, getString(2131298972) }));
          this.d = "CreditoFinanciamento_Antecipar13_Indisponivel_PopupChat_Acao";
          this.e = "Confirmar";
          this.f = "Cancelar";
          return str;
        case 8:
          str = getString(2131298967);
          this.b.setTextTitle(String.format("%s %s", new Object[] { str, getString(2131298972) }));
          this.d = "CreditoFinanciamento_AnteciparIR_Indisponivel_PopupChat_Acao";
          this.e = "Confirmar";
          this.f = "Cancelar";
          return str;
        case 9:
        case 12:
        case 13:
          str = getString(2131298999);
          this.b.setTextTitle(String.format("%s %s", new Object[] { str, getString(2131298972) }));
          return str;
        case 3:
          break;
      } 
      String str = getString(2131298551);
      this.b.setTextTitle(String.format("%s", new Object[] { getString(2131298973) }));
      return str;
    } 
  }
  
  public void a(String paramString) {
    b(paramString);
  }
  
  public void b(String paramString) {
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText(getString(2131296619));
    hnr hnr = new hnr(this, dialog, paramString);
    button1.setText(getString(2131296618));
    hns hns = new hns(this, dialog);
    mxn.a(this.i, dialog, getString(2131298988), getString(2131296563), (View.OnClickListener)hnr, (View.OnClickListener)hns);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968670);
    this.c = (hnu)new hnv(this);
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\chat\presentation\EmpChatActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */