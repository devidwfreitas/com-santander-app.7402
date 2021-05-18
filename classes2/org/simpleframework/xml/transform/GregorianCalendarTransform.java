package org.simpleframework.xml.transform;

import java.util.Date;
import java.util.GregorianCalendar;

class GregorianCalendarTransform implements Transform<GregorianCalendar> {
  private final DateTransform transform;
  
  public GregorianCalendarTransform() {
    this(Date.class);
  }
  
  public GregorianCalendarTransform(Class<Date> paramClass) {
    this.transform = new DateTransform<Date>(paramClass);
  }
  
  private GregorianCalendar read(Date paramDate) {
    GregorianCalendar gregorianCalendar = new GregorianCalendar();
    if (paramDate != null)
      gregorianCalendar.setTime(paramDate); 
    return gregorianCalendar;
  }
  
  public GregorianCalendar read(String paramString) {
    return read(this.transform.read(paramString));
  }
  
  public String write(GregorianCalendar paramGregorianCalendar) {
    return this.transform.write(paramGregorianCalendar.getTime());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\GregorianCalendarTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */