import android.text.Spanned;
import android.text.style.StyleSpan;
import java.util.List;

public class hfv extends hfn {
  public hfv(hfy paramhfy) {
    super(paramhfy);
  }
  
  public String g() {
    return "empre-reneg-ler1";
  }
  
  public String h() {
    return "Condições Gerais.";
  }
  
  public bfj i() {
    List<hfo> list = this.a.L();
    bfj bfj = new bfj();
    for (hfo hfo : list) {
      Spanned spanned = a(hfo.c());
      if (hfo.a()) {
        bfj.a((CharSequence)spanned);
      } else {
        bfj.a(hfo.b(), new StyleSpan(1));
        bfj.a(". ");
        bfj.a((CharSequence)spanned);
      } 
      bfj.a("\n\n");
    } 
    return bfj;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */