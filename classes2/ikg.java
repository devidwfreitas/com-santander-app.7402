import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.santander.app.FazerPagamentoActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class ikg extends Fragment {
  private final String a = "FazerPagamentoContasFragment";
  
  private List<Conta> b;
  
  private Carrossel c;
  
  private View d;
  
  private EditText e;
  
  private EditText f;
  
  private EditText g;
  
  private EditText h;
  
  private mip i = (mip)miq.C();
  
  private void a(View paramView) {
    int j;
    byte b = 0;
    this.b = new ArrayList<Conta>();
    int i = 0;
    while (true) {
      j = b;
      if (i < this.i.f().q().a().size()) {
        Conta conta = this.i.f().q().a().get(i);
        this.b.add(conta);
        i++;
        continue;
      } 
      break;
    } 
    while (j < this.i.f().s().d().size()) {
      Conta conta = new Conta();
      conta.setAgencia(((ghu)this.i.f().s().d().get(j)).s());
      conta.setCuenta(((ghu)this.i.f().s().d().get(j)).d());
      conta.setValor(((ghu)this.i.f().s().d().get(j)).c());
      conta.setDescricao(((ghu)this.i.f().s().d().get(j)).a());
      conta.setNomeBanco("CARTAOPAG");
      this.b.add(conta);
      j++;
    } 
    Carrossel carrossel = (Carrossel)paramView.findViewById(2131757239);
    carrossel.setAdapter(new foo(paramView.getContext(), (List)this.b));
    this.d = paramView;
    carrossel.setListener(new ikk(this));
    a(paramView, true);
    Bundle bundle = getActivity().getIntent().getExtras();
    if (bundle != null)
      carrossel.setCurrentItem(bundle.getInt("conta")); 
  }
  
  public void a(View paramView, boolean paramBoolean) {
    this.c = (Carrossel)paramView.findViewById(2131757241);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    ((FazerPagamentoActivity)getActivity()).a = new fos();
    ((FazerPagamentoActivity)getActivity()).a.a("PAGAR HOJE");
    ((FazerPagamentoActivity)getActivity()).a.b(simpleDateFormat.format(new Date()));
    vector.add(((FazerPagamentoActivity)getActivity()).a);
    if (paramBoolean) {
      ((FazerPagamentoActivity)getActivity()).b = new fos();
      ((FazerPagamentoActivity)getActivity()).b.a("AGENDAR");
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(new Date());
      calendar.add(5, 1);
      ((FazerPagamentoActivity)getActivity()).b.b(simpleDateFormat.format(calendar.getTime()));
      ((FazerPagamentoActivity)getActivity()).b.a(fot.PICKER);
      vector.add(((FazerPagamentoActivity)getActivity()).b);
    } 
    fou fou = new fou(paramView.getContext(), vector, (Activity)getActivity());
    this.c.setAdapter(fou);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969046, paramViewGroup, false);
    a(view);
    this.e = (EditText)view.findViewById(2131757302);
    this.f = (EditText)view.findViewById(2131757303);
    this.g = (EditText)view.findViewById(2131757304);
    this.h = (EditText)view.findViewById(2131757305);
    this.e.addTextChangedListener(new ikh(this));
    this.f.addTextChangedListener(new iki(this));
    this.g.addTextChangedListener(new ikj(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */