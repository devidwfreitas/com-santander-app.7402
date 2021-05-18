.class public Lcww;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcww;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ldgk;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcww;->b:Landroid/content/Context;

    iget-object v0, p0, Lcww;->b:Landroid/content/Context;

    invoke-static {v0}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    iput-object v0, p0, Lcww;->c:Ldgk;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcww;
    .locals 2

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcww;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcww;->a:Lcww;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcwo;->a(Landroid/content/Context;)V

    new-instance v0, Lcww;

    invoke-direct {v0, p0}, Lcww;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcww;->a:Lcww;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcww;->a:Lcww;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method varargs a(Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v0, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcwq;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcwq;-><init>([B)V

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Lcwp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcww;->c:Ldgk;

    invoke-virtual {v1, p1}, Ldgk;->a(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcww;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcww;->b:Landroid/content/Context;

    invoke-static {v1}, Lcwv;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v2}, Lcww;->b(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcww;->b(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v2}, Lcww;->b(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    sget-object v2, Lcws;->a:[Lcwp;

    invoke-virtual {p0, p1, v2}, Lcww;->a(Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    new-array v2, v0, [Lcwp;

    sget-object v3, Lcws;->a:[Lcwp;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcww;->a(Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/pm/PackageManager;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcww;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcww;->b(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcww;->c:Ldgk;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcww;->a(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcww;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcww;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcww;->b:Landroid/content/Context;

    invoke-static {v2}, Lcwv;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method b(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcwq;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcwq;-><init>([B)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {v0, v1}, Lcwo;->b(Ljava/lang/String;Lcwp;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string v1, "GoogleSignatureVerifier"

    const/16 v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cert not in list. atk="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcwo;->a(Ljava/lang/String;Lcwp;)Z

    move-result v0

    goto :goto_1
.end method
