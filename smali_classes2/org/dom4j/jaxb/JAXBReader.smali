.class public Lorg/dom4j/jaxb/JAXBReader;
.super Lorg/dom4j/jaxb/JAXBSupport;
.source "SourceFile"


# instance fields
.field private pruneElements:Z

.field private reader:Lorg/dom4j/io/SAXReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 57
    return-void
.end method

.method private getReader()Lorg/dom4j/io/SAXReader;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBReader;->reader:Lorg/dom4j/io/SAXReader;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBReader;->reader:Lorg/dom4j/io/SAXReader;

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBReader;->reader:Lorg/dom4j/io/SAXReader;

    return-object v0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 242
    return-void
.end method

.method public addObjectHandler(Ljava/lang/String;Lorg/dom4j/jaxb/JAXBObjectHandler;)V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lorg/dom4j/jaxb/JAXBReader$UnmarshalElementHandler;

    invoke-direct {v0, p0, p0, p2}, Lorg/dom4j/jaxb/JAXBReader$UnmarshalElementHandler;-><init>(Lorg/dom4j/jaxb/JAXBReader;Lorg/dom4j/jaxb/JAXBReader;Lorg/dom4j/jaxb/JAXBObjectHandler;)V

    .line 219
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 220
    return-void
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/dom4j/jaxb/JAXBReader;->pruneElements:Z

    return v0
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 84
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 87
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 136
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 139
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 155
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 173
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 186
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 189
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 202
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 205
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 105
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->removeHandler(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public removeObjectHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->removeHandler(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public resetHandlers()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXReader;->resetHandlers()V

    .line 260
    return-void
.end method

.method public setPruneElements(Z)V
    .locals 2

    .prologue
    .line 278
    iput-boolean p1, p0, Lorg/dom4j/jaxb/JAXBReader;->pruneElements:Z

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBReader;->getReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    new-instance v1, Lorg/dom4j/jaxb/JAXBReader$PruningElementHandler;

    invoke-direct {v1, p0}, Lorg/dom4j/jaxb/JAXBReader$PruningElementHandler;-><init>(Lorg/dom4j/jaxb/JAXBReader;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 283
    :cond_0
    return-void
.end method
