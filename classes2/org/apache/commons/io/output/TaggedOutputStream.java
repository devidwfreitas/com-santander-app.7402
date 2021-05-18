package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.UUID;
import org.apache.commons.io.TaggedIOException;

public class TaggedOutputStream extends ProxyOutputStream {
  private final Serializable tag = UUID.randomUUID();
  
  public TaggedOutputStream(OutputStream paramOutputStream) {
    super(paramOutputStream);
  }
  
  protected void handleIOException(IOException paramIOException) {
    throw new TaggedIOException(paramIOException, this.tag);
  }
  
  public boolean isCauseOf(Exception paramException) {
    return TaggedIOException.isTaggedWith(paramException, this.tag);
  }
  
  public void throwIfCauseOf(Exception paramException) {
    TaggedIOException.throwCauseIfTaggedWith(paramException, this.tag);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\TaggedOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */