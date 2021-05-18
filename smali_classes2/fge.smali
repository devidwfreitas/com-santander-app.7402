.class Lfge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Superuser.apk"

    aput-object v1, v0, v2

    const-string v1, "myhappy.apk"

    aput-object v1, v0, v3

    sput-object v0, Lfge;->a:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin/"

    aput-object v1, v0, v3

    const-string v1, "/sbin/"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "/system/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/bin/.ext/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/usr/we-need-root/"

    aput-object v2, v0, v1

    sput-object v0, Lfge;->b:[Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfge;->c:Ljava/util/Set;

    .line 25
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "com.noshufou.android.su"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "eu.chainfire.supersu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "eu.chainfire.supersu.pro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "com.koushikdutta.superuser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "com.noshufou.android.su.elite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "david.lahuta.superuser.free.pro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "com.bitcubate.android.su.installer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "com.bitcubate.superuser.pro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lfge;->c:Ljava/util/Set;

    const-string v1, "david.lahuta.superuser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    .line 45
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Boolean;

    invoke-static {p0}, Lfge;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {}, Lfge;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-static {}, Lfge;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v0

    .line 46
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v5, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 47
    shl-int/lit8 v7, v0, 0x1

    .line 48
    if-eqz v4, :cond_0

    move v0, v1

    :goto_1
    add-int v4, v7, v0

    .line 46
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    return v0
.end method

.method private static a()Z
    .locals 5

    .prologue
    .line 59
    :try_start_0
    sget-object v0, Lfge;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Z
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lfge;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "su"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 78
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 81
    sget-object v2, Lfge;->c:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
