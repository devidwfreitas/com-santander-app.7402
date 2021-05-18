import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@nnf
public @interface nnd {
  String a() default "";
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\nnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */