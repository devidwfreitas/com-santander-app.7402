.class public Ljxx;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lftn;

.field private c:Ljxy;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ljxx;->b:Lftn;

    .line 29
    new-instance v0, Ljxy;

    invoke-direct {v0, p0}, Ljxy;-><init>(Ljxx;)V

    iput-object v0, p0, Ljxx;->c:Ljxy;

    .line 33
    return-void
.end method

.method static synthetic a(Ljxx;)Lftn;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljxx;->b:Lftn;

    return-object v0
.end method


# virtual methods
.method public a()Lftn;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljxx;->b:Lftn;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lftn;

    invoke-direct {v0}, Lftn;-><init>()V

    iput-object v0, p0, Ljxx;->b:Lftn;

    .line 47
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljxx;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 51
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Ljxx;->c:Ljxy;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljxx;->b:Lftn;

    goto :goto_0
.end method
