import android.content.Context;
import android.content.Intent;
import android.util.Log;
import chat.santander.com.modulochatsantander.polling.ChatPolling;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;
import java.util.ArrayList;

public class arf implements arp {
  private static final String a = arf.class.getName();
  
  private ard b = ard.a();
  
  private ChatActivity c;
  
  private Context d;
  
  private ArrayList<Long> e;
  
  public void a() {
    g();
    this.b.R();
    this.c = this.b.H();
    if (this.c != null)
      this.c.a(); 
  }
  
  public void b() {
    this.c = this.b.H();
    if (this.c != null) {
      this.c.b();
      return;
    } 
    if (ase.c(this.b)) {
      this.b.a((String)null, a);
      return;
    } 
  }
  
  public void c() {
    this.c = this.b.H();
    if (this.c != null)
      this.c.c(); 
  }
  
  public void d() {
    this.d = this.b.x();
    this.c = this.b.H();
    if (this.c != null) {
      this.c.d();
      return;
    } 
    Log.d("ChatEventReceiverImpl", "else : onMessageErrorDefault ");
  }
  
  public void e() {
    h();
  }
  
  public void f() {
    this.c = this.b.H();
    if (this.c != null)
      this.c.f(); 
  }
  
  void g() {
    if (this.e == null)
      this.e = new ArrayList<Long>(); 
    for (ark ark : this.b.r()) {
      if (!ark.i() && !this.e.contains(Long.valueOf(ark.a())) && ark.c() == apu.TextMessageSent) {
        this.e.add(Long.valueOf(ark.a()));
        aqw aqw = this.b.I();
        if (aqw != null)
          aqw.a(ark); 
      } 
    } 
  }
  
  void h() {
    this.d = this.b.x();
    if (ase.c(this.b)) {
      this.d.startService(new Intent(this.d, ChatPolling.class));
      return;
    } 
    Log.d(a, "handleSessionCreationResult dialog Desculpe, estamos resolvendo uma questão técnica e você já vai conseguir usar o chat.");
    ase.a(this.d, "Você pode tentar depois?", "Desculpe, estamos resolvendo uma questão técnica e você já vai conseguir usar o chat.", "Fechar", new arg(this), false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\arf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */