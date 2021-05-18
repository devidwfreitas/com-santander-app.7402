.class public final Leid;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leib;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Leib;->a(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->b:Ljava/lang/String;

    invoke-static {p1}, Leib;->b(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->a:Ljava/lang/String;

    invoke-static {p1}, Leib;->c(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->c:Ljava/lang/String;

    invoke-static {p1}, Leib;->d(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->d:Ljava/lang/String;

    invoke-static {p1}, Leib;->e(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->e:Ljava/lang/String;

    invoke-static {p1}, Leib;->f(Leib;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Leib;
    .locals 8

    new-instance v0, Leib;

    iget-object v1, p0, Leid;->b:Ljava/lang/String;

    iget-object v2, p0, Leid;->a:Ljava/lang/String;

    iget-object v3, p0, Leid;->c:Ljava/lang/String;

    iget-object v4, p0, Leid;->d:Ljava/lang/String;

    iget-object v5, p0, Leid;->e:Ljava/lang/String;

    iget-object v6, p0, Leid;->f:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Leib;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leic;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Leid;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ApiKey must be set."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Leid;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ApplicationId must be set."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leid;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Leid;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Leid;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Leid;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Leid;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Leid;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Leid;->f:Ljava/lang/String;

    return-object p0
.end method
