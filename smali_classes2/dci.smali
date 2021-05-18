.class Ldci;
.super Ljava/lang/Object;

# interfaces
.implements Lcqh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcqh",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldee;

.field final synthetic b:Z

.field final synthetic c:Lcpt;

.field final synthetic d:Ldce;


# direct methods
.method constructor <init>(Ldce;Ldee;ZLcpt;)V
    .locals 0

    iput-object p1, p0, Ldci;->d:Ldce;

    iput-object p2, p0, Ldci;->a:Ldee;

    iput-boolean p3, p0, Ldci;->b:Z

    iput-object p4, p0, Ldci;->c:Lcpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldci;->d:Ldce;

    invoke-static {v0}, Ldce;->c(Ldce;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcoi;->a(Landroid/content/Context;)Lcoi;

    move-result-object v0

    invoke-virtual {v0}, Lcoi;->c()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldci;->d:Ldce;

    invoke-virtual {v0}, Ldce;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldci;->d:Ldce;

    invoke-virtual {v0}, Ldce;->h()V

    :cond_0
    iget-object v0, p0, Ldci;->a:Ldee;

    invoke-virtual {v0, p1}, Ldee;->a(Lcqg;)V

    iget-boolean v0, p0, Ldci;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldci;->c:Lcpt;

    invoke-virtual {v0}, Lcpt;->g()V

    :cond_1
    return-void
.end method

.method public synthetic b(Lcqg;)V
    .locals 0
    .param p1    # Lcqg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Ldci;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
