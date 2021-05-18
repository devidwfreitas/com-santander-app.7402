import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.santander.app.components.view.SantanderTextView;

class hku extends RecyclerView.ViewHolder {
  protected hkt a;
  
  protected hxl b;
  
  protected Context c;
  
  protected SantanderTextView d;
  
  protected SantanderTextView e;
  
  protected SantanderTextView f;
  
  protected SantanderTextView g;
  
  protected SantanderTextView h;
  
  protected SantanderTextView i;
  
  protected SantanderTextView j;
  
  protected SantanderTextView k;
  
  protected ImageView l;
  
  protected View m;
  
  protected View n;
  
  hku(ViewGroup paramViewGroup, hkt paramhkt) {
    super(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968770, paramViewGroup, false));
    this.c = paramViewGroup.getContext();
    this.a = paramhkt;
    this.e = (SantanderTextView)this.itemView.findViewById(2131756140);
    this.f = (SantanderTextView)this.itemView.findViewById(2131756141);
    this.g = (SantanderTextView)this.itemView.findViewById(2131756142);
    this.h = (SantanderTextView)this.itemView.findViewById(2131756144);
    this.i = (SantanderTextView)this.itemView.findViewById(2131756145);
    this.j = (SantanderTextView)this.itemView.findViewById(2131756146);
    this.k = (SantanderTextView)this.itemView.findViewById(2131756147);
    this.d = (SantanderTextView)this.itemView.findViewById(2131756139);
    this.l = (ImageView)this.itemView.findViewById(2131756143);
    this.m = this.itemView.findViewById(2131756149);
    this.n = this.itemView.findViewById(2131756148);
    this.itemView.setOnClickListener(new hkv(this));
    if (this.n != null)
      this.n.setOnClickListener(new hkw(this)); 
  }
  
  void a() {
    c();
    this.m.setVisibility(0);
  }
  
  void a(hxl paramhxl) {
    this.b = paramhxl;
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
    this.h.setVisibility(8);
    this.i.setVisibility(8);
    this.j.setVisibility(8);
    this.k.setVisibility(8);
    this.m.setVisibility(8);
    if (paramhxl.y()) {
      b();
      return;
    } 
    c();
  }
  
  void b() {
    if (this.n != null)
      this.n.setVisibility(0); 
  }
  
  void c() {
    if (this.n != null)
      this.n.setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */