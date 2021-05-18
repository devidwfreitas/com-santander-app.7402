import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class foo extends fom {
  private List<? extends fuu> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  private int d;
  
  private final int e = 1;
  
  public foo(Context paramContext, List<? extends fuu> paramList) {
    this.b = paramContext;
    this.a = paramList;
  }
  
  public foo(Context paramContext, List<? extends fuu> paramList, int paramInt) {
    this.b = paramContext;
    this.a = paramList;
    this.d = paramInt;
  }
  
  private void a(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 1:
        break;
    } 
    frq.d("Cartoes_PagamentoDaFatura_ContaDeDebitoDoPagamento_Acao", "SelecionarContaDebito");
  }
  
  public void a(nez paramnez) {
    this.c = paramnez;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    LinearLayout linearLayout1 = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969505, null);
    TextView textView3 = (TextView)linearLayout1.findViewById(2131759557);
    TextView textView1 = (TextView)linearLayout1.findViewById(2131759558);
    TextView textView4 = (TextView)linearLayout1.findViewById(2131756472);
    TextView textView2 = (TextView)linearLayout1.findViewById(2131756590);
    TextView textView5 = (TextView)linearLayout1.findViewById(2131759559);
    fuu fuu = this.a.get(paramInt);
    textView3.setText(naq.c(fuu.getAgencia(), fuu.getCuenta()));
    LinearLayout linearLayout2 = (LinearLayout)linearLayout1.findViewById(2131756462);
    LinearLayout linearLayout3 = (LinearLayout)linearLayout1.findViewById(2131756458);
    if (((fuu)this.a.get(paramInt)).getNomeBanco() != null && ((fuu)this.a.get(paramInt)).getNomeBanco().equals("CARTAOPAG") && fuu.getIndicadorMesmoTitular() != null && fuu.getIndicadorMesmoTitular().equals("BE")) {
      linearLayout2.setVisibility(0);
      linearLayout3.setVisibility(8);
    } else {
      linearLayout2.setVisibility(8);
      linearLayout3.setVisibility(0);
    } 
    if (fuu.getDescricao() != null && fuu.getDescricao().length() > 0 && fuu.getNomeBanco() != null && fuu.getNomeBanco().contains("CARTAOPAG")) {
      textView4.setText(fuu.getDescricao());
      textView3.setText("");
      textView3 = (TextView)linearLayout1.findViewById(2131758606);
      textView3.setText("Limite disponível:");
      textView3.setPadding(0, 35, 0, 0);
      if (fuu.getDescricao().contains("UNLIMITED")) {
        textView3.setVisibility(8);
        textView1.setText("Unlimited");
      } else {
        textView1.setText(naj.f(fuu.getValor()));
      } 
      textView2.setText("");
      linearLayout1.findViewById(2131759559).setVisibility(8);
      linearLayout1.setOnClickListener(new fop(this, paramInt));
      linearLayout1.setOnTouchListener(new foq(this));
      ((ViewPager)paramView).addView((View)linearLayout1, 0);
      return linearLayout1;
    } 
    textView1.setText(naj.f(fuu.getExtractoHome().u()));
    textView2.setText(naj.f(fuu.getValor()));
    linearLayout1.setOnClickListener(new fop(this, paramInt));
    linearLayout1.setOnTouchListener(new foq(this));
    ((ViewPager)paramView).addView((View)linearLayout1, 0);
    return linearLayout1;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\foo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */