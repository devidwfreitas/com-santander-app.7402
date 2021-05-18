import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Date;

class iko implements TextWatcher {
  private long b = 0L;
  
  iko(ikl paramikl) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (ikl.a(this.a).getText().toString().length() == 0)
      ikl.e(this.a).setVisibility(8); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    TextView textView;
    long l = (new Date()).getTime();
    if (l > this.b + 200L) {
      this.b = l;
      paramCharSequence = ikl.a(this.a).getText().toString();
      if (paramInt3 >= 33)
        paramCharSequence = ikl.a(this.a, (String)paramCharSequence); 
      textView = (TextView)this.a.getView().findViewById(2131757307);
      if (paramCharSequence.length() > 0) {
        paramCharSequence = paramCharSequence.replace(" ", "").replace(".", "");
        EditText editText1 = (EditText)this.a.getView().findViewById(2131757285);
        EditText editText2 = (EditText)this.a.getView().findViewById(2131757313);
        if (paramCharSequence.charAt(0) == '8') {
          if (paramInt1 == 0) {
            textView.setText("Empresa:");
            editText1.setEnabled(false);
            ikl.c(this.a).setVisibility(8);
            ikl.d(this.a).setVisibility(8);
            editText2.setEnabled(false);
            ikl.e(this.a).setVisibility(8);
            ikl.f(this.a).setVisibility(8);
          } 
          ikl.a(this.a).setText(ikl.b(this.a, (String)paramCharSequence));
          ikl.a(this.a).setSelection(ikl.a(this.a).getText().length());
          return;
        } 
        if (paramCharSequence.charAt(0) != '9') {
          if (paramInt1 == 0) {
            textView.setText("Beneficiário:");
            editText1.setEnabled(true);
            ikl.c(this.a).setVisibility(0);
            ikl.d(this.a).setVisibility(0);
            editText2.setEnabled(true);
            ikl.e(this.a).setVisibility(0);
            ikl.f(this.a).setVisibility(0);
          } 
          ikl.a(this.a).setText(ikl.c(this.a, (String)paramCharSequence));
          ikl.a(this.a).setSelection(ikl.a(this.a).getText().length());
          return;
        } 
        if (paramCharSequence.charAt(0) == '9') {
          hat.d().a((Activity)ikl.g(this.a), "Informação invalida");
          return;
        } 
        return;
      } 
    } else {
      return;
    } 
    textView.setText("Beneficiário:");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */