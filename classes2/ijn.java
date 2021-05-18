import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.FazerPagamentoActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class ijn extends Fragment {
  private final String a = "FazerPagamentoCartorioFragment";
  
  private mip b = (mip)miq.C();
  
  private void a(View paramView) {
    ArrayList<Conta> arrayList = new ArrayList();
    for (int i = 0; i < this.b.f().q().a().size(); i++)
      arrayList.add(this.b.f().q().a().get(i)); 
    Carrossel carrossel = (Carrossel)paramView.findViewById(2131757239);
    carrossel.setAdapter(new foo(paramView.getContext(), (List)arrayList));
    Bundle bundle = getActivity().getIntent().getExtras();
    if (bundle != null)
      carrossel.setCurrentItem(bundle.getInt("conta")); 
    carrossel = (Carrossel)paramView.findViewById(2131757241);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    ((FazerPagamentoActivity)getActivity()).e = new fos();
    ((FazerPagamentoActivity)getActivity()).e.a("PAGAR HOJE");
    ((FazerPagamentoActivity)getActivity()).e.b(simpleDateFormat.format(new Date()));
    ((FazerPagamentoActivity)getActivity()).f = new fos();
    ((FazerPagamentoActivity)getActivity()).f.a("AGENDAR");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    ((FazerPagamentoActivity)getActivity()).f.b(simpleDateFormat.format(calendar.getTime()));
    ((FazerPagamentoActivity)getActivity()).f.a(fot.PICKER);
    vector.add(((FazerPagamentoActivity)getActivity()).e);
    vector.add(((FazerPagamentoActivity)getActivity()).f);
    carrossel.setAdapter(new fou(paramView.getContext(), vector, (Activity)getActivity()));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969035, paramViewGroup, false);
    a(view);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */