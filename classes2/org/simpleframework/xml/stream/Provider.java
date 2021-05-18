package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;

interface Provider {
  EventReader provide(InputStream paramInputStream);
  
  EventReader provide(Reader paramReader);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Provider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */