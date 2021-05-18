import android.text.Editable;
import android.text.TextWatcher;
import android.text.format.DateFormat;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

class ilh implements TextWatcher {
  ilh(ikx paramikx) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (ikx.h(this.a).getText().toString().length() == 14) {
      long l = Long.parseLong(ikx.h(this.a).getText().toString().substring(0, 4));
      DateFormat dateFormat = DateFormat.getDateFormat(this.a.getActivity().getApplicationContext());
      if (l != 0L) {
        ikx.i(this.a).setText(dateFormat.format(Long.valueOf(l * 86400000L + 876196800000L)));
        ikx.i(this.a).setEnabled(true);
      } else {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        ikx.i(this.a).setText(dateFormat.format(calendar.getTime()));
        ikx.i(this.a).setEnabled(true);
        ikx.i(this.a).setOnFocusChangeListener(new ili(this));
      } 
      String str = ikx.h(this.a).getText().toString().substring(4, 14);
      ikx.j(this.a).setText(str);
      ikx.j(this.a).setEnabled(true);
      return;
    } 
    ikx.j(this.a).setEnabled(true);
    ikx.i(this.a).setEnabled(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */