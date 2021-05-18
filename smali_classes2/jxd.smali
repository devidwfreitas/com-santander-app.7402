.class public Ljxd;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfva;

.field private c:Lfvl;

.field private d:Lfvc;

.field private e:Ljxe;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object v0, p0, Ljxd;->b:Lfva;

    .line 29
    iput-object v0, p0, Ljxd;->c:Lfvl;

    .line 30
    iput-object v0, p0, Ljxd;->d:Lfvc;

    .line 31
    new-instance v0, Ljxe;

    invoke-direct {v0, p0}, Ljxe;-><init>(Ljxd;)V

    iput-object v0, p0, Ljxd;->e:Ljxe;

    .line 35
    return-void
.end method

.method static synthetic a(Ljxd;)Lfva;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljxd;->b:Lfva;

    return-object v0
.end method

.method static synthetic a(Ljxd;Lfvc;)Lfvc;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljxd;->d:Lfvc;

    return-object p1
.end method

.method static synthetic a(Ljxd;Lfvl;)Lfvl;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljxd;->c:Lfvl;

    return-object p1
.end method

.method static synthetic b(Ljxd;)Lfvl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljxd;->c:Lfvl;

    return-object v0
.end method

.method static synthetic c(Ljxd;)Lfvc;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljxd;->d:Lfvc;

    return-object v0
.end method


# virtual methods
.method public a()Lfva;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljxd;->b:Lfva;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lfva;

    invoke-direct {v0}, Lfva;-><init>()V

    iput-object v0, p0, Ljxd;->b:Lfva;

    .line 46
    iget-object v0, p0, Ljxd;->b:Lfva;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfva;->a(Ljava/util/Vector;)V

    .line 48
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 51
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljxd;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 52
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Ljxd;->e:Ljxe;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljxd;->b:Lfva;

    goto :goto_0
.end method
