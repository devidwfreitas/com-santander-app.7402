import android.content.Intent;
import android.view.View;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class kjd {
  private static final String g = "RecargaConfirmacaoActivity";
  
  private kjf a;
  
  private int b;
  
  private Intent c;
  
  private kid d;
  
  private kic e;
  
  private kgj f;
  
  public kjd(kjf paramkjf) {
    this.a = paramkjf;
    paramkjf.a();
  }
  
  private void b() {
    this.e = (kic)this.c.getSerializableExtra("response");
    this.a.c();
    if (this.e != null) {
      String str = String.format(Locale.getDefault(), "(%s) %s", new Object[] { this.e.j().substring(3), this.e.ae() });
      this.a.b(str);
      this.a.a(this.e.o());
      this.a.d(naj.f(this.e.ac()));
      this.a.a("A efetivação da transação está sujeito a disponibilidade do saldo no dia", 2131623937);
    } 
  }
  
  private void c() {
    this.e = (kic)this.c.getSerializableExtra("response");
    this.a.b();
    if (this.e != null) {
      String str1;
      String str2;
      String str3 = String.format(Locale.getDefault(), "(%s) %s", new Object[] { this.e.j().substring(2, 5), this.e.ae() });
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("ddMMyy");
      SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("dd/MM/yyyy");
      try {
        str2 = simpleDateFormat3.format(simpleDateFormat2.parse(this.e.n()));
        str1 = simpleDateFormat3.format(simpleDateFormat1.parse(this.e.m()));
      } catch (ParseException parseException) {
        str2 = "";
        str1 = "";
      } 
      this.a.b(str3);
      this.a.a(this.e.f());
      this.a.d(naj.f(this.e.ac()));
      kjf kjf1 = this.a;
      if (this.e.e().equalsIgnoreCase("s")) {
        str3 = "Semanal";
      } else {
        str3 = "Mensal";
      } 
      kjf1.e(str3);
      this.a.f(str2);
      if (this.e.Y().equalsIgnoreCase("true")) {
        this.a.g("Indeterminado");
      } else {
        this.a.g(str1);
      } 
      this.a.a("A efetivação da transação está sujeito a disponibilidade do saldo no dia", 2131623937);
    } 
  }
  
  private void d() {
    this.d = (kid)this.c.getSerializableExtra("response");
    this.a.b();
    if (this.d != null) {
      String str1;
      String str2;
      String str3 = String.format(Locale.getDefault(), "(%s) %s", new Object[] { this.d.areaCelular, this.d.D() });
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("ddMMyy");
      SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("dd/MM/yyyy");
      try {
        str2 = simpleDateFormat3.format(simpleDateFormat2.parse(this.d.dataInicio));
        str1 = simpleDateFormat3.format(simpleDateFormat1.parse(this.d.dataFim));
      } catch (ParseException parseException) {
        str2 = "";
        str1 = "";
      } 
      this.a.b(str3);
      this.a.a(this.d.a);
      this.a.d(naj.f(this.d.valorRecarga));
      kjf kjf1 = this.a;
      if (this.d.periodo.equalsIgnoreCase("s")) {
        str3 = "Semanal";
      } else {
        str3 = "Mensal";
      } 
      kjf1.e(str3);
      this.a.f(str2);
      if (this.d.periodoIndeterminado.equalsIgnoreCase("true")) {
        this.a.g("Indeterminado");
      } else {
        this.a.g(str1);
      } 
      this.a.a("A efetivação da transação está sujeito a disponibilidade do saldo no dia", 2131623937);
    } 
  }
  
  private void e() {
    this.f = (kgj)this.c.getSerializableExtra("response");
    this.a.b();
    if (this.f != null) {
      String str1;
      String str2;
      String str3 = String.format(Locale.getDefault(), "(%s) %s", new Object[] { this.f.areaCelular, this.f.E() });
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("ddMMyy");
      SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("dd/MM/yyyy");
      try {
        str2 = simpleDateFormat3.format(simpleDateFormat2.parse(this.f.dataInicio));
        str1 = simpleDateFormat3.format(simpleDateFormat1.parse(this.f.dataFim));
      } catch (ParseException parseException) {
        str2 = "";
        str1 = "";
      } 
      this.a.b(str3);
      this.a.a(this.f.b);
      this.a.d(naj.f(this.f.valorRecarga));
      kjf kjf1 = this.a;
      if (this.f.periodo.equalsIgnoreCase("s")) {
        str3 = "Semanal";
      } else {
        str3 = "Mensal";
      } 
      kjf1.e(str3);
      this.a.f(str2);
      if (this.f.periodoIndeterminado.equalsIgnoreCase("true")) {
        this.a.g("Indeterminado");
      } else {
        this.a.g(str1);
      } 
      this.a.a("Confirme os dados e clique em confirmar para cancelar o agendamento", 2131623961);
    } 
  }
  
  public View.OnClickListener a() {
    return new kje(this);
  }
  
  public void a(Intent paramIntent) {
    if (paramIntent != null) {
      this.c = paramIntent;
      this.b = paramIntent.getIntExtra("tipo_recarga", 0);
      switch (this.b) {
        default:
          return;
        case 0:
          b();
          return;
        case 1:
          c();
          return;
        case 2:
          d();
          return;
        case 3:
          break;
      } 
      e();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */