import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class re extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private List<tk> a = new ArrayList<tk>();
  
  private ack b;
  
  private boolean c;
  
  private boolean d;
  
  private boolean e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  public re(List<tk> paramList, String paramString1, String paramString2, String paramString3, Context paramContext) {
    this.a.addAll(paramList);
    this.b = (ack)paramContext;
    this.f = paramString1;
    this.g = paramString2;
    this.h = paramString3;
  }
  
  public rp a(ViewGroup paramViewGroup, int paramInt) {
    return new rp(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_det_subproduto, paramViewGroup, false), null);
  }
  
  public void a(List<tk> paramList) {
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    acg acg = (acg)this.b.a();
    if (acg.p().equalsIgnoreCase("coe"))
      rp.a((rp)paramViewHolder).setText(this.b.getString(lg.det_subp_lbl_valor_nominal)); 
    if (acg.p().equalsIgnoreCase("corretora")) {
      rp.b((rp)paramViewHolder).setVisibility(8);
      rp.a((rp)paramViewHolder).setText(this.b.getString(lg.det_subp_lbl_valor_total));
      rp.c((rp)paramViewHolder).setVisibility(8);
      rp.d((rp)paramViewHolder).setVisibility(8);
    } 
    rp.e((rp)paramViewHolder).setBackgroundColor(acg.o().intValue());
    rp.f((rp)paramViewHolder).setText(acg.n().k());
    String str = ((tk)this.a.get(paramViewHolder.getAdapterPosition())).a();
    if (acg.p() != null && str != null && (acg.p().equalsIgnoreCase("POUPANCA") || acg.p().equalsIgnoreCase("POUPANÇA"))) {
      rp.g((rp)paramViewHolder).setText(acg.n().l() + ": " + aat.i(str));
    } else {
      rp.g((rp)paramViewHolder).setText(acg.n().l() + ": " + ((tk)this.a.get(paramViewHolder.getAdapterPosition())).a());
    } 
    rp.h((rp)paramViewHolder).setText(aat.a(((tk)this.a.get(paramViewHolder.getAdapterPosition())).c().b()));
    rp.i((rp)paramViewHolder).setText(aat.a(((tk)this.a.get(paramViewHolder.getAdapterPosition())).c().a()));
    if (!acg.n().m()) {
      rp.j((rp)paramViewHolder).setVisibility(8);
      rp.k((rp)paramViewHolder).setVisibility(8);
    } else {
      rp.j((rp)paramViewHolder).setVisibility(0);
      rp.k((rp)paramViewHolder).setVisibility(0);
      rp.l((rp)paramViewHolder).setText(this.b.getString(lg.inv_home_btn_aplicar));
      rp.l((rp)paramViewHolder).setPaintFlags(rp.l((rp)paramViewHolder).getPaintFlags() | 0x8);
      rp.m((rp)paramViewHolder).setVisibility(8);
      rp.j((rp)paramViewHolder).setOnClickListener(new rf(this, acg, paramViewHolder));
    } 
    if (!acg.n().p()) {
      rp.n((rp)paramViewHolder).setVisibility(0);
      rp.o((rp)paramViewHolder).setText(this.b.getResources().getString(lg.inv_home_btn_resgatar));
      rp.o((rp)paramViewHolder).setTextColor(this.b.getResources().getColor(kx.inv_warm_grey_two));
      if (acg.n().q() != null && !acg.n().q().isEmpty()) {
        rp.n((rp)paramViewHolder).setOnClickListener(new rh(this, acg));
      } else {
        rp.n((rp)paramViewHolder).setOnClickListener(new ri(this));
      } 
    } else if (((tk)this.a.get(paramViewHolder.getAdapterPosition())).c().a().doubleValue() <= 0.0D) {
      rp.o((rp)paramViewHolder).setText(this.b.getResources().getString(lg.inv_home_btn_resgatar));
      rp.o((rp)paramViewHolder).setTextColor(this.b.getResources().getColor(kx.inv_warm_grey_two));
      rp.n((rp)paramViewHolder).setVisibility(0);
      rp.n((rp)paramViewHolder).setOnClickListener(new rj(this));
    } else {
      rp.o((rp)paramViewHolder).setText(this.b.getString(lg.inv_home_btn_resgatar));
      rp.o((rp)paramViewHolder).setPaintFlags(rp.o((rp)paramViewHolder).getPaintFlags() | 0x8);
      rp.n((rp)paramViewHolder).setVisibility(8);
      rp.o((rp)paramViewHolder).setOnClickListener(new rk(this, acg, paramViewHolder));
    } 
    if (!acg.n().n() && !acg.n().m() && !acg.n().p())
      if (acg.p().equalsIgnoreCase("previdência")) {
        rp.j((rp)paramViewHolder).setVisibility(8);
        rp.k((rp)paramViewHolder).setVisibility(8);
        rp.p((rp)paramViewHolder).setVisibility(8);
      } else {
        rp.j((rp)paramViewHolder).setVisibility(8);
        rp.k((rp)paramViewHolder).setVisibility(8);
        rp.p((rp)paramViewHolder).setVisibility(0);
        rp.o((rp)paramViewHolder).setText(this.b.getResources().getString(lg.app_operacoes_indisponiveis));
        rp.o((rp)paramViewHolder).setTextColor(this.b.getResources().getColor(kx.inv_warm_grey_two));
        rp.n((rp)paramViewHolder).setVisibility(0);
        if (acg.n().r() != null && !acg.n().r().isEmpty()) {
          rp.n((rp)paramViewHolder).setOnClickListener(new rl(this, acg));
        } else {
          rp.n((rp)paramViewHolder).setOnClickListener(new rm(this));
        } 
      }  
    if (acg.n().n() && !acg.n().m() && !acg.n().p())
      rp.b((rp)paramViewHolder).setVisibility(8); 
    rp.q((rp)paramViewHolder).setOnClickListener(new rn(this, paramViewHolder, acg));
    rp.v((rp)paramViewHolder).setOnClickListener(new ro(this, paramViewHolder));
    rp.u((rp)paramViewHolder).setOnClickListener(new rg(this, paramViewHolder));
    for (abz abz : ((tk)this.a.get(paramInt)).h()) {
      LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.b);
      if (abz.a().equalsIgnoreCase("UNIQUE")) {
        rp.r((rp)paramViewHolder).setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
        rp.r((rp)paramViewHolder).setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
        List<acc> list = new ArrayList();
        if (acg.p().equalsIgnoreCase("corretora")) {
          for (acc acc : abz.d()) {
            if (acc.c().equalsIgnoreCase("descricaoSubProduto")) {
              rp.f((rp)paramViewHolder).setText(acc.b().trim());
              continue;
            } 
            list.add(acc);
          } 
        } else {
          list = abz.d();
        } 
        rp.r((rp)paramViewHolder).setAdapter(new rt(list));
        this.c = true;
      } 
      if (abz.a().equalsIgnoreCase("LISTA"))
        if (acg.p().equalsIgnoreCase("coe")) {
          rp.y((rp)paramViewHolder).setText(((acc)abz.d().get(0)).a());
          rp.x((rp)paramViewHolder).setText(((acc)abz.d().get(0)).b());
        } else {
          rp.s((rp)paramViewHolder).setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
          rp.s((rp)paramViewHolder).setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
          rp.s((rp)paramViewHolder).setAdapter(new rw(abz.d()));
          this.d = true;
        }  
      if (abz.a().equalsIgnoreCase("TABELA")) {
        rp.t((rp)paramViewHolder).setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
        rp.t((rp)paramViewHolder).setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
        rp.t((rp)paramViewHolder).setAdapter(new rq(abz.e()));
        this.e = true;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\re.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */