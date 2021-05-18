.class Lorg/dom4j/io/SAXModifyContentHandler;
.super Lorg/dom4j/io/SAXContentHandler;
.source "SourceFile"


# instance fields
.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/dom4j/io/SAXContentHandler;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V

    .line 45
    return-void
.end method

.method private activeHandlers()Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->getActiveHandlerCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->characters([CII)V

    .line 234
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->characters([CII)V

    .line 237
    :cond_0
    return-void
.end method

.method public comment([CII)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->comment([CII)V

    .line 80
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->comment([CII)V

    .line 83
    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endCDATA()V

    .line 96
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endCDATA()V

    .line 99
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endDTD()V

    .line 71
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDTD()V

    .line 74
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endDocument()V

    .line 181
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 184
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/DispatchHandler;->getHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    move-result-object v0

    .line 200
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v1, :cond_0

    .line 204
    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    instance-of v1, v0, Lorg/dom4j/io/SAXModifyElementHandler;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Lorg/dom4j/io/SAXModifyElementHandler;

    .line 209
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyElementHandler;->getModifiedElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v1, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lorg/dom4j/io/SAXModifyException;

    invoke-direct {v1, v0}, Lorg/dom4j/io/SAXModifyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->endEntity(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->endEntity(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->endPrefixMapping(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->ignorableWhitespace([CII)V

    .line 148
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->ignorableWhitespace([CII)V

    .line 151
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 165
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 49
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->skippedEntity(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public startCDATA()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->startCDATA()V

    .line 54
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->startCDATA()V

    .line 57
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->startDocument()V

    .line 139
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->startDocument()V

    .line 142
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lorg/dom4j/io/SAXContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 131
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/dom4j/io/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 134
    :cond_0
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->startEntity(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->startEntity(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Lorg/dom4j/io/SAXContentHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/dom4j/io/XMLWriter;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
