.class public Lgah;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lgai;

.field private c:Lgac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    new-instance v0, Lgai;

    invoke-direct {v0, p0}, Lgai;-><init>(Lgah;)V

    iput-object v0, p0, Lgah;->b:Lgai;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lgah;->c:Lgac;

    .line 32
    return-void
.end method

.method static synthetic a(Lgah;)Lgac;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgah;->c:Lgac;

    return-object v0
.end method


# virtual methods
.method public a()Lgac;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgah;->c:Lgac;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Lgac;

    invoke-direct {v0}, Lgac;-><init>()V

    iput-object v0, p0, Lgah;->c:Lgac;

    .line 42
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lgah;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 46
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lgah;->b:Lgai;

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
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
