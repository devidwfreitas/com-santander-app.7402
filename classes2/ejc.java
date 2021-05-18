import java.lang.reflect.Type;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

final class ejc implements ejy<Date>, ekh<Date> {
  private final DateFormat a;
  
  private final DateFormat b;
  
  ejc() {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }
  
  ejc(int paramInt) {
    this(DateFormat.getDateInstance(paramInt, Locale.US), DateFormat.getDateInstance(paramInt));
  }
  
  public ejc(int paramInt1, int paramInt2) {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }
  
  ejc(String paramString) {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }
  
  ejc(DateFormat paramDateFormat1, DateFormat paramDateFormat2) {
    this.a = paramDateFormat1;
    this.b = paramDateFormat2;
  }
  
  private Date a(ejz paramejz) {
    synchronized (this.b) {
      return this.b.parse(paramejz.d());
    } 
    try {
      Date date = epm.a(paramejz.d(), new ParsePosition(0));
      /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
      return date;
    } catch (ParseException parseException) {
      throw new ekj(paramejz.d(), parseException);
    } 
  }
  
  public ejz a(Date paramDate, Type paramType, ekg paramekg) {
    synchronized (this.b) {
      return new ekf(this.a.format(paramDate));
    } 
  }
  
  public Date a(ejz paramejz, Type paramType, ejx paramejx) {
    if (!(paramejz instanceof ekf))
      throw new ekd("The date should be a string value"); 
    Date date = a(paramejz);
    if (paramType == Date.class)
      return date; 
    if (paramType == Timestamp.class)
      return new Timestamp(date.getTime()); 
    if (paramType == Date.class)
      return new Date(date.getTime()); 
    throw new IllegalArgumentException(getClass() + " cannot deserialize to " + paramType);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(ejc.class.getSimpleName());
    stringBuilder.append('(').append(this.b.getClass().getSimpleName()).append(')');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */