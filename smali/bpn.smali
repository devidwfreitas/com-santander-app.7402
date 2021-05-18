.class Lbpn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static volatile b:Lbon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbpn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpn;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lbon;
    .locals 4

    .prologue
    .line 44
    const-class v1, Lbpn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbpn;->b:Lbon;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lbon;

    sget-object v2, Lbpn;->a:Ljava/lang/String;

    new-instance v3, Lbow;

    invoke-direct {v3}, Lbow;-><init>()V

    invoke-direct {v0, v2, v3}, Lbon;-><init>(Ljava/lang/String;Lbow;)V

    sput-object v0, Lbpn;->b:Lbon;

    .line 47
    :cond_0
    sget-object v0, Lbpn;->b:Lbon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p1}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 77
    :try_start_0
    invoke-static {v1}, Lbpn;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {p0}, Lbpn;->a(Landroid/content/Context;)Lbon;

    move-result-object v2

    .line 82
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lbpo;

    invoke-direct {v3, v0, p1}, Lbpo;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 81
    invoke-virtual {v2, v1, v3}, Lbon;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-static {p0}, Lbpn;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    invoke-static {p1}, Lbpn;->a(Landroid/content/Context;)Lbon;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbon;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    sget-object v2, Lbjb;->CACHE:Lbjb;

    const/4 v3, 0x5

    sget-object v4, Lbpn;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lbpu;->a(Lbjb;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    if-eqz p0, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "fbcdn.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const-string v2, "fbcdn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "akamaihd.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lbpn;->a(Landroid/content/Context;)Lbon;

    move-result-object v0

    invoke-virtual {v0}, Lbon;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lbjb;->CACHE:Lbjb;

    const/4 v2, 0x5

    sget-object v3, Lbpn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCache failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lbpu;->a(Lbjb;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
