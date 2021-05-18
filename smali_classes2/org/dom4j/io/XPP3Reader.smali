.class public Lorg/dom4j/io/XPP3Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private xppParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 55
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 275
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getXPPFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 230
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-object v0
.end method

.method public getXPPParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected parseDocument()Lorg/dom4j/Document;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v5

    .line 305
    invoke-virtual {v5}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v6

    .line 306
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 308
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 311
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v1

    .line 313
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 355
    :pswitch_2
    return-object v6

    .line 315
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 318
    if-ltz v2, :cond_1

    .line 319
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 320
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-interface {v6, v4, v1}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 323
    :cond_1
    const-string v2, ""

    invoke-interface {v6, v1, v2}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 330
    :pswitch_4
    if-eqz v0, :cond_2

    .line 331
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 333
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 340
    :pswitch_5
    if-eqz v0, :cond_3

    .line 341
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 343
    :cond_3
    const-string v0, "Cannot have text content outside of the root document"

    .line 345
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-direct {v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :pswitch_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 361
    :goto_1
    invoke-virtual {v5, v1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v1

    .line 362
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v2

    .line 363
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v4

    .line 365
    :goto_2
    if-ge v2, v4, :cond_6

    .line 366
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 367
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 365
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 358
    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v2, v4}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    goto :goto_1

    :cond_6
    move v2, v3

    .line 372
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 373
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    .line 378
    :goto_4
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 373
    :cond_7
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v8, v9}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    goto :goto_4

    .line 381
    :cond_8
    if-eqz v0, :cond_9

    .line 382
    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    :goto_5
    move-object v0, v1

    .line 389
    goto/16 :goto_0

    .line 384
    :cond_9
    invoke-interface {v6, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    goto :goto_5

    .line 393
    :pswitch_7
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :pswitch_8
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 403
    if-eqz v0, :cond_a

    .line 404
    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_0

    .line 406
    :cond_a
    const-string v0, "Cannot have text content outside of the root document"

    .line 408
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-direct {v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 154
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 207
    invoke-interface {v0, p2}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 116
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read([C)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-direct {v1, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 172
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 285
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 297
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 430
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 263
    return-void
.end method

.method public setXPPFactory(Lorg/xmlpull/v1/XmlPullParserFactory;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 235
    return-void
.end method
