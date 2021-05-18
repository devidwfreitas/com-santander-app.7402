.class public final Lddn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final c:Lddp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddp",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lddo;

    invoke-direct {v0, p0, p1}, Lddo;-><init>(Lddn;Landroid/os/Looper;)V

    iput-object v0, p0, Lddn;->a:Lddo;

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lddn;->b:Ljava/lang/Object;

    new-instance v0, Lddp;

    invoke-static {p3}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lddp;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lddn;->c:Lddp;

    return-void
.end method


# virtual methods
.method public a(Lddq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddq",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lddn;->a:Lddo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lddo;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lddn;->a:Lddo;

    invoke-virtual {v1, v0}, Lddo;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lddn;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lddn;->b:Ljava/lang/Object;

    return-void
.end method

.method b(Lddq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddq",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lddn;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lddq;->a()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lddq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lddq;->a()V

    throw v0
.end method

.method public c()Lddp;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lddp",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lddn;->c:Lddp;

    return-object v0
.end method
