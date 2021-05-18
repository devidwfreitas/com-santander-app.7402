import android.app.DatePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.SpinnerAdapter;
import com.santander.app.segundaviacomprovantes.presentation.ListarComprovantesActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class knj implements kmi, kni {
  private knd a;
  
  private List<klu> b;
  
  private kmh c;
  
  private Calendar d;
  
  public knj(knd paramknd) {
    this.a = paramknd;
    this.c = new kmj(this);
  }
  
  public DatePickerDialog a(Button paramButton) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", new Locale("pt", "BR"));
    Calendar calendar = Calendar.getInstance();
    return new DatePickerDialog((Context)this.a.h(), new knk(this, paramButton, simpleDateFormat), calendar.get(1), calendar.get(2), calendar.get(5));
  }
  
  public void a() {
    Intent intent = new Intent((Context)this.a.h(), ListarComprovantesActivity.class);
    intent.putExtra("extraInformacoes", this.a.q());
    this.a.h().startActivity(intent);
  }
  
  public void a(Button paramButton, int paramInt1, int paramInt2, int paramInt3) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", new Locale("pt", "BR"));
    Calendar calendar = Calendar.getInstance();
    calendar.set(paramInt1, paramInt2, paramInt3);
    long l = calendar.getTimeInMillis();
    if (this.d != null) {
      this.d.add(5, 30);
      long l1 = this.d.getTimeInMillis();
      this.d.add(5, -30);
      if (this.d.getTimeInMillis() <= l && l <= l1) {
        calendar.set(paramInt1, paramInt2, paramInt3);
        paramButton.setText(simpleDateFormat.format(calendar.getTime()));
        return;
      } 
    } else {
      return;
    } 
    mxn.b(this.a.h(), this.a.h().getString(2131298125));
    paramButton.setText("");
  }
  
  public void a(List<klu> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this.a.h(), 2130969470, paramList);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.a.k().setAdapter((SpinnerAdapter)arrayAdapter);
    arrayAdapter.notifyDataSetChanged();
  }
  
  public void a(klt paramklt) {
    this.a.p();
    klu klu = new klu();
    klu.d("Selecione");
    this.b = new ArrayList<klu>();
    this.b.add(klu);
    for (int i = 0; i < paramklt.a().size(); i++) {
      klu = new klu();
      klu.d(((klw)paramklt.a().get(i)).b());
      klu.a(((klw)paramklt.a().get(i)).a());
      this.b.add(klu);
    } 
    a(this.b);
  }
  
  public DatePickerDialog b(Button paramButton) {
    Calendar calendar = Calendar.getInstance();
    return new DatePickerDialog((Context)this.a.h(), new knl(this, paramButton), calendar.get(1), calendar.get(2), calendar.get(5));
  }
  
  public void b() {
    ArrayAdapter arrayAdapter = ArrayAdapter.createFromResource((Context)this.a.h(), 2131689499, 2130969470);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.a.j().setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void b(klt paramklt) {
    this.a.p();
    if (paramklt.getConfirmacao() != null) {
      if (paramklt.getConfirmacao().equalsIgnoreCase("ERRO")) {
        this.a.a(paramklt.getMensagemErro());
        return;
      } 
      this.a.n();
      return;
    } 
    this.a.n();
  }
  
  public void c() {
    this.a.o();
    this.c.a();
  }
  
  public void d() {
    mxn.c(this.a.h());
  }
  
  public String e() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", new Locale("pt", "BR"));
    Calendar calendar = Calendar.getInstance();
    calendar.add(6, -7);
    return simpleDateFormat.format(calendar.getTime());
  }
  
  public String f() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", new Locale("pt", "BR"));
    Calendar calendar = Calendar.getInstance();
    calendar.add(6, -15);
    return simpleDateFormat.format(calendar.getTime());
  }
  
  public String g() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", new Locale("pt", "BR"));
    Calendar calendar = Calendar.getInstance();
    calendar.add(6, -30);
    return simpleDateFormat.format(calendar.getTime());
  }
  
  public String h() {
    return (new SimpleDateFormat("yyyyMMdd", new Locale("pt", "BR"))).format(Calendar.getInstance().getTime());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */