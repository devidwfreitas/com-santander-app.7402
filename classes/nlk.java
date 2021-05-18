import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE})
public @interface nlk {
  Class<?>[] a() default {};
  
  Class<?>[] b() default {};
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\nlk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */