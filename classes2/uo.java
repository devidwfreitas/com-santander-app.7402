import android.app.Activity;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;

public class uo extends acy {
  private Activity g;
  
  private View h;
  
  private View i;
  
  private View j;
  
  private RadioButton k;
  
  private RadioButton l;
  
  private RadioButton m;
  
  private LinearLayout n;
  
  private TextWatcherValorBR o;
  
  private TextWatcherValorBR p;
  
  private Button q;
  
  private ImageButton r;
  
  private TextView s;
  
  private String t = "N";
  
  private Double u;
  
  private Double v;
  
  private acg w;
  
  public uo(ack paramack) {
    super(paramack);
    this.g = (Activity)paramack;
    this.h = paramack.findViewById(la.investir_por_valor_include_loading_state);
    this.i = paramack.findViewById(la.investir_por_valor_include_content);
    this.j = paramack.findViewById(la.investir_por_valor_include_carteira);
    this.n = (LinearLayout)paramack.findViewById(la.investir_por_valor_layout_valor_parcial);
    this.l = (RadioButton)paramack.findViewById(la.investir_por_valor_radio_group_valor_parcial);
    this.l.setInputType(2);
    this.k = (RadioButton)paramack.findViewById(la.investir_por_valor_radio_group_valor_total);
    this.l.setInputType(2);
    this.m = (RadioButton)paramack.findViewById(la.investir_por_valor_radio_group_outras_opcoes);
    this.m.setInputType(2);
    this.o = (TextWatcherValorBR)paramack.findViewById(la.investir_por_valor_edit_text_valor);
    this.p = (TextWatcherValorBR)paramack.findViewById(la.investir_por_valor_edit_text_valor_parcial);
    this.q = (Button)paramack.findViewById(la.investir_por_valor_button_ver_recomendacao);
    this.w = (acg)e().a();
    this.c = new ace();
    this.e = Boolean.valueOf(true);
    j();
    l();
  }
  
  private void a(EditText paramEditText, boolean paramBoolean) {
    if (paramBoolean) {
      paramEditText.setText(paramEditText.getText().toString().replaceAll("\\.", "").replace(",", "."));
      return;
    } 
    paramEditText.setText(aat.e(paramEditText.getText().toString()));
  }
  
  private void a(boolean paramBoolean) {
    if (paramBoolean) {
      this.n.setVisibility(8);
      e().findViewById(la.borda_meio).setBackground(e().getResources().getDrawable(kz.gray_bottom_border));
      this.p.getText().clear();
      this.v = null;
      this.l.setChecked(false);
      this.m.setChecked(false);
      d();
      this.t = "M";
    } 
  }
  
  private void b(boolean paramBoolean) {
    if (paramBoolean) {
      this.n.setVisibility(0);
      e().findViewById(la.borda_meio).setBackground(e().getResources().getDrawable(kz.gray_bottom_border_off));
      this.k.setChecked(false);
      this.m.setChecked(false);
      d();
      this.t = "M";
    } 
  }
  
  private void c(boolean paramBoolean) {
    if (paramBoolean) {
      this.n.setVisibility(8);
      e().findViewById(la.borda_meio).setBackground(e().getResources().getDrawable(kz.gray_bottom_border));
      this.p.getText().clear();
      this.v = null;
      this.l.setChecked(false);
      this.k.setChecked(false);
      d();
      this.t = "N";
    } 
  }
  
  private void d() {
    this.q.setClickable(true);
    this.q.setEnabled(true);
    this.q.setTextColor(ContextCompat.getColor(this.g.getApplicationContext(), kx.inv_white));
  }
  
  private void l() {
    this.q.setClickable(false);
    this.q.setEnabled(false);
    this.q.setTextColor(ContextCompat.getColor(this.g.getApplicationContext(), kx.inv_warm_grey));
  }
  
  private void m() {
    ou ou = h();
    Double double_1 = aat.c(ou.e());
    Double double_2 = aat.c(ou.h());
    String str = this.o.getText().toString();
    this.u = Double.valueOf(0.0D);
    if (!str.isEmpty())
      this.u = Double.valueOf(str.replaceAll("\\.", "").replace(",", ".").trim()); 
    this.v = Double.valueOf(0.0D);
    if (this.n.getVisibility() != 8 && this.p.getText() != null && !this.p.getText().toString().isEmpty())
      this.v = Double.valueOf(this.p.getText().toString().replaceAll("\\.", "").replace(",", ".").trim()); 
    this.v.doubleValue();
    this.u.doubleValue();
    if (this.u.doubleValue() <= 0.0D) {
      aad.a((Context)this.g, this.g.getString(lg.app_atencao), "Insira algum valor para investir !", new ux(this));
      return;
    } 
    if (this.v.doubleValue() >= this.u.doubleValue()) {
      aad.a((Context)this.g, this.g.getString(lg.app_atencao), "Valor parcial é superior a valor total !", new uy(this));
      return;
    } 
    if (this.l.isChecked() && this.v.doubleValue() <= 0.0D) {
      aad.a((Context)this.g, this.g.getString(lg.app_atencao), "Insira algum valor parcial !", new uq(this));
      return;
    } 
    if (this.u.doubleValue() > double_2.doubleValue()) {
      this.w.c(false);
      this.w.d(true);
      n();
      return;
    } 
    if (this.u.doubleValue() >= double_1.doubleValue()) {
      this.w.c(true);
      this.w.d(false);
      n();
      return;
    } 
    n();
  }
  
  private void n() {
    zy.a(e().getString(lg.tag_name_recomendacao_valor_aplicacao_acao), this.u.doubleValue());
    if (this.n.isShown())
      zy.a(e().getString(lg.tag_name_recomendacao_parte_valor_acao), this.v.doubleValue()); 
    if (this.t.equalsIgnoreCase("M") && this.v.doubleValue() == 0.0D)
      this.v = this.u; 
    zy.b(e().getString(lg.tag_name_recomendacao_acao), e().getString(lg.tag_valor_ver_recomendacao));
    zs.a().a(this.g.getApplicationContext(), this.t, this.u.toString(), this.v.toString(), this.c, this.w);
  }
  
  private void o() {
    this.h.setVisibility(8);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
  }
  
  protected void a() {
    super.a();
    zy.b(e().getString(lg.tag_name_recomendacao_acao), e().getString(lg.tag_valor_selecionarConta));
  }
  
  protected void b() {
    super.b();
    this.r = (ImageButton)e().findViewById(la.header_cancel);
    this.r.setOnClickListener(new up(this));
    this.r.setImageResource(kz.ic_back);
    this.s = (TextView)e().findViewById(la.header_titulo);
    this.s.setText(lg.app_aplicar_valor);
    this.q.setOnClickListener(new ur(this));
    this.p.a(new us(this));
    this.o.a(new ut(this));
    this.m.setOnCheckedChangeListener(new uu(this));
    this.k.setOnCheckedChangeListener(new uv(this));
    this.l.setOnCheckedChangeListener(new uw(this));
    o();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\uo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */