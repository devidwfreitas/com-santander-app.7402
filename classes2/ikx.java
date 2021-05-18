import android.app.Activity;
import android.app.DatePickerDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import com.santander.app.FazerPagamentoActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Vector;

public class ikx extends Fragment implements DatePickerDialog.OnDateSetListener, Serializable {
  private static final long b = 1L;
  
  private final String a = "FazerPagamentoTitulosFragment";
  
  private Carrossel c;
  
  private View d;
  
  private List<Conta> e;
  
  private EditText f;
  
  private EditText g;
  
  private EditText h;
  
  private EditText i;
  
  private EditText j;
  
  private EditText k;
  
  private EditText l;
  
  private EditText m;
  
  private EditText n;
  
  private EditText o;
  
  private mip p = (mip)miq.C();
  
  private void a(View paramView) {
    int j;
    byte b = 0;
    this.e = new ArrayList<Conta>();
    int i = 0;
    while (true) {
      j = b;
      if (i < this.p.f().q().a().size()) {
        Conta conta = this.p.f().q().a().get(i);
        this.e.add(conta);
        i++;
        continue;
      } 
      break;
    } 
    while (j < this.p.f().s().d().size()) {
      Conta conta = new Conta();
      conta.setAgencia(((ghu)this.p.f().s().d().get(j)).s());
      conta.setCuenta(((ghu)this.p.f().s().d().get(j)).d());
      conta.setValor(((ghu)this.p.f().s().d().get(j)).c());
      conta.setDescricao(((ghu)this.p.f().s().d().get(j)).a());
      conta.setNomeBanco("CARTAOPAG");
      this.e.add(conta);
      j++;
    } 
    Carrossel carrossel = (Carrossel)paramView.findViewById(2131757239);
    carrossel.setAdapter(new foo(paramView.getContext(), (List)this.e));
    Bundle bundle = getActivity().getIntent().getExtras();
    if (bundle != null)
      carrossel.setCurrentItem(bundle.getInt("conta")); 
    this.d = paramView;
    carrossel.setListener(new ikz(this));
    a(paramView, true);
  }
  
  public void a(View paramView, boolean paramBoolean) {
    this.c = (Carrossel)paramView.findViewById(2131757241);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    ((FazerPagamentoActivity)getActivity()).c = new fos();
    ((FazerPagamentoActivity)getActivity()).c.a("PAGAR HOJE");
    ((FazerPagamentoActivity)getActivity()).c.b(simpleDateFormat.format(new Date()));
    vector.add(((FazerPagamentoActivity)getActivity()).c);
    if (paramBoolean) {
      ((FazerPagamentoActivity)getActivity()).d = new fos();
      ((FazerPagamentoActivity)getActivity()).d.a("AGENDAR");
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(new Date());
      calendar.add(5, 1);
      ((FazerPagamentoActivity)getActivity()).d.b(simpleDateFormat.format(calendar.getTime()));
      ((FazerPagamentoActivity)getActivity()).d.a(fot.PICKER);
      vector.add(((FazerPagamentoActivity)getActivity()).d);
    } 
    fou fou = new fou(paramView.getContext(), vector, (Activity)getActivity());
    this.c.setAdapter(fou);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969048, paramViewGroup, false);
    a(view);
    TextView textView = (TextView)view.findViewById(2131757317);
    if (textView != null)
      textView.setText(mzr.g()); 
    EditText editText = (EditText)view.findViewById(2131757313);
    guj guj = new guj();
    guj.a(editText);
    editText.addTextChangedListener(guj);
    this.h = (EditText)view.findViewById(2131757302);
    this.i = (EditText)view.findViewById(2131757303);
    this.j = (EditText)view.findViewById(2131757304);
    this.k = (EditText)view.findViewById(2131757305);
    this.l = (EditText)view.findViewById(2131757318);
    this.m = (EditText)view.findViewById(2131757319);
    this.n = (EditText)view.findViewById(2131757320);
    this.o = (EditText)view.findViewById(2131757321);
    this.h.addTextChangedListener(new iky(this));
    this.i.addTextChangedListener(new ila(this));
    this.j.addTextChangedListener(new ilb(this));
    this.k.addTextChangedListener(new ilc(this));
    this.l.addTextChangedListener(new ild(this));
    this.m.addTextChangedListener(new ile(this));
    this.n.addTextChangedListener(new ilf(this));
    this.f = (EditText)view.findViewById(2131757315);
    Calendar calendar = Calendar.getInstance(new Locale("pt", "BR"));
    this.f.setOnFocusChangeListener(new ilg(this, calendar));
    this.g = (EditText)view.findViewById(2131757313);
    this.o.addTextChangedListener(new ilh(this));
    return view;
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    DateFormat dateFormat = DateFormat.getDateFormat(getActivity().getApplicationContext());
    this.f.setText(dateFormat.format(calendar.getTime()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */