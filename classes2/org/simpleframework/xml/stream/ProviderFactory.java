package org.simpleframework.xml.stream;

final class ProviderFactory {
  public static Provider getInstance() {
    try {
      return new StreamProvider();
    } catch (Throwable throwable) {
      try {
        return new PullProvider();
      } catch (Throwable throwable1) {
        return new DocumentProvider();
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\ProviderFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */