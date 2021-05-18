import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class atb extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private static final String c = atb.class.getName();
  
  RecyclerView.ViewHolder a;
  
  int b = 0;
  
  private final ata d;
  
  private final asz e;
  
  private Context f;
  
  private View g;
  
  private List<ark> h;
  
  private ard i = ard.a();
  
  private ark j;
  
  private final int k = 0;
  
  private final int l = 1;
  
  private final int m = 2;
  
  private final int n = 3;
  
  private final int o = 4;
  
  private final int p = 5;
  
  private final int q = 6;
  
  private final int r = 7;
  
  private final int s = 8;
  
  private final int t = 9;
  
  private final int u = -1;
  
  public atb(Context paramContext, List<ark> paramList, ata paramata, asz paramasz) {
    this.f = paramContext;
    this.h = paramList;
    this.d = paramata;
    this.e = paramasz;
  }
  
  private int a() {
    return this.j.j() ? aph.ic_check_squadchat : aph.ico_espera_squadchat;
  }
  
  private void a(atf paramatf, int paramInt) {
    this.j = this.h.get(paramInt);
    paramatf.b(c());
    paramatf.a(this.j.e());
    paramatf.d(this.j.a(this.i.s()));
    paramatf.b(this.j.l().c().getName());
    paramatf.c(this.j.l().t());
    paramatf.a(this.j);
    paramatf.c(this.j);
    paramatf.a(this.j.l().d());
    paramatf.b(this.j);
    this.j.a(true);
  }
  
  private void a(atg paramatg, int paramInt) {
    this.j = this.h.get(paramInt);
    paramatg.a(this.j.e());
    paramatg.b(this.j.d().trim());
    paramatg.c(this.j.a(this.i.s()));
    this.j.a(true);
  }
  
  private void a(ath paramath, int paramInt) {
    this.j = this.h.get(paramInt);
    paramath.a(this.j.d().trim());
    this.j.a(true);
  }
  
  private void a(ati paramati, int paramInt) {
    this.j = this.h.get(paramInt);
    paramati.a(this.j, this.f);
    paramati.a(this.j.e());
    paramati.d(this.j.a(this.i.s()));
    paramati.b(this.j.l().c().getName());
    paramati.c(this.j.l().t());
    paramati.c(this.j);
    paramati.b(this.j);
    paramati.a(this.j);
    paramati.a(this.j.l().d());
    this.j.a(true);
  }
  
  private void a(atj paramatj, int paramInt) {
    this.j = this.h.get(paramInt);
    paramatj.a(this.j.l().c().getName());
    paramatj.b(this.j.l().t());
    paramatj.c(this.j.a(this.i.s()));
    paramatj.c(this.j);
    paramatj.a(this.j.l().d());
    paramatj.a(this.j, this.f);
    paramatj.d(this.j);
    paramatj.b(b());
    paramatj.a(this.j);
    paramatj.b(this.j);
    this.j.a(true);
  }
  
  private void a(atk paramatk, int paramInt) {
    this.j = this.h.get(paramInt);
    paramatk.a(c());
    paramatk.a(this.j.l().c().getName());
    paramatk.a(this.j);
    paramatk.b(this.j.l().d());
    paramatk.b(this.j.l().t());
    paramatk.c(this.j.a(this.i.s()));
    paramatk.b(this.j);
    paramatk.c(b());
    paramatk.c(this.j);
    paramatk.d(this.j);
    this.j.a(true);
  }
  
  private void a(atl paramatl, int paramInt) {
    this.j = this.h.get(paramInt);
    paramatl.a(this.j.d().trim());
    paramatl.b(this.j.a(this.i.s()));
    paramatl.a(this.j);
    paramatl.a(a());
    paramatl.b(this.j);
    paramatl.a().setOnClickListener(new atc(this));
    this.j.a(true);
  }
  
  private int b() {
    return this.j.l().g() ? aph.ic_check_squadchat : aph.ico_espera_squadchat;
  }
  
  private void b(ath paramath, int paramInt) {
    this.j = this.h.get(paramInt);
    paramath.a(ase.a(this.j) + " " + this.j.d().trim());
    this.j.a(true);
  }
  
  private int c() {
    return this.j.b().equals(aqb.User) ? (!aqr.a(this.j.l().c()) ? aph.ico_file_squadchat : aph.ico_img_squadchat) : (!aqr.a(this.j.l().c()) ? aph.ico_file_gray_squadchat : aph.ico_img_gray_squadchat);
  }
  
  private void c(ath paramath, int paramInt) {
    this.j = this.h.get(paramInt);
    paramath.a(this.j.d().trim());
    this.j.a(true);
  }
  
  public void a(List<ark> paramList) {
    this.h = paramList;
    if (this.j != null && this.j.q())
      this.j.g(false); 
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.h.size();
  }
  
  public int getItemViewType(int paramInt) {
    this.j = this.h.get(paramInt);
    if (this.j != null) {
      if (this.j.q())
        this.j.g(false); 
      if (this.j.b() != null) {
        Object object;
        if (this.j.q())
          this.j.g(false); 
        String str = apu.TextMessageSent.getValue();
        if (this.j.c() != null) {
          object = this.j.c().getValue();
        } else {
          object = null;
        } 
        if (str.equals(object)) {
          if (this.j.q())
            this.j.g(false); 
          switch (atd.a[this.j.b().ordinal()]) {
            default:
              return -1;
            case 1:
              return (this.j.l() != null) ? (!aqr.a(this.j.l().c()) ? 6 : 8) : 0;
            case 2:
              return (this.j.l() != null) ? ((this.j.l().z() != null && aqr.a(this.j.l().c())) ? 9 : 7) : 1;
            case 3:
              break;
          } 
          if (this.j.c() == apu.AgentJoined) {
            this.b = this.h.indexOf(this.j);
            if (this.h.indexOf(this.j) >= this.b)
              return 2; 
          } 
        } 
        if (this.j.q())
          this.j.g(false); 
        if (this.j.c() != null) {
          switch (atd.b[this.j.c().ordinal()]) {
            default:
            
            case 1:
              if (!ase.b(this.j.d()))
                return 3; 
            case 2:
              if (this.j.b().equals(aqb.Agent))
                return 4; 
            case 3:
              if (this.j.b().equals(aqb.Agent))
                return 5; 
              break;
            case 4:
              break;
          } 
          if (this.j.b().equals(aqb.Agent) && this.j.l() != null)
            return (this.j.l().z() != null && aqr.a(this.j.l().c())) ? 9 : 7; 
        } 
      } 
    } 
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (this.j != null && this.j.b() != null) {
      Object object;
      String str = apu.TextMessageSent.getValue();
      if (this.j.c() != null) {
        object = this.j.c().getValue();
      } else {
        object = null;
      } 
      if (str.equals(object)) {
        switch (paramViewHolder.getItemViewType()) {
          default:
            return;
          case 0:
            a((atl)paramViewHolder, paramInt);
            return;
          case 1:
            a((atg)paramViewHolder, paramInt);
            return;
          case 2:
            a((ath)paramViewHolder, paramInt);
            return;
          case 6:
            a((atk)paramViewHolder, paramInt);
            return;
          case 8:
            break;
        } 
        a((atj)paramViewHolder, paramInt);
        return;
      } 
      if (this.j.c() != null && this.j.b().equals(aqb.Agent)) {
        switch (paramViewHolder.getItemViewType()) {
          default:
            return;
          case 3:
            c((ath)paramViewHolder, paramInt);
            return;
          case 4:
          case 5:
            b((ath)paramViewHolder, paramInt);
            return;
          case 7:
            a((atf)paramViewHolder, paramInt);
            return;
          case 9:
            break;
        } 
        a((ati)paramViewHolder, paramInt);
        return;
      } 
    } 
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    LayoutInflater layoutInflater = LayoutInflater.from(paramViewGroup.getContext());
    this.g = layoutInflater.inflate(apk.hide_event_adapter, paramViewGroup, false);
    this.a = new ate(this, this.g);
    switch (paramInt) {
      default:
        return this.a;
      case 0:
        this.g = layoutInflater.inflate(apk.bubble_user_adapter, paramViewGroup, false);
        this.a = new atl(this.g);
        return this.a;
      case 1:
        this.g = layoutInflater.inflate(apk.bubble_agent_adapter, paramViewGroup, false);
        this.a = new atg(this.g);
        return this.a;
      case 2:
        this.g = layoutInflater.inflate(apk.external_adapter, paramViewGroup, false);
        this.a = new ath(this.g);
        return this.a;
      case 3:
        this.g = layoutInflater.inflate(apk.external_adapter, paramViewGroup, false);
        this.a = new ath(this.g);
        return this.a;
      case 4:
      case 5:
        if (this.j.b().equals(aqb.Agent)) {
          this.g = layoutInflater.inflate(apk.external_adapter, paramViewGroup, false);
          this.a = new ath(this.g);
          return this.a;
        } 
      case 6:
        this.g = layoutInflater.inflate(apk.bubble_user_file_adapter, paramViewGroup, false);
        this.a = new atk(this.g, this.d);
        return this.a;
      case 8:
        this.g = layoutInflater.inflate(apk.bubble_user_file_new_adapter, paramViewGroup, false);
        this.a = new atj(this.g, this.d);
        return this.a;
      case 7:
        this.g = layoutInflater.inflate(apk.bubble_agent_file_adapter, paramViewGroup, false);
        this.a = new atf(this.g, this.e);
        return this.a;
      case 9:
        break;
    } 
    this.g = layoutInflater.inflate(apk.bubble_agent_file_new_adapter, paramViewGroup, false);
    this.a = new ati(this.g, this.e);
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */