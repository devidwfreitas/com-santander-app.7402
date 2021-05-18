package com.santander.app.emprestimo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import grs;
import hxu;

public class ServicoIndisponivelActivity extends grs {
  private static final String a = "EXTRA_TYPE";
  
  private int b;
  
  private void a() {
    c(b());
  }
  
  public static void a(Context paramContext, @hxu int paramInt) {
    Intent intent = new Intent(paramContext, ServicoIndisponivelActivity.class);
    intent.putExtra("EXTRA_TYPE", paramInt);
    paramContext.startActivity(intent);
  }
  
  private String b() {
    if (getIntent() != null)
      this.b = getIntent().getIntExtra("EXTRA_TYPE", 0); 
    switch (this.b) {
      default:
        return null;
      case 11:
        return getString(2131298974);
      case 10:
        return getString(2131297072);
      case 7:
        return getString(2131298966);
      case 8:
        return getString(2131298967);
      case 9:
        return getString(2131298998);
      case 3:
        break;
    } 
    return getString(2131298551);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968743);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\ServicoIndisponivelActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */