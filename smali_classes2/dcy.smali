.class public Ldcy;
.super Ldbo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Ldbo;"
    }
.end annotation


# instance fields
.field private final c:Lcqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcqn",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcqn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqn",
            "<TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Ldbo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ldcy;->c:Lcqn;

    return-void
.end method


# virtual methods
.method public a(Ldan;)Ldan;
    .locals 1
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "R::",
            "Lcqg;",
            "T:",
            "Ldan",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Ldcy;->c:Lcqn;

    invoke-virtual {v0, p1}, Lcqn;->a(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldej;)V
    .locals 0

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldcy;->c:Lcqn;

    invoke-virtual {v0}, Lcqn;->g()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldan;)Ldan;
    .locals 1
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Ldcy;->c:Lcqn;

    invoke-virtual {v0, p1}, Lcqn;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldej;)V
    .locals 0

    return-void
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Ldcy;->c:Lcqn;

    invoke-virtual {v0}, Lcqn;->f()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
