import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Target;

@Documented
@Inherited
@Target({ElementType.TYPE})
public @interface gna {
  String a() default "";
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */