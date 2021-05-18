package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;

public final class NodeBuilder {
  private static Provider PROVIDER = ProviderFactory.getInstance();
  
  public static InputNode read(InputStream paramInputStream) {
    return read(PROVIDER.provide(paramInputStream));
  }
  
  public static InputNode read(Reader paramReader) {
    return read(PROVIDER.provide(paramReader));
  }
  
  private static InputNode read(EventReader paramEventReader) {
    return (new NodeReader(paramEventReader)).readRoot();
  }
  
  public static OutputNode write(Writer paramWriter) {
    return write(paramWriter, new Format());
  }
  
  public static OutputNode write(Writer paramWriter, Format paramFormat) {
    return (new NodeWriter(paramWriter, paramFormat)).writeRoot();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NodeBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */