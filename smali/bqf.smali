.class abstract Lbqf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final b:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final c:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lbqf;->d()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lbqf;->d:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbqb;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lbqf;-><init>()V

    return-void
.end method

.method static synthetic a(Lbqf;Z)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lbqf;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lbqf;->e:Ljava/util/TreeSet;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    invoke-static {p0}, Lbqa;->a(Lbqf;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lbqf;->e:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_1
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 274
    const-string v4, "generic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 289
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    move v0, v1

    .line 290
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move v0, v1

    .line 285
    goto :goto_0

    .line 293
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 294
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lbqq;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 295
    sget-object v6, Lbqf;->d:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v1

    .line 296
    goto :goto_0

    .line 293
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lbqf;->e:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbqf;->a(Z)V

    .line 307
    :cond_0
    iget-object v0, p0, Lbqf;->e:Ljava/util/TreeSet;

    return-object v0
.end method
