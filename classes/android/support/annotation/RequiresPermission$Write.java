package android.support.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
public @interface RequiresPermission$Write {
  RequiresPermission value() default @RequiresPermission;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\annotation\RequiresPermission$Write.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */