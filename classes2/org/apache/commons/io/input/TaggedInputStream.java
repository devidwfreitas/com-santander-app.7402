package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.UUID;
import org.apache.commons.io.TaggedIOException;

public class TaggedInputStream extends ProxyInputStream {
  private final Serializable tag = UUID.randomUUID();
  
  public TaggedInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  protected void handleIOException(IOException paramIOException) {
    throw new TaggedIOException(paramIOException, this.tag);
  }
  
  public boolean isCauseOf(Throwable paramThrowable) {
    return TaggedIOException.isTaggedWith(paramThrowable, this.tag);
  }
  
  public void throwIfCauseOf(Throwable paramThrowable) {
    TaggedIOException.throwCauseIfTaggedWith(paramThrowable, this.tag);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\TaggedInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */