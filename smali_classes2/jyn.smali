.class public Ljyn;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvy;

.field private c:Lfvw;

.field private d:Ljyo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 32
    iput-object v0, p0, Ljyn;->b:Lfvy;

    .line 33
    iput-object v0, p0, Ljyn;->c:Lfvw;

    .line 34
    new-instance v0, Ljyo;

    invoke-direct {v0, p0}, Ljyo;-><init>(Ljyn;)V

    iput-object v0, p0, Ljyn;->d:Ljyo;

    .line 38
    return-void
.end method

.method static synthetic a(Ljyn;)Lfvw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljyn;->c:Lfvw;

    return-object v0
.end method

.method static synthetic a(Ljyn;Lfvw;)Lfvw;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Ljyn;->c:Lfvw;

    return-object p1
.end method

.method static synthetic b(Ljyn;)Lfvy;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljyn;->b:Lfvy;

    return-object v0
.end method


# virtual methods
.method public a()Lfvy;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljyn;->b:Lfvy;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lfvy;

    invoke-direct {v0}, Lfvy;-><init>()V

    iput-object v0, p0, Ljyn;->b:Lfvy;

    .line 49
    iget-object v0, p0, Ljyn;->b:Lfvy;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfvy;->a(Ljava/util/Vector;)V

    .line 51
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljyn;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 55
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Ljyn;->d:Ljyo;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ljyn;->b:Lfvy;

    goto :goto_0
.end method
