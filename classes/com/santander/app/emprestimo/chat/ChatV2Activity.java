package com.santander.app.emprestimo.chat;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import br.com.santander.uisdk.error.SantanderChatErrorItem;
import br.com.santander.uisdk.error.SantanderErrorItem;
import br.com.santander.uisdk.error.SantanderErrorView;
import grs;
import hnm;
import hnn;
import hno;
import hys;
import miq;

public class ChatV2Activity extends grs {
  @SuppressLint({"StaticFieldLeak"})
  private static hno b;
  
  private SantanderErrorView a;
  
  private void b() {
    this.a = (SantanderErrorView)findViewById(2131755769);
    c(hno.a(b));
    c();
    d();
    e();
  }
  
  private void c() {
    this.a.setIcon(hno.b(b));
  }
  
  private void d() {
    this.a.setTextTitle((CharSequence)hno.c(b));
    this.a.setTextSubTitle((CharSequence)hno.d(b));
  }
  
  private void e() {
    SantanderChatErrorItem santanderChatErrorItem = new SantanderChatErrorItem(hno.e(b).toString(), (View.OnClickListener)new hnm(this));
    this.a.a(new SantanderErrorItem[] { (SantanderErrorItem)santanderChatErrorItem });
  }
  
  private void f() {
    int i;
    if (miq.C().s()) {
      i = 2131296569;
    } else {
      i = 2131296568;
    } 
    hys.a((Context)this, 2131297207, i, 2131296370, 2131296776, (DialogInterface.OnClickListener)new hnn(this));
  }
  
  private void g() {
    if (hno.g(b) != null)
      hno.g(b).a(); 
  }
  
  private void h() {
    if (hno.g(b) != null)
      hno.g(b).b(); 
  }
  
  private void i() {
    if (hno.g(b) != null)
      hno.g(b).c(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968671);
    if (b == null)
      throw new IllegalArgumentException("builder not create!"); 
    g();
    b();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    b = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\chat\ChatV2Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */