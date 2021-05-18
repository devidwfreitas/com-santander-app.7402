import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class ltm extends RecyclerView.Adapter<lts> {
  private List<kut> a = new ArrayList<kut>();
  
  private ltt b;
  
  public ltm(List<kut> paramList) {
    this.a.addAll(paramList);
  }
  
  private void a(kus paramkus, int paramInt, kuu paramkuu, ImageButton paramImageButton) {
    if (paramkuu == null) {
      paramImageButton.setVisibility(8);
      paramImageButton.setImageResource(0);
      paramImageButton.setOnClickListener(null);
      return;
    } 
    switch (ltr.a[paramkuu.ordinal()]) {
      default:
        paramImageButton.setVisibility(8);
        paramImageButton.setImageResource(0);
        paramImageButton.setOnClickListener(null);
        return;
      case 1:
        paramImageButton.setVisibility(0);
        paramImageButton.setImageResource(2130838357);
        paramImageButton.setOnClickListener(new lto(this, paramInt, paramkus));
        return;
      case 2:
        paramImageButton.setVisibility(0);
        paramImageButton.setImageResource(2130838651);
        paramImageButton.setOnClickListener(new ltp(this, paramInt, paramkus));
        return;
      case 3:
        paramImageButton.setVisibility(0);
        paramImageButton.setImageResource(2130838665);
        paramImageButton.setOnClickListener(new ltq(this, paramInt, paramkus));
        return;
      case 4:
        break;
    } 
    paramImageButton.setVisibility(8);
    paramImageButton.setImageResource(0);
    paramImageButton.setOnClickListener(null);
  }
  
  public lts a(ViewGroup paramViewGroup, int paramInt) {
    return new lts(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968996, paramViewGroup, false));
  }
  
  public void a(int paramInt) {
    if (paramInt < 0 || paramInt > this.a.size() - 1)
      return; 
    ((kut)this.a.get(paramInt)).b(true);
    notifyItemChanged(paramInt);
  }
  
  public void a(int paramInt, kut paramkut, boolean paramBoolean) {
    if (paramInt < 0 || paramInt > this.a.size() - 1)
      return; 
    ((kut)this.a.get(paramInt)).a(paramkut, paramBoolean);
    notifyItemChanged(paramInt);
  }
  
  public void a(kuw paramkuw) {
    this.a.add(b(paramkuw));
    notifyItemChanged(this.a.size() - 1);
  }
  
  public void a(lts paramlts, int paramInt) {
    String str;
    kut kut = this.a.get(paramlts.getAdapterPosition());
    TextView textView = lts.a(paramlts);
    if (kut.f() != null && !TextUtils.isEmpty(kut.f().b())) {
      str = kut.f().b();
    } else {
      str = "";
    } 
    textView.setText(str);
    lts.b(paramlts).setOnClickListener(null);
    lts.b(paramlts).setOnClickListener(new ltn(this, paramlts, kut));
    if (kut.f() != null && !TextUtils.isEmpty(kut.f().c())) {
      lts.c(paramlts).setText(kut.f().c());
    } else {
      lts.c(paramlts).setVisibility(8);
    } 
    if (kut.f() != null && kut.a()) {
      lts.d(paramlts).setState(aor.LOADING);
    } else {
      lts.d(paramlts).setState(aor.CONTENT);
    } 
    if (kut.f() != null && kut.d()) {
      lts.e(paramlts).setVisibility(0);
      lts.f(paramlts).setBackgroundResource(2131624101);
    } else {
      lts.e(paramlts).setVisibility(8);
      lts.f(paramlts).setBackgroundResource(2131624068);
    } 
    a(kut.f(), paramlts.getAdapterPosition(), kut.b(), lts.g(paramlts));
    a(kut.f(), paramlts.getAdapterPosition(), kut.c(), lts.h(paramlts));
  }
  
  public void a(ltt paramltt) {
    this.b = paramltt;
  }
  
  public kut b(kuw paramkuw) {
    kut kut = new kut();
    kut.a((kus)paramkuw);
    kut.c(false);
    kut.a(kuu.GONE);
    kut.b(kuu.CAMERA);
    kut.b(false);
    kut.a(false);
    return kut;
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */