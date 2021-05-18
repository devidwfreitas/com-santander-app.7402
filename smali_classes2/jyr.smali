.class public Ljyr;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfuv;

.field private c:Lfuu;

.field private d:Ljys;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object v0, p0, Ljyr;->b:Lfuv;

    .line 29
    iput-object v0, p0, Ljyr;->c:Lfuu;

    .line 30
    new-instance v0, Ljys;

    invoke-direct {v0, p0}, Ljys;-><init>(Ljyr;)V

    iput-object v0, p0, Ljyr;->d:Ljys;

    .line 34
    return-void
.end method

.method static synthetic a(Ljyr;)Lfuu;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyr;->c:Lfuu;

    return-object v0
.end method

.method static synthetic a(Ljyr;Lfuu;)Lfuu;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyr;->c:Lfuu;

    return-object p1
.end method

.method static synthetic b(Ljyr;)Lfuv;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyr;->b:Lfuv;

    return-object v0
.end method


# virtual methods
.method public a()Lfuv;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljyr;->b:Lfuv;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lfuv;

    invoke-direct {v0}, Lfuv;-><init>()V

    iput-object v0, p0, Ljyr;->b:Lfuv;

    .line 45
    iget-object v0, p0, Ljyr;->b:Lfuv;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfuv;->a(Ljava/util/Vector;)V

    .line 47
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljyr;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 51
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Ljyr;->d:Ljys;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljyr;->b:Lfuv;

    goto :goto_0
.end method
