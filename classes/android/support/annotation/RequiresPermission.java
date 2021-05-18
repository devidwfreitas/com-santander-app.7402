package android.support.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PARAMETER})
public @interface RequiresPermission {
  String[] allOf() default {};
  
  String[] anyOf() default {};
  
  boolean conditional() default false;
  
  String value() default "";
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\annotation\RequiresPermission.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */