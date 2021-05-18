package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader implements EventReader {
  private XmlPullParser parser;
  
  private EventNode peek;
  
  public PullReader(XmlPullParser paramXmlPullParser) {
    this.parser = paramXmlPullParser;
  }
  
  private PullReader$Entry attribute(int paramInt) {
    return new PullReader$Entry(this.parser, paramInt);
  }
  
  private PullReader$Start build(PullReader$Start paramPullReader$Start) {
    int j = this.parser.getAttributeCount();
    for (int i = 0; i < j; i++) {
      PullReader$Entry pullReader$Entry = attribute(i);
      if (!pullReader$Entry.isReserved())
        paramPullReader$Start.add(pullReader$Entry); 
    } 
    return paramPullReader$Start;
  }
  
  private PullReader$End end() {
    return new PullReader$End(null);
  }
  
  private EventNode read() {
    int i = this.parser.next();
    return (i != 1) ? ((i == 2) ? start() : ((i == 4) ? text() : ((i == 3) ? end() : read()))) : null;
  }
  
  private PullReader$Start start() {
    PullReader$Start pullReader$Start2 = new PullReader$Start(this.parser);
    PullReader$Start pullReader$Start1 = pullReader$Start2;
    if (pullReader$Start2.isEmpty())
      pullReader$Start1 = build(pullReader$Start2); 
    return pullReader$Start1;
  }
  
  private PullReader$Text text() {
    return new PullReader$Text(this.parser);
  }
  
  public EventNode next() {
    EventNode eventNode = this.peek;
    if (eventNode == null)
      return read(); 
    this.peek = null;
    return eventNode;
  }
  
  public EventNode peek() {
    if (this.peek == null)
      this.peek = next(); 
    return this.peek;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PullReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */