.class public Lgak;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lgae;

.field private c:Lgad;

.field private d:Lgal;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    new-instance v0, Lgal;

    invoke-direct {v0, p0}, Lgal;-><init>(Lgak;)V

    iput-object v0, p0, Lgak;->d:Lgal;

    .line 32
    return-void
.end method

.method static synthetic a(Lgak;)Lgae;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgak;->b:Lgae;

    return-object v0
.end method

.method static synthetic a(Lgak;Lgae;)Lgae;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lgak;->b:Lgae;

    return-object p1
.end method

.method static synthetic b(Lgak;)Lgad;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgak;->c:Lgad;

    return-object v0
.end method


# virtual methods
.method public a()Lgad;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgak;->c:Lgad;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lgad;

    invoke-direct {v0}, Lgad;-><init>()V

    iput-object v0, p0, Lgak;->c:Lgad;

    .line 37
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 40
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lgak;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 41
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lgak;->d:Lgal;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lgak;->c:Lgad;

    goto :goto_0
.end method
