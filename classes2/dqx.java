import java.io.IOException;

public class dqx extends IOException {
  dqx(int paramInt1, int paramInt2) {
    super((new StringBuilder(108)).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(paramInt1).append(" limit ").append(paramInt2).append(").").toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */