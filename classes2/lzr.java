import android.app.DatePickerDialog;
import android.content.Context;
import android.widget.DatePicker;
import java.util.Calendar;
import java.util.Date;

class lzr implements DatePickerDialog.OnDateSetListener {
  lzr(lzq paramlzq, Calendar paramCalendar) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    this.a.set(paramInt1, paramInt2, paramInt3);
    if (this.a.getTime().after(new Date())) {
      mhj.c((Context)lzp.b(this.b.a), "Não é possível selecionar uma data futura");
      lzp.c(this.b.a).setText(mhj.a(new Date(), "dd/MM/yyyy"));
      lzp.a(this.b.a, new Date());
      return;
    } 
    lzp.c(this.b.a).setText(mhj.a(this.a.getTime(), "dd/MM/yyyy"));
    lzp.a(this.b.a, this.a.getTime());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */