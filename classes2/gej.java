import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import java.util.ArrayList;

public class gej {
  private static final String a = "https://santander.custhelp.com/app/chat/chat_santander/p/197";
  
  private Activity b;
  
  private RecyclerView c;
  
  private TextView d;
  
  private Dialog e;
  
  public gej(Activity paramActivity) {
    this.b = paramActivity;
    a();
    b();
  }
  
  private void a() {
    this.c = (RecyclerView)this.b.findViewById(2131755344);
    this.d = (TextView)this.b.findViewById(2131755345);
  }
  
  private void b() {
    this.d.setPaintFlags(this.d.getPaintFlags() | 0x8);
    this.d.setOnClickListener(new gek(this));
    ArrayList<gec> arrayList = new ArrayList();
    arrayList.add(new gec("Empréstimos", "<small>até </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>", d()));
    arrayList.add(new gec("Renegociação", "<small>até </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>", e()));
    arrayList.add(new gec("Financiamento de Veículos", "<small>até </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>", f()));
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.b);
    this.c.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.c.addItemDecoration((RecyclerView.ItemDecoration)new DividerItemDecoration((Context)this.b, 1));
    this.c.setAdapter(new geg(arrayList));
  }
  
  private void c() {
    frq.d("Outros_LojaOnline_Acao", "CliqueConsulteCondicoes");
    Intent intent = new Intent((Context)this.b, gef.class);
    this.b.startActivity(intent);
  }
  
  private ged d() {
    return new gel(this);
  }
  
  private ged e() {
    return new gem(this);
  }
  
  private ged f() {
    return new gen(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */