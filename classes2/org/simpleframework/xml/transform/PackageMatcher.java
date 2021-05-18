package org.simpleframework.xml.transform;

import java.io.File;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

class PackageMatcher implements Matcher {
  private Transform matchEnum(Class paramClass) {
    Class clazz = paramClass.getSuperclass();
    if (clazz != null) {
      if (clazz.isEnum())
        return new EnumTransform(paramClass); 
      if (paramClass.isEnum())
        return new EnumTransform(paramClass); 
    } 
    return null;
  }
  
  private Transform matchFile(Class<File> paramClass) {
    return (paramClass == File.class) ? new FileTransform() : null;
  }
  
  private Transform matchLanguage(Class<Boolean> paramClass) {
    return (Transform)((paramClass == Boolean.class) ? new BooleanTransform() : ((paramClass == Integer.class) ? new IntegerTransform() : ((paramClass == Long.class) ? new LongTransform() : ((paramClass == Double.class) ? new DoubleTransform() : ((paramClass == Float.class) ? new FloatTransform() : ((paramClass == Short.class) ? new ShortTransform() : ((paramClass == Byte.class) ? new ByteTransform() : ((paramClass == Character.class) ? new CharacterTransform() : ((paramClass == String.class) ? new StringTransform() : ((paramClass == Class.class) ? new ClassTransform() : null))))))))));
  }
  
  private Transform matchMath(Class<BigDecimal> paramClass) {
    return (Transform)((paramClass == BigDecimal.class) ? new BigDecimalTransform() : ((paramClass == BigInteger.class) ? new BigIntegerTransform() : null));
  }
  
  private Transform matchSQL(Class<Time> paramClass) {
    return (paramClass == Time.class) ? new DateTransform<Time>(paramClass) : ((paramClass == Date.class) ? new DateTransform<Time>(paramClass) : ((paramClass == Timestamp.class) ? new DateTransform<Time>(paramClass) : null));
  }
  
  private Transform matchURL(Class<URL> paramClass) {
    return (paramClass == URL.class) ? new URLTransform() : null;
  }
  
  private Transform matchUtility(Class<Date> paramClass) {
    return (Transform)((paramClass == Date.class) ? new DateTransform<Date>(paramClass) : ((paramClass == Locale.class) ? new LocaleTransform() : ((paramClass == Currency.class) ? new CurrencyTransform() : ((paramClass == GregorianCalendar.class) ? new GregorianCalendarTransform() : ((paramClass == TimeZone.class) ? new TimeZoneTransform() : ((paramClass == AtomicInteger.class) ? new AtomicIntegerTransform() : ((paramClass == AtomicLong.class) ? new AtomicLongTransform() : null)))))));
  }
  
  public Transform match(Class paramClass) {
    String str = paramClass.getName();
    return str.startsWith("java.lang") ? matchLanguage(paramClass) : (str.startsWith("java.util") ? matchUtility(paramClass) : (str.startsWith("java.net") ? matchURL(paramClass) : (str.startsWith("java.io") ? matchFile(paramClass) : (str.startsWith("java.sql") ? matchSQL(paramClass) : (str.startsWith("java.math") ? matchMath(paramClass) : matchEnum(paramClass))))));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\PackageMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */