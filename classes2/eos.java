import java.sql.Timestamp;
import java.util.Date;

class eos extends ekn<Timestamp> {
  eos(eor parameor, ekn paramekn) {}
  
  public Timestamp a(epo paramepo) {
    Date date = this.a.b(paramepo);
    return (date != null) ? new Timestamp(date.getTime()) : null;
  }
  
  public void a(eps parameps, Timestamp paramTimestamp) {
    this.a.a(parameps, paramTimestamp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */