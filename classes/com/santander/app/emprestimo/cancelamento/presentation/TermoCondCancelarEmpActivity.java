package com.santander.app.emprestimo.cancelamento.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.santander.app.emprestimo.acordo.presentation.TermoCondicaoActivity;
import hgb;

public class TermoCondCancelarEmpActivity extends TermoCondicaoActivity {
  private static final String c = "";
  
  public static void b(Context paramContext, hgb paramhgb) {
    Intent intent = new Intent(paramContext, TermoCondCancelarEmpActivity.class);
    intent.putExtra("android.intent.extra.TITLE", paramhgb.b());
    intent.putExtra("android.intent.extra.TEXT", (CharSequence)paramhgb.j());
    intent.putExtra("", paramhgb.g());
    paramContext.startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\cancelamento\presentation\TermoCondCancelarEmpActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */