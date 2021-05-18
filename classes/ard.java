import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import chat.santander.com.modulochatsantander.receiver.ChatEventReceiver;
import chat.santander.com.modulochatsantander.tasks.EndSession;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class ard implements Serializable {
  private static final String a = "[ChatBase]";
  
  private static final long b = 2027245451950821321L;
  
  private static volatile ard c;
  
  private List<ark> A;
  
  private String B;
  
  private String C;
  
  private String D;
  
  private String E;
  
  private String F;
  
  private String G;
  
  private String H;
  
  private String I;
  
  private String J;
  
  private Integer K;
  
  private Integer L;
  
  private boolean M;
  
  private String N;
  
  private boolean O;
  
  private boolean d;
  
  private boolean e;
  
  private boolean f;
  
  private boolean g;
  
  private boolean h;
  
  private boolean i;
  
  private apw j;
  
  private Context k;
  
  private arb l;
  
  private aqw m;
  
  private ChatEventReceiver n;
  
  private ChatActivity o;
  
  private arf p;
  
  private apa q;
  
  private arv r;
  
  private Date s;
  
  private int t;
  
  private int u;
  
  private int v;
  
  private int w;
  
  private Integer x;
  
  private Integer y;
  
  private List<ark> z;
  
  private boolean V() {
    return (this.u <= 10);
  }
  
  public static ard a() {
    if (c == null) {
      c = new ard();
      c.s = Calendar.getInstance().getTime();
    } 
    return c;
  }
  
  private void j(String paramString) {
    this.u++;
    Log.d("[ChatBase]", "Add tolerance error count +1 from : ".concat(ase.d(paramString)));
  }
  
  public int A() {
    return this.v;
  }
  
  public int B() {
    return this.w;
  }
  
  public arv C() {
    return this.r;
  }
  
  public arb D() {
    return this.l;
  }
  
  public String E() {
    return this.F;
  }
  
  public List<ark> F() {
    return this.A;
  }
  
  public boolean G() {
    return this.i;
  }
  
  public ChatActivity H() {
    return this.o;
  }
  
  public aqw I() {
    return this.m;
  }
  
  public String J() {
    return this.I;
  }
  
  public ChatEventReceiver K() {
    return this.n;
  }
  
  public boolean L() {
    return this.d;
  }
  
  public String M() {
    return this.J;
  }
  
  public Integer N() {
    return this.K;
  }
  
  public Integer O() {
    return this.L;
  }
  
  public boolean P() {
    return this.O;
  }
  
  public apa Q() {
    return this.q;
  }
  
  void R() {
    if (h()) {
      b(false);
      a(false);
      ase.a(this.k);
      b(false, "[ChatBase]");
      a(false, "[ChatBase]");
    } 
  }
  
  public boolean S() {
    return this.M;
  }
  
  public String T() {
    return this.N;
  }
  
  public void a(int paramInt) {
    if (paramInt != 200 && paramInt != 201 && paramInt != 204)
      return; 
    this.u = 0;
    Log.d("[ChatBase]", "Http Success, tolerance error restarted.");
  }
  
  public void a(Context paramContext) {
    this.k = paramContext;
  }
  
  public void a(apa paramapa) {
    this.q = paramapa;
  }
  
  public void a(apw paramapw) {
    this.j = paramapw;
  }
  
  public void a(aqw paramaqw) {
    this.m = paramaqw;
  }
  
  public void a(arb paramarb) {
    this.l = paramarb;
  }
  
  public void a(ark paramark) {
    ark ark1;
    if (paramark.b() == aqb.Agent) {
      Log.d("[ChatBase]", "addTranscriptManagerTyping 1 | " + paramark);
      if (this.A == null)
        this.A = new ArrayList<ark>(); 
      ark1 = (new aro(c, this.A)).a(this.A, paramark);
      Log.d("[ChatBase]", "addTranscriptManagerTyping 2 | " + ark1);
      if (ark1 == null && paramark.c() == apu.TypingStarted) {
        Log.d("[ChatBase]", "addTranscriptManagerTyping 3 add " + ark1);
        this.A.add(paramark);
        this.d = true;
        return;
      } 
    } else {
      return;
    } 
    if (ark1 != null && paramark.c() == apu.TypingStopped) {
      Log.d("[ChatBase]", "addTranscriptManagerTyping 3 remove " + ark1);
      this.A.remove(ark1);
      this.d = true;
      return;
    } 
    this.d = false;
  }
  
  public void a(arv paramarv) {
    this.r = paramarv;
  }
  
  public void a(ChatActivity paramChatActivity) {
    this.o = paramChatActivity;
  }
  
  public void a(Integer paramInteger) {
    this.x = paramInteger;
  }
  
  public void a(String paramString) {
    this.D = paramString;
  }
  
  public void a(String paramString1, String paramString2) {
    Log.d("[ChatBase]", "**** setSessionChatId-> " + paramString2 + ": " + ase.a(paramString1));
    this.E = paramString1;
  }
  
  public void a(String paramString1, String paramString2, arb paramarb) {
    if (q() == null)
      a(apw.Indisponivel); 
    c(paramString1);
    d(paramString2);
    a(Integer.valueOf(0));
    b(Integer.valueOf(0));
    if (!f()) {
      this.z = null;
      this.A = new ArrayList<ark>();
      b(true);
    } 
    this.l = paramarb;
    c();
  }
  
  public void a(Date paramDate) {
    this.s = paramDate;
  }
  
  public void a(List<ark> paramList) {
    this.A = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public void a(boolean paramBoolean, String paramString) {
    // Byte code:
    //   0: aload_2
    //   1: ldc_w '==> SET Chatbase memory polling '
    //   4: iload_1
    //   5: invokestatic valueOf : (Z)Ljava/lang/String;
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: aload_0
    //   16: monitorenter
    //   17: aload_0
    //   18: iload_1
    //   19: putfield h : Z
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   17	24	25	finally
    //   26	28	25	finally
  }
  
  public void b() {
    if (!f()) {
      this.z = null;
      this.A = new ArrayList<ark>();
      b(true);
      e(false);
    } 
    c();
  }
  
  public void b(int paramInt) {
    this.t = paramInt;
    j("[ChatBase]");
  }
  
  public void b(ark paramark) {
    if (this.z == null)
      this.z = Collections.synchronizedList(new ArrayList<ark>()); 
    if (paramark != null) {
      if (!paramark.b().equals(aqb.User)) {
        if (!this.z.contains(paramark))
          this.z.add(paramark); 
        Log.d("[ChatBase]", "List addTranscriptChecked: " + paramark);
        return;
      } 
    } else {
      return;
    } 
    Log.d("[ChatBase]", "List addTranscriptChecked not: " + paramark);
  }
  
  public void b(Integer paramInteger) {
    this.y = paramInteger;
  }
  
  public void b(String paramString) {
    this.G = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void b(boolean paramBoolean, String paramString) {
    Log.d("[ChatBase]", paramString.concat(" ==> Minimized ".concat(String.valueOf(paramBoolean))));
    this.e = paramBoolean;
  }
  
  public void c() {
    if (this.n == null) {
      this.n = new ChatEventReceiver(new Handler());
      this.p = new arf();
      this.n.a(this.p);
    } 
  }
  
  public void c(int paramInt) {
    this.v = paramInt;
  }
  
  public void c(ark paramark) {
    if (this.z == null)
      this.z = Collections.synchronizedList(new ArrayList<ark>()); 
    if (paramark != null) {
      this.z.add(paramark);
      Log.d("[ChatBase]", "List addTranscriptUnchecked: " + paramark);
    } 
  }
  
  public void c(Integer paramInteger) {
    this.K = paramInteger;
  }
  
  public void c(String paramString) {
    this.B = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public void d() {
    Log.d("[ChatBase]", "==> Chatbase memory END called end()");
    try {
      this.E = null;
      return;
    } catch (Exception exception) {
      Log.e("[ChatBase]", "==> Chatbase memory polling end exception ".concat(ase.a(exception.getMessage())));
      return;
    } finally {
      c.a(Integer.valueOf(0));
      c.b(Integer.valueOf(0));
      c.g();
      c.b(true);
      c.a((String)null, "[ChatBase]");
      c.a(false);
      c.b(0);
      c.b((String)null);
      c.e((String)null);
      c.a(false, "[ChatBase]");
      c.a(false);
      c.e(true);
      Log.d("[ChatBase]", "==> Chatbase memory END destroyed");
    } 
  }
  
  public void d(int paramInt) {
    this.w = paramInt;
  }
  
  public void d(Integer paramInteger) {
    this.L = paramInteger;
  }
  
  public void d(String paramString) {
    this.C = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public void e() {
    Log.d("[ChatBase]", "==> Chatbase purge init");
    ary.b().a();
    try {
      if (ase.d(c))
        (new are(this)).start(); 
      return;
    } catch (Exception exception) {
      Log.d("[ChatBase]", "==> Chatbase purge Exception " + exception.getMessage());
      return;
    } finally {
      a(false, "[ChatBase]");
      b(false, "[ChatBase]");
      c.d();
      Log.d("[ChatBase]", "==> Chatbase purge end");
    } 
  }
  
  public void e(String paramString) {
    this.H = paramString;
  }
  
  public void e(boolean paramBoolean) {
    this.O = paramBoolean;
  }
  
  public void f(String paramString) {
    this.F = paramString;
  }
  
  public void f(boolean paramBoolean) {
    Intent intent = new Intent(x(), EndSession.class);
    intent.putExtra("END_SESSION_EVENT", paramBoolean);
    x().startService(intent);
  }
  
  public boolean f() {
    boolean bool2 = false;
    boolean bool1 = true;
    if (ase.b(this.E))
      bool1 = false; 
    if (!V())
      bool1 = bool2; 
    Log.d("[ChatBase]", "isValidChatSession: " + bool1);
    return bool1;
  }
  
  public void g() {
    this.u = 11;
  }
  
  public void g(String paramString) {
    this.I = paramString;
  }
  
  public void g(boolean paramBoolean) {
    this.M = paramBoolean;
  }
  
  public void h(String paramString) {
    this.J = paramString;
  }
  
  public boolean h() {
    boolean bool;
    if (ase.g(this.z)) {
      if (this.f) {
        bool = true;
      } else {
        bool = false;
      } 
      Log.d("[ChatBase]", "==> Join do gerente true");
    } else {
      Log.d("[ChatBase]", "==> Join do gerente false");
      bool = false;
    } 
    if (ase.h(this.z)) {
      Log.d("[ChatBase]", "==> nova mensagem do gerente true");
    } else {
      Log.d("[ChatBase]", "==> nova mensagem do gerente false");
    } 
    return (bool && this.e && y());
  }
  
  public String i() {
    return this.D;
  }
  
  public void i(String paramString) {
    this.N = paramString;
  }
  
  public String j() {
    return this.E;
  }
  
  public int k() {
    return this.t;
  }
  
  public String l() {
    return this.G;
  }
  
  public String m() {
    return this.B;
  }
  
  public String n() {
    return this.C;
  }
  
  public Integer o() {
    return this.x;
  }
  
  public Integer p() {
    return this.y;
  }
  
  public apw q() {
    return this.j;
  }
  
  public List<ark> r() {
    if (this.z == null)
      this.z = Collections.synchronizedList(new ArrayList<ark>()); 
    return this.z;
  }
  
  public Date s() {
    return this.s;
  }
  
  public boolean t() {
    return this.h;
  }
  
  public boolean u() {
    return this.e;
  }
  
  public boolean v() {
    return this.g;
  }
  
  public void w() {
    this.t = 0;
    this.G = null;
    this.u = 0;
  }
  
  public Context x() {
    return this.k;
  }
  
  public boolean y() {
    return this.f;
  }
  
  public String z() {
    return this.H;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */