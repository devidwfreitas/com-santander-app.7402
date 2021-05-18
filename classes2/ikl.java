import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
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

public class ikl extends Fragment implements DatePickerDialog.OnDateSetListener, Serializable {
  private static final String a = "FazerPagamen...Fragment";
  
  private static final String b = "dd/MM/yyyy";
  
  private static final String c = "dd-MM-yyyy";
  
  private static final long d = 1L;
  
  private View e;
  
  private List<Conta> f;
  
  private transient FazerPagamentoActivity g;
  
  private LinearLayout h;
  
  private LinearLayout i;
  
  private Dialog j;
  
  private EditText k;
  
  private EditText l;
  
  private EditText m;
  
  private transient Carrossel n;
  
  private transient fuz o;
  
  private transient ikw p;
  
  private transient Carrossel q;
  
  private fur r;
  
  private ImageButton s;
  
  private EditText t;
  
  private EditText u;
  
  private EditText v;
  
  private EditText w;
  
  private TextView x;
  
  private transient mip y = (mip)miq.C();
  
  private String a(String paramString) {
    String str = paramString;
    if (paramString.length() > 12) {
      str = paramString.substring(0, 12);
      if (paramString.length() > 24) {
        str = str + " " + paramString.substring(12, 24);
        if (paramString.length() > 36) {
          str = str + " " + paramString.substring(24, 36) + " " + paramString.substring(36);
          if (paramString.length() == 48) {
            d(paramString);
            return str;
          } 
        } else {
          return str + " " + paramString.substring(24);
        } 
      } else {
        return str + " " + paramString.substring(12);
      } 
    } else {
      return str;
    } 
    return str;
  }
  
  private void a(View paramView) {
    int j;
    byte b = 0;
    this.f = new ArrayList<Conta>();
    int i = 0;
    while (true) {
      j = b;
      if (i < this.y.f().q().a().size()) {
        this.f.add(this.y.f().q().a().get(i));
        i++;
        continue;
      } 
      break;
    } 
    while (j < this.y.f().s().d().size()) {
      Conta conta = new Conta();
      conta.setAgencia(((ghu)this.y.f().s().d().get(j)).s());
      conta.setCuenta(((ghu)this.y.f().s().d().get(j)).d());
      conta.setValor(((ghu)this.y.f().s().d().get(j)).c());
      conta.setDescricao(((ghu)this.y.f().s().d().get(j)).a());
      conta.setNomeBanco("CARTAOPAG");
      conta.setIndicadorMesmoTitular(((ghu)this.y.f().s().d().get(j)).u());
      this.f.add(conta);
      j++;
    } 
    this.q = (Carrossel)paramView.findViewById(2131757239);
    foo foo = new foo(paramView.getContext(), (List)this.f);
    this.q.setAdapter(foo);
    Bundle bundle = getActivity().getIntent().getExtras();
    if (bundle != null)
      this.q.setCurrentItem(bundle.getInt("conta")); 
    this.e = paramView;
    this.q.setListener(new ikt(this));
    a(paramView, true);
  }
  
  private String b(String paramString) {
    if (paramString.length() == 47)
      if (paramString.substring(paramString.length() - 14).length() == 14) {
        d(paramString);
      } else {
        this.l.setEnabled(true);
        this.k.setEnabled(true);
      }  
    String str = paramString;
    if (paramString.length() > 5) {
      str = paramString.substring(0, 5);
      if (paramString.length() > 10) {
        str = str + "." + paramString.substring(5, 10);
        if (paramString.length() > 15) {
          str = str + " " + paramString.substring(10, 15);
          if (paramString.length() > 21) {
            str = str + "." + paramString.substring(15, 21);
            if (paramString.length() > 26) {
              str = str + " " + paramString.substring(21, 26);
              if (paramString.length() > 32) {
                str = str + "." + paramString.substring(26, 32);
                if (paramString.length() > 33) {
                  str = str + " " + paramString.substring(32, 33);
                  return (paramString.length() > 34) ? (str + " " + paramString.substring(33)) : (str + " " + paramString.substring(33));
                } 
                return str + " " + paramString.substring(32);
              } 
              return str + "." + paramString.substring(26);
            } 
            return str + " " + paramString.substring(21);
          } 
          return str + "." + paramString.substring(15);
        } 
        return str + " " + paramString.substring(10);
      } 
    } else {
      return str;
    } 
    return str + "." + paramString.substring(5);
  }
  
  private String c(String paramString) {
    while (paramString.length() <= 46)
      paramString = paramString + "0"; 
    return paramString;
  }
  
  private void d(String paramString) {
    if (this.p == null || !this.p.a()) {
      this.p = new ikw(this, null);
      this.p.execute((Object[])new String[] { paramString, "1" });
    } 
  }
  
  public void a() {
    String str;
    if (this.m != null && this.m.getText().toString() != null) {
      str = this.m.getText().toString();
      if (((CheckBox)this.e.findViewById(2131757309)).isChecked()) {
        this.g.g.b(mzr.g());
        EditText editText = (EditText)this.e.findViewById(2131757312);
        editText.setText(editText.getText().toString().trim().replaceAll("[^A-Za-z_0-9\\s]", ""));
        this.g.g.a(String.valueOf(editText.getText()));
        editText = (EditText)this.e.findViewById(2131757285);
        editText.setText(editText.getText().toString().trim().replaceAll("[^A-Za-z_0-9\\s]", ""));
        this.g.g.c(String.valueOf(editText.getText()));
        this.g.g.a(fus.INSERT);
      } 
      if (this.o != null && (this.o.k().startsWith("VT") || this.o.k().startsWith("YK"))) {
        this.g.confirmarTitulos(str, this.o.f().equals("S"));
        return;
      } 
    } else {
      return;
    } 
    this.g.confirmarContas(str);
  }
  
  public void a(View paramView, boolean paramBoolean) {
    this.n = (Carrossel)paramView.findViewById(2131757241);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    ((FazerPagamentoActivity)getActivity()).a = new fos();
    ((FazerPagamentoActivity)getActivity()).a.a("PAGAR HOJE");
    ((FazerPagamentoActivity)getActivity()).a.b(simpleDateFormat.format(new Date()));
    ((FazerPagamentoActivity)getActivity()).c = ((FazerPagamentoActivity)getActivity()).a;
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
      ((FazerPagamentoActivity)getActivity()).d = ((FazerPagamentoActivity)getActivity()).b;
    } 
    fou fou = new fou(paramView.getContext(), vector, (Activity)getActivity());
    this.n.setAdapter(fou);
  }
  
  public void onAttach(Activity paramActivity) {
    this.g = (FazerPagamentoActivity)paramActivity;
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969047, paramViewGroup, false);
    this.h = (LinearLayout)view.findViewById(2131757314);
    this.i = (LinearLayout)view.findViewById(2131757316);
    this.m = (EditText)view.findViewById(2131757302);
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131757310);
    CheckBox checkBox = (CheckBox)view.findViewById(2131757309);
    checkBox.setOnCheckedChangeListener(new ikm(this, checkBox, linearLayout, (EditText)view.findViewById(2131757312)));
    a(view);
    this.x = (TextView)view.findViewById(2131757317);
    if (this.x != null)
      this.x.setText(mzr.g()); 
    this.t = (EditText)this.e.findViewById(2131757285);
    this.u = (EditText)this.e.findViewById(2131757312);
    this.v = (EditText)this.e.findViewById(2131757313);
    guj guj = new guj();
    guj.a(this.v);
    this.v.addTextChangedListener(guj);
    this.w = (EditText)this.e.findViewById(2131757315);
    this.s = (ImageButton)view.findViewById(2131757308);
    this.s.setVisibility(8);
    this.s.setOnClickListener(new ikn(this));
    this.r = hau.a().C();
    if (this.r != null) {
      hau.a().a((fur)null);
      linearLayout.setVisibility(0);
      checkBox.setVisibility(8);
      if (this.t != null) {
        this.m.setText(FazerPagamentoActivity.a());
        this.o = FazerPagamentoActivity.b();
        this.v.setText(this.o.m());
        String str = nak.a(this.o.d(), "dd-MM-yyyy", "dd/MM/yyyy");
        this.w.setText(str);
        this.t.setText(this.r.c());
        this.t.setEnabled(false);
      } 
      if (this.u != null) {
        this.m.setText(FazerPagamentoActivity.a());
        this.o = FazerPagamentoActivity.b();
        this.v.setText(this.o.m());
        String str = nak.a(this.o.d(), "dd-MM-yyyy", "dd/MM/yyyy");
        this.w.setText(str);
        this.u.setText(this.r.a());
        this.u.setEnabled(false);
      } 
      if (this.x != null) {
        String str;
        TextView textView = this.x;
        if (this.r.b() != null) {
          str = this.r.b();
        } else {
          str = mzr.g();
        } 
        textView.setText(str);
      } 
    } 
    this.m.addTextChangedListener(new iko(this));
    this.k = (EditText)view.findViewById(2131757315);
    Calendar calendar = Calendar.getInstance(new Locale("pt", "BR"));
    ikp ikp = new ikp(this, calendar);
    this.k.setOnFocusChangeListener(new ikq(this, ikp, calendar));
    this.k.setOnClickListener(new ikr(this, ikp, calendar));
    this.l = (EditText)view.findViewById(2131757313);
    ((Button)view.findViewById(2131757238)).setOnClickListener(new iks(this));
    return view;
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    DateFormat dateFormat = DateFormat.getDateFormat(getActivity().getApplicationContext());
    this.k.setText(dateFormat.format(calendar.getTime()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */