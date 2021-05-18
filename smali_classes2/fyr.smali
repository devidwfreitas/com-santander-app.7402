.class public Lfyr;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfyh;

.field private c:Lfys;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lfyr;->b:Lfyh;

    .line 29
    new-instance v0, Lfys;

    invoke-direct {v0, p0}, Lfys;-><init>(Lfyr;)V

    iput-object v0, p0, Lfyr;->c:Lfys;

    .line 32
    return-void
.end method

.method static synthetic a(Lfyr;)Lfyh;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lfyr;->b:Lfyh;

    return-object v0
.end method


# virtual methods
.method public a()Lfyh;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lfyr;->b:Lfyh;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Lfyh;

    invoke-direct {v0}, Lfyh;-><init>()V

    iput-object v0, p0, Lfyr;->b:Lfyh;

    .line 43
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lfyr;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 47
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lfyr;->c:Lfys;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lfyr;->b:Lfyh;

    goto :goto_0
.end method
