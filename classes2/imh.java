import android.app.Activity;
import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;

public class imh implements View.OnClickListener {
  public imh(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity, DataSetObserver paramDataSetObserver) {}
  
  public void onClick(View paramView) {
    TextView textView2 = (TextView)this.b.findViewById(2131757615);
    TextView textView1 = (TextView)this.b.findViewById(2131757617);
    String str2 = textView2.getText().toString();
    String str1 = textView1.getText().toString();
    if (CadastrarHabilitacaoInternacionalActivity.h(this.b).getText() == null || CadastrarHabilitacaoInternacionalActivity.i(this.b) == null || CadastrarHabilitacaoInternacionalActivity.d(this.b).getText().equals("") || CadastrarHabilitacaoInternacionalActivity.e(this.b).getText().equals("") || CadastrarHabilitacaoInternacionalActivity.h(this.b).getText().equals("") || CadastrarHabilitacaoInternacionalActivity.i(this.b).equals("") || CadastrarHabilitacaoInternacionalActivity.j(this.b).equals("")) {
      CadastrarHabilitacaoInternacionalActivity.a(this.b, 3);
      return;
    } 
    if (CadastrarHabilitacaoInternacionalActivity.a(this.b, str2, str1)) {
      if (CadastrarHabilitacaoInternacionalActivity.a(this.b, CadastrarHabilitacaoInternacionalActivity.i(this.b))) {
        inx inx = new inx(CadastrarHabilitacaoInternacionalActivity.i(this.b), CadastrarHabilitacaoInternacionalActivity.j(this.b), str2, str1);
        CadastrarHabilitacaoInternacionalActivity.b(this.b).add(inx);
        CadastrarHabilitacaoInternacionalActivity.a(this.b, new fqi(CadastrarHabilitacaoInternacionalActivity.b(this.b), (Context)this.b, this.a));
        CadastrarHabilitacaoInternacionalActivity.l(this.b).setAdapter((ListAdapter)CadastrarHabilitacaoInternacionalActivity.k(this.b));
        CadastrarHabilitacaoInternacionalActivity.g(this.b);
        this.b.b();
        return;
      } 
      mxn.b((Activity)CadastrarHabilitacaoInternacionalActivity.f(this.b), "Selecione um país para incluir.");
      return;
    } 
    CadastrarHabilitacaoInternacionalActivity.a(this.b, 2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */