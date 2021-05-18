.class final Lnks;
.super Ljava/lang/Object;

# interfaces
.implements Lngk;
.implements Lnjj;


# instance fields
.field private final a:Lnhp;

.field private final b:Ljava/io/File;


# direct methods
.method constructor <init>(Lnkj;Lnhp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnkj;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnks;->b:Ljava/io/File;

    iput-object p2, p0, Lnks;->a:Lnhp;

    return-void
.end method

.method static a(Ljava/io/File;)Lnin;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "mobile_publish_settings.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lniq;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lnin;->b(Ljava/lang/String;)Lnin;
    :try_end_0
    .catch Lnio; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lngm;)V
    .locals 4

    invoke-virtual {p1}, Lngm;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnks;->b:Ljava/io/File;

    const-string v3, "visitor_profile.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lniq;->a(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lnks;Lngm;)V
    .locals 0

    invoke-direct {p0, p1}, Lnks;->a(Lngm;)V

    return-void
.end method

.method static b(Ljava/io/File;)Lngm;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "visitor_profile.json"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lniq;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lngm;->a(Ljava/lang/String;)Lngm;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lnks;->c(Ljava/io/File;)V

    goto :goto_0
.end method

.method private static c(Ljava/io/File;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public a(Lngm;Lngm;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lngm;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnks;->a:Lnhp;

    new-instance v1, Lnkt;

    invoke-direct {v1, p0, p2}, Lnkt;-><init>(Lnks;Lngm;)V

    invoke-interface {v0, v1}, Lnhp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lnin;)V
    .locals 3

    invoke-virtual {p1}, Lnin;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnks;->b:Ljava/io/File;

    const-string v2, "mobile_publish_settings.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnin;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lniq;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
