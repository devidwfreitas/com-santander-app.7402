.class public Ldge;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ldsd;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldge;->a(Landroid/content/Context;Ldsz;)Ldsd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ldsz;)Ldsd;
    .locals 5

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "volley/0"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez p1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    new-instance p1, Ldaf;

    invoke-direct {p1}, Ldaf;-><init>()V

    :cond_0
    :goto_1
    new-instance v0, Ldsp;

    invoke-direct {v0, p1}, Ldsp;-><init>(Ldsz;)V

    new-instance v2, Ldsd;

    new-instance v3, Ldss;

    invoke-direct {v3, v1}, Ldss;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ldsd;-><init>(Ldpr;Ldrv;)V

    invoke-virtual {v2}, Ldsd;->a()V

    return-object v2

    :cond_1
    new-instance p1, Ldsw;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Ldsw;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
