import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public class nv extends RecyclerView.Adapter<nw> {
  private List<ace> a;
  
  private od b;
  
  private Activity c;
  
  private acg d;
  
  private Boolean e;
  
  public nv(Activity paramActivity, acg paramacg, Boolean paramBoolean, od paramod) {
    this.b = paramod;
    this.a = paramacg.u();
    this.c = paramActivity;
    this.d = paramacg;
    this.e = paramBoolean;
  }
  
  private String a(String paramString) {
    return (paramString != null && !paramString.trim().equalsIgnoreCase("null") && !paramString.trim().isEmpty()) ? paramString : "Nova aplicação";
  }
  
  private void a(TextView paramTextView, String paramString1, String paramString2) {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    paramString1 = paramString1 + " ";
    SpannableString spannableString1 = new SpannableString(paramString1);
    SpannableString spannableString2 = new SpannableString(paramString2);
    spannableString1.setSpan(new ForegroundColorSpan(this.b.e().getResources().getColor(kx.inv_black_four)), 0, paramString1.length(), 0);
    spannableStringBuilder.append((CharSequence)spannableString1);
    spannableString2.setSpan(new ForegroundColorSpan(this.b.e().getResources().getColor(kx.inv_warm_grey)), 0, paramString2.length(), 0);
    spannableStringBuilder.append((CharSequence)spannableString2);
    paramTextView.setText((CharSequence)spannableStringBuilder, TextView.BufferType.SPANNABLE);
  }
  
  public nw a(ViewGroup paramViewGroup, int paramInt) {
    return new nw(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_item_comprovante_efetivacao_v1_5, paramViewGroup, false));
  }
  
  public void a(nw paramnw, int paramInt) {
    paramnw.a = this.a.get(paramInt);
    a(paramnw.c, this.b.e().getResources().getString(lg.label_produto), paramnw.a.f().k());
    if (this.d.p() != null && (this.d.p().equalsIgnoreCase("POUPANCA") || this.d.p().equalsIgnoreCase("POUPANÇA"))) {
      a(paramnw.f, paramnw.a.f().l() + ": ", aat.i(paramnw.a.r().a()));
    } else {
      a(paramnw.f, paramnw.a.f().l() + ": ", a(paramnw.a.r().a()));
    } 
    TextView textView = paramnw.g;
    if (this.e.booleanValue()) {
      paramInt = 8;
    } else {
      paramInt = 0;
    } 
    textView.setVisibility(paramInt);
    paramnw.b.setVisibility(0);
    a(paramnw.h, this.b.e().getResources().getString(lg.label_titular), this.d.B());
    paramnw.i.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.c));
    paramnw.i.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    List<acc> list = paramnw.a.r().k().d();
    paramnw.i.setAdapter(new nx(list));
    paramnw.d.setText(paramnw.a.s().a());
    paramnw.e.setText(paramnw.a.s().b());
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */