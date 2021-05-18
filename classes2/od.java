import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.List;

public class od extends acr {
  private acg a;
  
  private TextView c;
  
  private ImageButton d;
  
  private RecyclerView e;
  
  private Button f;
  
  private Button g;
  
  private View h;
  
  private View i;
  
  private View j;
  
  private ImageButton k;
  
  private TextView l;
  
  private boolean m;
  
  public od(ack paramack) {
    super(paramack);
    boolean bool;
    this.a = (acg)e().a();
    if (!this.a.w().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.m = bool;
    a();
    b();
  }
  
  private List<acc> a(List<acc> paramList) {
    boolean bool = false;
    try {
      if (this.m && this.a.b())
        for (abz abz : ((tk)this.a.r().get(0)).h()) {
          if (!bool)
            for (acc acc : abz.d()) {
              if (acc.c().equalsIgnoreCase("valorTaxaSaida") && !abz.d().contains(acc)) {
                paramList.add(acc);
                bool = true;
              } 
            }  
        }  
    } catch (Exception exception) {
      Log.d(getClass().getSimpleName(), "Erro Sistemico", exception);
    } 
    return paramList;
  }
  
  private void a() {
    this.c = (TextView)e().findViewById(la.header_titulo);
    this.d = (ImageButton)e().findViewById(la.header_cancel);
    this.e = (RecyclerView)e().findViewById(la.lista_comprovantes);
    this.f = (Button)e().findViewById(la.btn_compartilhar_comprovante);
    this.g = (Button)e().findViewById(la.btn_continuar_comprovante);
    this.h = e().findViewById(la.id_main_screen_comprovantes);
    this.j = e().findViewById(la.container_nota_notificacao);
    this.k = (ImageButton)e().findViewById(la.btn_nota_notificacao);
    this.i = e().findViewById(la.comp_loading);
    this.i.setVisibility(0);
    this.l = (TextView)e().findViewById(la.msg_msg);
  }
  
  private void b() {
    Integer integer1;
    Integer integer2;
    Integer integer3;
    this.c.setText(e().getString(lg.titulo_comprovantes));
    this.d.setImageResource(kz.ic_back);
    if (this.m) {
      this.l.setText(e().getString(lg.comprovante_resgate_txt_sucesso));
      int i = lg.tag_name_comprovante_resgate_referOper;
      int j = lg.tag_name_resgatar_valorResgate;
      int k = lg.tag_name_resgatar_dataResgate;
      zy.a(e().getString(lg.tag_transaction_name_resgatar));
      integer2 = Integer.valueOf(j);
      integer3 = Integer.valueOf(i);
      integer1 = Integer.valueOf(k);
    } else {
      int i = lg.tag_name_aplicar_comprovante_referOper;
      int j = lg.tag_name_aplicar_comprovante_valorAplicacao;
      int k = lg.tag_name_aplicar_comprovante_dataAplicacao;
      zy.a(e().getString(lg.tag_transaction_name_aplicar));
      integer2 = Integer.valueOf(j);
      integer3 = Integer.valueOf(i);
      integer1 = Integer.valueOf(k);
    } 
    ace ace = this.a.u().get(0);
    List<acc> list = a(ace.r().k().d());
    zy.b(e().getString(integer3.intValue(), new Object[] { ace.u(), ace.f().j(), ace.f().k() }), ace.s().b());
    for (acc acc : list) {
      if (acc.c().toLowerCase().contains("data"))
        zy.b(e().getString(integer1.intValue(), new Object[] { ace.u(), ace.f().j(), ace.f().k() }), acc.b().replaceAll("[/]", "")); 
      if (acc.c().toLowerCase().contains("valor"))
        zy.b(e().getString(integer2.intValue(), new Object[] { ace.u(), ace.f().j(), ace.f().k() }), acc.b()); 
    } 
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.e.setAdapter(new nv((Activity)e(), this.a, Boolean.valueOf(this.m), this));
    this.e.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.e.setNestedScrollingEnabled(false);
    this.g.setOnClickListener(new oe(this));
    this.f.setOnClickListener(new of(this));
    this.d.setOnClickListener(new og(this));
    this.i.setVisibility(8);
    if (this.a.p().contains("LCI")) {
      this.j.setVisibility(0);
      this.k.setOnClickListener(new oh(this));
      return;
    } 
    this.j.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\od.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */