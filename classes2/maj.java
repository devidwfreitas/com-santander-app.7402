import android.app.DatePickerDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.AppCompatRadioButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class maj extends Fragment {
  private static final String a = "response-key";
  
  private TextView b;
  
  private FrameLayout c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private RelativeLayout g;
  
  private AppCompatRadioButton h;
  
  private RelativeLayout i;
  
  private AppCompatRadioButton j;
  
  private Button k;
  
  private SinisterActivity l;
  
  private kvb m;
  
  private Date n;
  
  private kvb o;
  
  public static maj a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    maj maj1 = new maj();
    maj1.setArguments(bundle);
    return maj1;
  }
  
  private void a() {
    this.b.setText(getResources().getString(2131298814));
    this.d.setText(this.m.e());
    this.f.setText(getResources().getString(2131299298));
    if (mhv.INSTANCE.containsRequest(kuq.DATE_PERIOD)) {
      kva kva = mhv.INSTANCE.getRequest(kuq.DATE_PERIOD);
      if (kva != null) {
        if (kva.b() != null)
          this.n = kva.b(); 
        if (kva.m() != null && kva.m().equals(kvf.PM)) {
          this.j.setChecked(true);
        } else if (kva.m() != null && kva.m().equals(kvf.AM)) {
          this.h.setChecked(true);
        } else {
          this.j.setChecked(false);
          this.h.setChecked(false);
        } 
      } 
    } 
    if (this.n == null)
      this.n = i(); 
    GregorianCalendar gregorianCalendar = new GregorianCalendar(mhj.d());
    gregorianCalendar.setTime(this.n);
    this.e.setText(mhj.a(gregorianCalendar.getTime(), "dd/MM/yyyy"));
    this.c.setOnClickListener(new mak(this));
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131755914);
    this.c = (FrameLayout)paramView.findViewById(2131756083);
    this.d = (TextView)paramView.findViewById(2131755789);
    this.e = (TextView)paramView.findViewById(2131756084);
    this.f = (TextView)paramView.findViewById(2131756085);
    this.g = (RelativeLayout)paramView.findViewById(2131756087);
    this.h = (AppCompatRadioButton)paramView.findViewById(2131756089);
    this.i = (RelativeLayout)paramView.findViewById(2131756090);
    this.j = (AppCompatRadioButton)paramView.findViewById(2131756092);
    this.k = (Button)paramView.findViewById(2131755733);
    h();
  }
  
  private void b() {
    GregorianCalendar gregorianCalendar = new GregorianCalendar(mhj.d());
    gregorianCalendar.setTime(this.n);
    DatePickerDialog datePickerDialog = new DatePickerDialog((Context)this.l, new mal(this, gregorianCalendar), gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
    datePickerDialog.getDatePicker().setMinDate(i().getTime());
    datePickerDialog.show();
  }
  
  private void c() {
    Calendar.getInstance().setTime(this.n);
    frq.d("Seguros_Sinistro_Acionar_Vistoria_Data", String.valueOf(mhj.a(this.n, "ddMMyyyy")));
    if (this.h.isChecked()) {
      frq.d("Seguros_Sinistro_Acionar_Vistoria_Periodo", "Manha");
      return;
    } 
    frq.d("Seguros_Sinistro_Acionar_Vistoria_Periodo", "Tarde");
  }
  
  private void d() {
    if (e()) {
      c();
      frq.d("Seguros_Sinistro_Acionar_Vistoria_Periodo_Acao", "Avancar");
      kva kva = new kva();
      String str = String.valueOf(mhj.a(this.n, "yyyyMMdd"));
      if (mhv.INSTANCE.getCoverageId() != -1L)
        kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
      kva.a(kuz.NEXT);
      kva.a(this.m.q());
      kva.a(kuq.DATE_PERIOD);
      kva.a(String.valueOf(str + f()));
      kva.a(this.n);
      kva.a(g());
      this.l.a(kva);
    } 
  }
  
  private boolean e() {
    return (this.j.isChecked() || this.h.isChecked());
  }
  
  private String f() {
    return this.j.isChecked() ? "Tarde" : (this.h.isChecked() ? "Manhã" : "nao_informado");
  }
  
  private kvf g() {
    return this.j.isChecked() ? kvf.PM : (this.h.isChecked() ? kvf.AM : null);
  }
  
  private void h() {
    this.k.setOnClickListener(new mao(this));
    this.g.setOnClickListener(new map(this));
    this.i.setOnClickListener(new maq(this));
  }
  
  private Date i() {
    int i = 0;
    Date date = new Date();
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    calendar.set(10, 0);
    calendar.set(12, 0);
    calendar.set(13, 0);
    calendar.set(14, 0);
    while (i < 3) {
      calendar.add(5, 1);
      if (calendar.get(7) == 7)
        calendar.add(5, 1); 
      if (calendar.get(7) == 1)
        calendar.add(5, 1); 
      i++;
    } 
    return calendar.getTime();
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.l = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.o = new kvb();
    if (getArguments() != null && getArguments().containsKey("response-key"))
      this.m = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969090, paramViewGroup, false);
    a(view);
    this.l.setTitle(getResources().getString(2131298655));
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\maj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */