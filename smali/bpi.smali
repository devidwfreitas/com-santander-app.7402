.class public Lbpi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field private static final b:Ljava/lang/String; = "https"

.field private static final c:Ljava/lang/String; = "graph.facebook.com"

.field private static final d:Ljava/lang/String; = "%s/picture"

.field private static final e:Ljava/lang/String; = "height"

.field private static final f:Ljava/lang/String; = "width"

.field private static final g:Ljava/lang/String; = "migration_overrides"

.field private static final h:Ljava/lang/String; = "{october_2012:true}"


# instance fields
.field private i:Landroid/content/Context;

.field private j:Landroid/net/Uri;

.field private k:Lbpl;

.field private l:Z

.field private m:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lbpk;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lbpk;->a(Lbpk;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbpi;->i:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lbpk;->b(Lbpk;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lbpi;->j:Landroid/net/Uri;

    .line 96
    invoke-static {p1}, Lbpk;->c(Lbpk;)Lbpl;

    move-result-object v0

    iput-object v0, p0, Lbpi;->k:Lbpl;

    .line 97
    invoke-static {p1}, Lbpk;->d(Lbpk;)Z

    move-result v0

    iput-boolean v0, p0, Lbpi;->l:Z

    .line 98
    invoke-static {p1}, Lbpk;->e(Lbpk;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lbpi;->m:Ljava/lang/Object;

    .line 99
    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Lbpk;->e(Lbpk;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lbpk;Lbpj;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lbpi;-><init>(Lbpk;)V

    return-void
.end method

.method public static a(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    const-string v0, "userId"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 70
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either width or height must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    .line 76
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "graph.facebook.com"

    .line 77
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/picture"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    .line 78
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 80
    if-eqz v1, :cond_1

    .line 81
    const-string v3, "height"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    .line 85
    const-string v1, "width"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    :cond_2
    const-string v0, "migration_overrides"

    const-string v1, "{october_2012:true}"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbpi;->i:Landroid/content/Context;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lbpi;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Lbpl;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lbpi;->k:Lbpl;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lbpi;->l:Z

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbpi;->m:Ljava/lang/Object;

    return-object v0
.end method
