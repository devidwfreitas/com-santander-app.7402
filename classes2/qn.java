import android.app.Activity;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class qn extends acr {
  private final ImageButton a;
  
  private final TextView c;
  
  private Context d;
  
  private Activity e;
  
  private RecyclerView f;
  
  private List<qk> g;
  
  private LinearLayoutManager h;
  
  private ql i;
  
  private TextView j;
  
  private acg k;
  
  public qn(ack paramack) {
    super(paramack);
    boolean bool;
    this.d = paramack.getApplicationContext();
    this.e = (Activity)paramack;
    this.k = (acg)e().a();
    if (aca.a().f() == null) {
      paramack.findViewById(la.configurar_inv_main).setVisibility(8);
      paramack.findViewById(la.configurar_inv_loading).setVisibility(0);
      a(new qo(this, paramack));
    } 
    this.j = (TextView)paramack.findViewById(la.configurar_investimento_disclamer);
    this.f = (RecyclerView)paramack.findViewById(la.configurar_investimento_recycler_view);
    this.f.setHasFixedSize(true);
    this.f.setNestedScrollingEnabled(false);
    tp tp = aca.a().f();
    this.g = new ArrayList<qk>();
    this.g.add(a(true));
    if (tp != null && tp.b() != null && !tp.b().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.g.add(b(bool));
    TextView textView = this.j;
    if (bool)
      b = 8; 
    textView.setVisibility(b);
    this.h = new LinearLayoutManager(this.d);
    this.f.setLayoutManager((RecyclerView.LayoutManager)this.h);
    this.i = new ql(this.d, this.g);
    this.f.setAdapter(this.i);
    this.a = (ImageButton)paramack.findViewById(la.header_cancel);
    this.a.setOnClickListener(new qp(this, paramack));
    this.a.setImageResource(kz.ic_back);
    this.c = (TextView)paramack.findViewById(la.header_titulo);
  }
  
  private qk a(boolean paramBoolean) {
    qk qk = new qk();
    qk.a(Boolean.valueOf(paramBoolean));
    qk.a(this.d.getString(lg.config_inv_txt_escolher_produto_titulo));
    qk.b(this.d.getString(lg.config_inv_txt_escolher_produto_conteudo));
    qk.a(ContextCompat.getDrawable(this.d, kz.ic_invest_valor_produto));
    qk.a(new qq(this));
    return qk;
  }
  
  private qk b(boolean paramBoolean) {
    qk qk = new qk();
    qk.a(Boolean.valueOf(paramBoolean));
    qk.a(this.d.getString(lg.config_inv_txt_informar_valor_titulo));
    qk.b(this.d.getString(lg.config_inv_txt_informar_valor_conteudo));
    qk.a(ContextCompat.getDrawable(this.d, kz.ic_invest_valor_primary));
    qk.a(new qr(this));
    return qk;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\qn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */