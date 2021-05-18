.class public final Lnii;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lnik;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnii;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lnii;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lnii;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnii;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lnii;
    .locals 2

    new-instance v0, Lnii;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lnii;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {p0}, Lnii;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lnii;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnii;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lnii;
    .locals 2

    new-instance v0, Lnii;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lnii;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method static synthetic c(Lnii;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lnii;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lnii;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnii;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lnii;)Lnik;
    .locals 1

    iget-object v0, p0, Lnii;->d:Lnik;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lnij;

    invoke-direct {v0, p0}, Lnij;-><init>(Lnii;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lnii;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lnii;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnii;->c:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lnii;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lnik;)Lnii;
    .locals 0

    iput-object p1, p0, Lnii;->d:Lnik;

    return-object p0
.end method
