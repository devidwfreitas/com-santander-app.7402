import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lvz extends Fragment {
  public static final String a = "note-list-key";
  
  public static final String b = "sinister-details-key";
  
  public static final String c = "sinister-key";
  
  public static final String d = "send-tag";
  
  private List<kvs> A;
  
  private kvp B;
  
  private kvr C;
  
  private SinisterDetailActivity D;
  
  private kya e = new kyb();
  
  private TextView f;
  
  private LinearLayout g;
  
  private TextView h;
  
  private View i;
  
  private LinearLayout j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private TextView o;
  
  private TextView p;
  
  private TextView q;
  
  private LinearLayout r;
  
  private TextView s;
  
  private LinearLayout t;
  
  private LinearLayout u;
  
  private TextView v;
  
  private TextView w;
  
  private TextView x;
  
  private lyp y;
  
  private Button z;
  
  public static lvz a(List<kvs> paramList, kvp paramkvp, kvr paramkvr) {
    Bundle bundle = new Bundle();
    bundle.putString("note-list-key", mys.a().b(paramList));
    bundle.putString("sinister-details-key", mys.a().b(paramkvr));
    bundle.putString("sinister-key", mys.a().b(paramkvp));
    lvz lvz1 = new lvz();
    lvz1.setArguments(bundle);
    return lvz1;
  }
  
  private void a() {
    if (!mhg.a().b("send-tag")) {
      if (this.g.getVisibility() == 0) {
        mhg.a().a("send-tag", "tagSent");
        frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao", "PagamentoEfetuado");
        return;
      } 
    } else {
      return;
    } 
    if (this.u.getVisibility() == 0) {
      mhg.a().a("send-tag", "tagSent");
      frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao", "Negado");
      return;
    } 
  }
  
  private void a(View paramView) {
    this.f = (TextView)paramView.findViewById(2131757348);
    this.g = (LinearLayout)paramView.findViewById(2131757349);
    this.h = (TextView)paramView.findViewById(2131757350);
    this.i = paramView.findViewById(2131757351);
    this.j = (LinearLayout)paramView.findViewById(2131757352);
    this.k = (TextView)paramView.findViewById(2131757353);
    this.l = (TextView)paramView.findViewById(2131757354);
    this.m = (TextView)paramView.findViewById(2131757355);
    this.n = (TextView)paramView.findViewById(2131757356);
    this.o = (TextView)paramView.findViewById(2131757357);
    this.p = (TextView)paramView.findViewById(2131757358);
    this.q = (TextView)paramView.findViewById(2131757359);
    this.r = (LinearLayout)paramView.findViewById(2131757362);
    this.s = (TextView)paramView.findViewById(2131757364);
    this.t = (LinearLayout)paramView.findViewById(2131757363);
    this.u = (LinearLayout)paramView.findViewById(2131757365);
    this.v = (TextView)paramView.findViewById(2131757366);
    this.w = (TextView)paramView.findViewById(2131757361);
    this.x = (TextView)paramView.findViewById(2131757360);
    this.z = (Button)paramView.findViewById(2131757367);
    this.z.setPaintFlags(this.z.getPaintFlags() | 0x8);
    this.z.setOnClickListener(d());
  }
  
  private void a(String paramString1, String paramString2) {
    String str;
    if (!TextUtils.isEmpty(paramString1)) {
      str = paramString1;
      if (!TextUtils.isEmpty(paramString2))
        str = paramString1 + "\n" + paramString2; 
    } else if (!TextUtils.isEmpty(paramString2)) {
      str = paramString2;
    } else {
      str = "";
    } 
    if (!TextUtils.isEmpty(str.replaceAll(" ", "")))
      a(str); 
  }
  
  private void a(boolean paramBoolean) {
    if (paramBoolean) {
      frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PagamentoAprovado_Acao", "Contestar");
      return;
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PagamentoRecusado_Acao", "Contestar");
  }
  
  private boolean b() {
    boolean bool = false;
    return (this.g.getVisibility() == 0) ? true : ((this.u.getVisibility() == 0) ? false : bool);
  }
  
  private void c() {
    String str1 = "";
    String str2 = "";
    if (this.A != null && this.A.size() > 0) {
      int i = 0;
      while (true) {
        if (i < this.A.size()) {
          kvs kvs = this.A.get(i);
          if (kvs.c().equals("05")) {
            String str3;
            if (TextUtils.isEmpty(kvs.d())) {
              str3 = "";
            } else {
              str3 = kvs.d().substring(0, 3);
            } 
            if (str3.equals("006")) {
              str3 = kvs.d().replace(str3, "");
              str1 = str2;
              str2 = str3;
              continue;
            } 
            if (str3.equals("007")) {
              str3 = kvs.d().replace(str3, "");
              str2 = str1;
              str1 = str3;
              continue;
            } 
            this.g.setVisibility(0);
            this.u.setVisibility(8);
            if (str3.equals("002")) {
              this.w.setText(kvs.d().replace(str3, ""));
              str3 = str1;
              str1 = str2;
              str2 = str3;
              continue;
            } 
            if (str3.equals("003")) {
              if (!TextUtils.isEmpty(kvs.d())) {
                this.h.setText(mhj.a(mhj.x(kvs.d().replace(str3, "").toUpperCase().replace("VALOR DO PAGAMENTO:", ""))));
                str3 = str1;
                str1 = str2;
                str2 = str3;
                continue;
              } 
            } else {
              if (str3.equals("005")) {
                str3 = mhj.m(mhj.x(kvs.d().replace(str3, "")));
                try {
                  str3 = mhj.x(str3.toLowerCase().replace("data da transacao:", "").replace("00:00:00", "").replace("-", "/"));
                  this.x.setText(str3);
                } catch (Exception exception) {
                  exception.printStackTrace();
                  this.x.setText("");
                } 
                str3 = str1;
                str1 = str2;
                str2 = str3;
              } else {
                if (str3.equals("004")) {
                  String str5 = mhj.m(kvs.d().replaceAll("\\(", "").replaceAll("\\)", "").replaceAll(" ", "").replaceAll(":", "").toLowerCase());
                  str3 = str5.substring(str5.indexOf("banco") + 5, str5.indexOf("agencia"));
                  String str4 = str5.substring(str5.indexOf("agencia") + 7, str5.indexOf("conta"));
                  str5 = str5.substring(str5.indexOf("conta") + 5, str5.length());
                  this.l.setText(mhj.a(str3, '0', 3));
                  this.n.setText(mhj.a(str4, '0', 4));
                  this.p.setText(str5);
                } 
                str3 = str1;
                str1 = str2;
                str2 = str3;
              } 
              continue;
            } 
          } 
        } else {
          break;
        } 
        String str = str1;
        str1 = str2;
        str2 = str;
        i++;
        str = str2;
        str2 = str1;
        str1 = str;
      } 
      a(str1, str2);
      return;
    } 
    this.u.setVisibility(8);
    this.g.setVisibility(8);
  }
  
  private View.OnClickListener d() {
    return new lwa(this);
  }
  
  private void e() {
    Intent intent = new Intent((Context)this.D, ContestationActivity.class);
    intent.putExtra("sinister-key", mys.a().b(this.B));
    intent.putExtra("status-payment", b());
    startActivity(intent);
  }
  
  public void a(String paramString) {
    this.f.setText(getResources().getString(2131298356));
    this.v.setText(mhj.x(paramString));
    this.g.setVisibility(8);
    this.u.setVisibility(0);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterDetailActivity)
      this.D = (SinisterDetailActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("note-list-key"))
      this.A = new ArrayList<kvs>(Arrays.asList((Object[])mys.a().a(getArguments().getString("note-list-key"), kvs[].class))); 
    if (getArguments() != null && getArguments().containsKey("sinister-key"))
      this.B = mys.a().<kvp>a(getArguments().getString("sinister-key"), kvp.class); 
    if (getArguments() != null && getArguments().containsKey("sinister-details-key"))
      this.C = mys.a().<kvr>a(getArguments().getString("sinister-details-key"), kvr.class); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969055, paramViewGroup, false);
    a(view);
    c();
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */