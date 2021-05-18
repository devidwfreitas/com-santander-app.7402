import android.app.Activity;
import android.text.Html;
import android.widget.TextView;

public class agv extends akb {
  TextView a;
  
  TextView b;
  
  TextView c;
  
  TextView d;
  
  TextView e;
  
  TextView f;
  
  TextView g;
  
  TextView h;
  
  TextView i;
  
  TextView j;
  
  TextView k;
  
  TextView l;
  
  TextView m;
  
  TextView n;
  
  private Activity o;
  
  public agv(Activity paramActivity) {
    super(paramActivity);
    this.o = paramActivity;
    a();
  }
  
  public void a() {
    ((TextView)this.o.findViewById(agg.header_titulo)).setText(agl.informacoes);
    this.a = (TextView)this.o.findViewById(agg.disclaimer_cheque_label);
    this.b = (TextView)this.o.findViewById(agg.disclaimer_cheque_total);
    this.a.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_cheque_title)));
    this.b.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_cheque_total)));
    this.c = (TextView)this.o.findViewById(agg.disclaimer_cartoes_label);
    this.d = (TextView)this.o.findViewById(agg.disclaimer_cartoes_mes);
    this.e = (TextView)this.o.findViewById(agg.disclaimer_cartoes_total);
    this.c.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_cartoes_title)));
    this.d.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_cartoes_mes)));
    this.e.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_cartoes_total)));
    this.f = (TextView)this.o.findViewById(agg.disclaimer_empr_label);
    this.g = (TextView)this.o.findViewById(agg.disclaimer_empr_mes);
    this.h = (TextView)this.o.findViewById(agg.disclaimer_empr_total);
    this.f.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_empr_title)));
    this.g.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_empr_mes)));
    this.h.setText((CharSequence)Html.fromHtml(this.o.getString(agl.disclaimer_empr_total)));
    this.i = (TextView)this.o.findViewById(agg.obs1);
    this.j = (TextView)this.o.findViewById(agg.obs2);
    this.k = (TextView)this.o.findViewById(agg.obs3);
    this.l = (TextView)this.o.findViewById(agg.obs4);
    this.m = (TextView)this.o.findViewById(agg.obs5);
    this.n = (TextView)this.o.findViewById(agg.obs7);
    this.i.setText((CharSequence)Html.fromHtml(this.o.getString(agl.observacoes)));
    this.j.setText((CharSequence)Html.fromHtml(this.o.getString(agl.t1)));
    this.k.setText((CharSequence)Html.fromHtml(this.o.getString(agl.t2)));
    this.l.setText((CharSequence)Html.fromHtml(this.o.getString(agl.t3)));
    this.m.setText((CharSequence)Html.fromHtml(this.o.getString(agl.t4)));
    this.n.setText((CharSequence)Html.fromHtml(this.o.getString(agl.uso_consciente)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */