import android.view.View;
import android.widget.EditText;

final class ajy implements View.OnClickListener {
  ajy(EditText paramEditText) {}
  
  public final void onClick(View paramView) {
    if (this.a.getText().toString() == null || this.a.getText().toString().isEmpty()) {
      this.a.setText(",00");
      this.a.setSelection(this.a.getText().length() - 3);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */