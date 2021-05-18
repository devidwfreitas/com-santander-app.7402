.class public Lorg/dom4j/io/XPPReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

.field private xppParser:Lorg/gjt/xpp/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 57
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 275
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getXPPFactory()Lorg/gjt/xpp/XmlPullParserFactory;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Lorg/gjt/xpp/XmlPullParserFactory;->newInstance()Lorg/gjt/xpp/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    return-object v0
.end method

.method public getXPPParser()Lorg/gjt/xpp/XmlPullParser;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPFactory()Lorg/gjt/xpp/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gjt/xpp/XmlPullParserFactory;->newPullParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    return-object v0
.end method

.method protected parseDocument()Lorg/dom4j/Document;
    .locals 6

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v2

    .line 305
    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v3

    .line 307
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lorg/gjt/xpp/XmlPullParser;->setNamespaceAware(Z)V

    .line 309
    new-instance v4, Lorg/dom4j/xpp/ProxyXmlStartTag;

    invoke-direct {v4}, Lorg/dom4j/xpp/ProxyXmlStartTag;-><init>()V

    .line 310
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/gjt/xpp/XmlPullParserFactory;->newEndTag()Lorg/gjt/xpp/XmlEndTag;

    move-result-object v5

    .line 313
    :goto_0
    invoke-interface {v3}, Lorg/gjt/xpp/XmlPullParser;->next()B

    move-result v0

    .line 315
    packed-switch v0, :pswitch_data_0

    .line 360
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :pswitch_0
    invoke-interface {v3, v4}, Lorg/gjt/xpp/XmlPullParser;->readStartTag(Lorg/gjt/xpp/XmlStartTag;)V

    .line 322
    invoke-virtual {v4}, Lorg/dom4j/xpp/ProxyXmlStartTag;->getElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 324
    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    :goto_1
    move-object v1, v0

    .line 362
    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v2, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    goto :goto_1

    .line 336
    :pswitch_1
    invoke-interface {v3, v5}, Lorg/gjt/xpp/XmlPullParser;->readEndTag(Lorg/gjt/xpp/XmlEndTag;)V

    .line 338
    if-eqz v1, :cond_2

    .line 339
    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    goto :goto_1

    .line 346
    :pswitch_2
    invoke-interface {v3}, Lorg/gjt/xpp/XmlPullParser;->readContent()Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v1, :cond_1

    .line 349
    invoke-interface {v1, v0}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-object v0, v1

    goto :goto_1

    .line 351
    :cond_1
    const-string v0, "Cannot have text content outside of the root document"

    .line 353
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-direct {v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :pswitch_3
    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/gjt/xpp/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 156
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 209
    invoke-interface {v0, p2}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 118
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read([C)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/gjt/xpp/XmlPullParser;->setInput([C)V

    .line 174
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 285
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 297
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 375
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 263
    return-void
.end method

.method public setXPPFactory(Lorg/gjt/xpp/XmlPullParserFactory;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    .line 235
    return-void
.end method
