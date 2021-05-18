import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.widget.EditText;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class jwa implements jto, jvz {
  private Activity a;
  
  private jvc b;
  
  private jtn c;
  
  private jsr d;
  
  private Conta e;
  
  private ghu f;
  
  private Object g;
  
  private mip h;
  
  public jwa(Activity paramActivity, jsr paramjsr, jvc paramjvc) {
    this.a = paramActivity;
    this.b = paramjvc;
    this.d = paramjsr;
    this.c = new jtp(this.a, paramjsr, this);
    this.h = (mip)miq.C();
  }
  
  private int a(Calendar paramCalendar1, Calendar paramCalendar2) {
    if (paramCalendar1 == null || paramCalendar2 == null)
      return 0; 
    int j = (int)((paramCalendar2.getTimeInMillis() - paramCalendar1.getTimeInMillis()) / 86400000L);
    int i = j;
    return (j <= 0) ? 0 : i;
  }
  
  private boolean a(jsr paramjsr, String paramString) {
    try {
      String str = paramjsr.q();
      Calendar calendar1 = Calendar.getInstance();
      calendar1.setTime(nak.a(str, "yyyyMMdd"));
      Calendar calendar2 = Calendar.getInstance();
      calendar2.setTime(nak.a(paramString, "dd/MM/yyyy"));
      return calendar2.after(calendar1);
    } catch (Exception exception) {
      Log.e(jwa.class.getSimpleName(), Log.getStackTraceString(exception));
      return false;
    } 
  }
  
  private int b(Calendar paramCalendar1, Calendar paramCalendar2) {
    int j = 0;
    int k = a(paramCalendar1, paramCalendar2);
    int i = 0;
    while (i < k) {
      int m = j;
      if (paramCalendar1.get(7) != 7) {
        m = j;
        if (paramCalendar1.get(7) != 1)
          m = j + 1; 
      } 
      paramCalendar1.add(5, 1);
      i++;
      j = m;
    } 
    return j;
  }
  
  private boolean b(jsr paramjsr, String paramString) {
    boolean bool = false;
    try {
      String str = paramjsr.q();
      Calendar calendar1 = Calendar.getInstance();
      calendar1.setTime(nak.a(str, "yyyyMMdd"));
      Calendar calendar2 = Calendar.getInstance();
      calendar2.setTime(nak.a(paramString, "dd/MM/yyyy"));
      int i = b(calendar2, calendar1);
      if (i > 21)
        bool = true; 
      return bool;
    } catch (Exception exception) {
      Log.e(jwa.class.getSimpleName(), Log.getStackTraceString(exception));
      return false;
    } 
  }
  
  private boolean b(jss paramjss) {
    if (this.e == null && this.f == null) {
      this.b.a(this.a.getString(2131298192));
      return false;
    } 
    if (paramjss.b().equals("R$ 0,00")) {
      this.b.a(this.a.getString(2131298235));
      return false;
    } 
    return true;
  }
  
  public String a(jsr paramjsr, String paramString1, String paramString2, String paramString3) {
    double d;
    int i;
    if (mzt.a(paramString1)) {
      i = 0;
    } else {
      i = Integer.parseInt(paramString1);
    } 
    if (mzt.a(paramString2) || paramString2.equals("R$ 0,00")) {
      d = 0.0D;
    } else {
      d = Double.parseDouble(paramString2.replace("R$ ", "").replace(".", "").replace(",", "."));
    } 
    return a(paramjsr, paramString3) ? "Data de agendamento deve ser anterior ou igual a data de vencimento." : (b(paramjsr, paramString3) ? "Antecipação deve ser menor ou igual a 21 dias úteis." : ((i == 0 && d == 0.0D) ? "Favor preencher quantidade de meses e valor máximo do pagamento." : ((i == 0) ? "Número de meses recorrentes deve ser maior que zero." : ((d == 0.0D) ? "Valor máximo deve ser maior que R$ 0,00." : null))));
  }
  
  public void a() {}
  
  public void a(EditText paramEditText) {
    guj guj = new guj(true);
    guj.a(paramEditText);
    paramEditText.addTextChangedListener(guj);
  }
  
  public void a(Conta paramConta) {
    this.e = paramConta;
    this.f = null;
  }
  
  public void a(ghu paramghu) {
    this.f = paramghu;
    this.e = null;
    this.b.b();
  }
  
  public void a(Object paramObject) {
    this.g = paramObject;
  }
  
  public void a(List<Conta> paramList, List<ghu> paramList1) {
    ArrayList<anb> arrayList = new ArrayList();
    arrayList.addAll(gmy.a(paramList));
    arrayList.addAll(gmy.b(paramList1));
    this.b.a(arrayList);
    this.b.e();
  }
  
  public void a(jsr paramjsr) {
    this.b.a(paramjsr);
  }
  
  public void a(jss paramjss) {
    if (b(paramjss)) {
      if (c()) {
        paramjss.setConta(this.e.getCuenta());
        paramjss.setAgencia(this.e.getAgencia());
      } else {
        paramjss.a(this.f.H());
        paramjss.setAgencia(this.h.f().f());
        paramjss.setConta(this.h.f().g());
      } 
      this.c.a(paramjss);
    } 
  }
  
  public void b() {
    d();
  }
  
  public void b(jsr paramjsr) {
    if (paramjsr != null && !TextUtils.isEmpty(paramjsr.getMensagemErro())) {
      this.b.a(paramjsr.getMensagemErro());
      return;
    } 
    this.b.a(this.a.getString(2131297343));
  }
  
  public boolean c() {
    return (this.e != null);
  }
  
  public void d() {
    this.c.c();
  }
  
  public Object e() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */