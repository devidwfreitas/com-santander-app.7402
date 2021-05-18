import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class mpx implements mmu, mpw {
  private Activity a;
  
  private mok b;
  
  private mmt c;
  
  private Conta d;
  
  private mlo e;
  
  public mpx(Activity paramActivity, mok parammok, Conta paramConta) {
    this.a = paramActivity;
    this.b = parammok;
    this.c = new mmv(this.a, this);
    this.d = paramConta;
    b();
    parammok.d();
    parammok.a();
    parammok.b();
  }
  
  private void b() {
    this.c.a(this.d);
  }
  
  private boolean c(mlo parammlo) {
    if (parammlo.i()) {
      if (!e(parammlo)) {
        this.b.a(this.a.getResources().getString(2131298208));
        return false;
      } 
      if (!f(parammlo)) {
        this.b.a(this.a.getResources().getString(2131298207));
        return false;
      } 
    } 
    return true;
  }
  
  private boolean d(mlo parammlo) {
    if ("TED".equalsIgnoreCase(parammlo.f()) && !parammlo.h() && !parammlo.i()) {
      Calendar calendar1 = Calendar.getInstance();
      Calendar calendar2 = Calendar.getInstance();
      calendar2.set(11, 16);
      calendar2.set(12, 30);
      return calendar1.before(calendar2);
    } 
    return true;
  }
  
  private boolean e(mlo parammlo) {
    boolean bool = true;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    Calendar calendar = Calendar.getInstance();
    try {
      calendar.setTimeInMillis(simpleDateFormat.parse(parammlo.g()).getTime());
      if (calendar.get(7) != 7) {
        int i = calendar.get(7);
        return (i == 1) ? false : bool;
      } 
      return false;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private boolean f(mlo parammlo) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    try {
      Date date1 = simpleDateFormat.parse(parammlo.g());
      Date date2 = new Date();
      date2.setTime(date2.getTime() + 31536000000L);
      long l1 = date1.getTime();
      long l2 = date2.getTime();
      return !(l1 > l2);
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public void a() {}
  
  public void a(mkx parammkx) {
    this.b.a(parammkx);
  }
  
  public void a(mlo parammlo) {
    if (c(parammlo)) {
      if (parammlo.i()) {
        this.b.e();
        return;
      } 
    } else {
      return;
    } 
    this.c.a(parammlo);
  }
  
  public void a(mlp parammlp) {
    this.b.f().g(parammlp.a());
    this.b.f().k(parammlp.f());
    if (this.b.f().f().equalsIgnoreCase("TED")) {
      this.b.f().h(parammlp.d());
      this.b.f().i(parammlp.e());
    } 
    if (this.b.f().c() != null)
      this.b.f().c().h(parammlp.c()); 
    this.b.f().a(parammlp.g());
    this.b.f().l(parammlp.i());
    this.b.g();
  }
  
  public void b(mlo parammlo) {
    this.c.a(parammlo);
  }
  
  public void b(mlp parammlp) {
    if (parammlp == null) {
      frq.d("Erro_Connection_Jab_Response_Html_Ou_Vazio", "FormaTransferenciaPresenterImpl.onErrorValidarTransferencia");
      mxn.a(this.a, "Atenção", "Desculpe, estamos resolvendo e você já vai conseguir usar seu App. Tente novamente mais tarde.(000053)", true);
      return;
    } 
    if (parammlp.getMensagemErro() != null) {
      if (parammlp.getMensagemErro().toLowerCase().contains("incorrect authentication")) {
        mxn.a("Não foi possível efetuar a transação. Por favor, tente novamente mais tarde.", true);
        return;
      } 
      this.b.a(parammlp.getMensagemErro());
      return;
    } 
    this.b.a("Erro ao efetuar Transferencias!");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */