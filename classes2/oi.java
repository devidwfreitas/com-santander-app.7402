import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.text.Spanned;
import android.text.SpannedString;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Iterator;

public class oi extends acr {
  private TextView a;
  
  private TextView c;
  
  private RecyclerView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private ImageView i;
  
  private ImageButton j;
  
  private View k;
  
  private View l;
  
  private acg m = (acg)e().a();
  
  public oi(ack paramack) {
    super(paramack);
    a();
    b();
  }
  
  private void a() {
    this.i = (ImageView)e().findViewById(la.header_logo);
    this.j = (ImageButton)e().findViewById(la.header_cancel);
    this.k = e().findViewById(la.notas_loading);
    this.l = e().findViewById(la.notas_scroll);
    this.a = (TextView)e().findViewById(la.notas_title);
    this.c = (TextView)e().findViewById(la.notas_subtitle);
    this.e = (TextView)e().findViewById(la.notas_texto);
    this.f = (TextView)e().findViewById(la.notas_assinatura);
    this.g = (TextView)e().findViewById(la.notas_assinatura_data);
    this.d = (RecyclerView)e().findViewById(la.notas_grupos);
    this.h = (TextView)e().findViewById(la.notas_sac);
  }
  
  private void a(nr paramnr) {
    this.i.setVisibility(0);
    this.l.setVisibility(0);
    this.k.setVisibility(8);
    this.j.setImageResource(kz.ic_back);
    this.j.setOnClickListener(new oj(this));
    this.a.setText(paramnr.a());
    this.c.setText(paramnr.b());
    this.e.setText((CharSequence)Html.fromHtml("<html><body style=\"text-align:justify\">" + Html.toHtml((Spanned)new SpannedString(paramnr.d())) + "</body></Html>"));
    this.f.setText(paramnr.e());
    this.g.setText(b(paramnr));
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.d.setAdapter(new nz(paramnr.c(), (Context)e()));
    this.d.setNestedScrollingEnabled(false);
    this.h.setText(paramnr.g());
  }
  
  private String b(nr paramnr) {
    Iterator<acc> iterator3;
    Iterator<acc> iterator2 = null;
    Iterator<acc> iterator1 = null;
    try {
      Iterator<abz> iterator = paramnr.c().iterator();
      label28: while (true) {
        iterator2 = iterator1;
        iterator3 = iterator1;
        if (iterator.hasNext()) {
          iterator2 = iterator1;
          abz abz = iterator.next();
          iterator3 = iterator1;
          if (iterator1 == null) {
            acc acc;
            iterator2 = iterator1;
            iterator3 = abz.d().iterator();
            while (true) {
              iterator2 = iterator1;
              if (iterator3.hasNext()) {
                iterator2 = iterator1;
                acc = iterator3.next();
                iterator2 = iterator1;
                if ("LOCAL".equalsIgnoreCase(acc.c())) {
                  iterator2 = iterator1;
                  break;
                } 
                continue;
              } 
              continue label28;
            } 
            String str1 = acc.b();
            continue;
          } 
        } 
        break;
      } 
    } catch (Exception exception) {
      Log.d(getClass().getSimpleName(), "System failure", exception);
      iterator3 = iterator2;
    } 
    if (iterator3 == null) {
      String str1 = "";
      return str1 + paramnr.f();
    } 
    String str = iterator3 + ", ";
    return str + paramnr.f();
  }
  
  private void b() {
    String str1;
    ns ns = new ns();
    String str2 = "";
    Iterator<acc> iterator = ((ace)this.m.u().get(0)).r().k().d().iterator();
    while (true) {
      str1 = str2;
      if (iterator.hasNext()) {
        acc acc = iterator.next();
        if (acc.a().toLowerCase().contains("data") && acc.b().contains("/")) {
          String[] arrayOfString = acc.b().split("/");
          str1 = arrayOfString[2] + "-" + arrayOfString[1] + "-" + arrayOfString[0];
          break;
        } 
        continue;
      } 
      break;
    } 
    ou ou = ((ace)this.m.u().get(0)).h();
    ou.g();
    String str3 = ((ace)this.m.u().get(0)).r().a();
    str2 = str3;
    if (str3.length() > 12)
      str2 = str3.substring(str3.length() - 12); 
    ns.a((Context)e(), ou, str2, str1, new ok(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\oi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */