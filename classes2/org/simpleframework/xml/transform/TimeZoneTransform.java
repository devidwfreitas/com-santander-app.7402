package org.simpleframework.xml.transform;

import java.util.TimeZone;

class TimeZoneTransform implements Transform<TimeZone> {
  public TimeZone read(String paramString) {
    return TimeZone.getTimeZone(paramString);
  }
  
  public String write(TimeZone paramTimeZone) {
    return paramTimeZone.getID();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\TimeZoneTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */