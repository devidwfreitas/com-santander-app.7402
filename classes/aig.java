import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.text.Html;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class aig extends akb {
  private Activity a;
  
  private ajw b;
  
  private ajw c = null;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private EditText k;
  
  private TextView l;
  
  private ImageView m;
  
  private int n;
  
  private int o;
  
  private int p;
  
  private Button q;
  
  public aig(Activity paramActivity, ajw paramajw) {
    super(paramActivity);
    this.a = paramActivity;
    this.b = paramajw;
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.ajustar_limites);
    a();
  }
  
  public aig(Activity paramActivity, ajw paramajw1, ajw paramajw2) {
    super(paramActivity);
    this.a = paramActivity;
    this.b = paramajw1;
    this.c = paramajw2;
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.ajustar_limites);
    a();
  }
  
  private int b(String paramString) {
    paramString = paramString.replaceAll("[.]", "").replace(",00", "");
    return (paramString == null || paramString.isEmpty()) ? 0 : Integer.valueOf(paramString).intValue();
  }
  
  public void a() {
    this.m = (ImageView)this.a.findViewById(agg.edit_line_novo_limite);
    this.d = (TextView)this.a.findViewById(agg.product_name_text);
    this.e = (TextView)this.a.findViewById(agg.product_specifics_text);
    this.g = (TextView)this.a.findViewById(agg.contract_current_limit_text);
    this.h = (TextView)this.a.findViewById(agg.limite_maximo_text);
    this.i = (TextView)this.a.findViewById(agg.limite_minimo_text);
    this.j = (TextView)this.a.findViewById(agg.novo_limite_label_text);
    this.k = (EditText)this.a.findViewById(agg.ajuste_limite_edittext);
    this.l = (TextView)this.a.findViewById(agg.help_text);
    this.q = (Button)this.a.findViewById(agg.continuar_button);
    this.g.setText(this.a.getString(agl.money_value, new Object[] { this.b.f() }));
    this.h.setText(this.a.getString(agl.limite_maximo_de, new Object[] { this.b.g() }));
    this.i.setText(this.a.getString(agl.limite_minimo_de, new Object[] { this.b.e() }));
    if (this.c != null) {
      this.f = (TextView)this.a.findViewById(agg.compartilhado_product_specifics_text);
      this.f.setVisibility(0);
      this.f.setText(ajx.a(this.c));
    } 
    if (this.b.a().equals(String.valueOf(ajt.USO_DE_LIMITE_DE_CONTA.getCode()))) {
      this.d.setText(agl.remanejamento_label_cheque);
      this.e.setText(ajx.b(this.b));
    } else if (this.b.a().equals(String.valueOf(ajt.CARTAO.getCode()))) {
      this.d.setText(agl.remanejamento_label_cartao);
      this.e.setText(ajx.a(this.b));
    } 
    if (this.b.k().equals(this.b.g())) {
      this.l.setVisibility(8);
    } else {
      this.l.setText((CharSequence)Html.fromHtml(this.a.getString(agl.a_partir_de_x, new Object[] { this.b.k() })));
    } 
    this.q.setOnClickListener(new aih(this));
    ajx.a(this.k);
  }
  
  public void a(String paramString) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.a);
    builder.setTitle(agl.alerta);
    builder.setMessage(paramString);
    builder.setPositiveButton(agl.ok_entendi, new aii(this));
    builder.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */