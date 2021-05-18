.class public Lfoa;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfny;

.field private c:Lfyl;

.field private d:Lfob;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-instance v0, Lfny;

    invoke-direct {v0}, Lfny;-><init>()V

    iput-object v0, p0, Lfoa;->b:Lfny;

    .line 31
    new-instance v0, Lfyl;

    invoke-direct {v0}, Lfyl;-><init>()V

    iput-object v0, p0, Lfoa;->c:Lfyl;

    .line 32
    new-instance v0, Lfob;

    invoke-direct {v0, p0}, Lfob;-><init>(Lfoa;)V

    iput-object v0, p0, Lfoa;->d:Lfob;

    .line 36
    return-void
.end method

.method static synthetic a(Lfoa;)Lfny;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lfoa;->b:Lfny;

    return-object v0
.end method

.method static synthetic a(Lfoa;Lfyl;)Lfyl;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lfoa;->c:Lfyl;

    return-object p1
.end method

.method static synthetic b(Lfoa;)Lfyl;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lfoa;->c:Lfyl;

    return-object v0
.end method


# virtual methods
.method public a()Lfny;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfoa;->b:Lfny;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lfoa;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 50
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lfoa;->d:Lfob;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lfoa;->b:Lfny;

    goto :goto_0
.end method
