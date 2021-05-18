import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageButton;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;

public class xn extends acr {
  private Context a;
  
  private Activity c;
  
  private ImageButton d;
  
  private TextView e;
  
  private TextView f;
  
  private RecyclerView g;
  
  private sy h;
  
  private String i;
  
  public xn(ack paramack, sy paramsy) {
    super(paramack);
    this.a = paramack.getApplicationContext();
    this.c = (Activity)paramack;
    this.h = paramsy;
    a();
  }
  
  private void a() {
    b();
    c();
  }
  
  private void b() {
    this.d = (ImageButton)this.c.findViewById(la.header_cancel);
    this.e = (TextView)this.c.findViewById(la.header_titulo);
    this.e.setText(this.h.b().toString());
    this.d.setImageResource(kz.ic_back);
    this.g = (RecyclerView)this.c.findViewById(la.resgate_recycler_view);
    this.d.setOnClickListener(new xo(this));
    this.f = (TextView)this.c.findViewById(la.txt_total_investimentos);
    this.i = this.c.getApplicationContext().getString(lg.CDB);
  }
  
  private void c() {
    this.g.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.g.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.g.setNestedScrollingEnabled(false);
    ArrayList<wq> arrayList1 = new ArrayList();
    ArrayList<wq> arrayList2 = new ArrayList();
    for (to to : this.h.h()) {
      for (tk tk : to.t()) {
        boolean bool;
        if (tk.c().a().doubleValue() > 0.0D) {
          bool = true;
        } else {
          bool = false;
        } 
        if (bool) {
          wq wq = new wq();
          wq.a(to);
          wq.a(tk);
          for (abz abz : tk.h()) {
            wq.a(abz.d());
            String str1 = this.c.getApplicationContext().getString(lg.property_contract_date);
            for (acc acc : abz.d()) {
              if (acc.c().equals(str1))
                try {
                  wq.a((new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH)).parse(acc.b()));
                } catch (ParseException parseException) {
                  parseException.printStackTrace();
                }  
            } 
          } 
          if (this.h.b().equals(this.i)) {
            arrayList2.add(wq);
            continue;
          } 
          arrayList1.add(wq);
        } 
      } 
    } 
    Collections.sort(arrayList2, new xp(this));
    arrayList1.addAll(arrayList2);
    this.g.setAdapter(new wr(this.h, arrayList1, (Context)e()));
    String str = e().getResources().getString(lg.investimentos_disponiveis, new Object[] { Integer.valueOf(arrayList1.size()) });
    this.f.setText(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\xn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */