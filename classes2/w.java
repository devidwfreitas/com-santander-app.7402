import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.nio.charset.Charset;

public class w {
  public static String a(String paramString) {
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
      ax ax = new ax();
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      ax.a(arrayOfByte, 0, arrayOfByte.length, dataOutputStream);
      return new String(byteArrayOutputStream.toByteArray());
    } catch (Exception exception) {
      throw new Exception("Erro ao codificar mensagem.");
    } 
  }
  
  public static String b(String paramString) {
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
      ax ax = new ax();
      byte[] arrayOfByte = paramString.getBytes();
      ax.b(arrayOfByte, 0, arrayOfByte.length, dataOutputStream);
      Charset charset = Charset.forName("UTF-8");
      return new String(byteArrayOutputStream.toByteArray(), charset);
    } catch (Exception exception) {
      throw new Exception("ERR-MSG-01");
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */