.class public Ldax;
.super Ljava/lang/Object;

# interfaces
.implements Lcpv;
.implements Lcpw;


# instance fields
.field public final c:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:Lday;


# direct methods
.method public constructor <init>(Lcox;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldax;->c:Lcox;

    iput-boolean p2, p0, Ldax;->d:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Ldax;->e:Lday;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-direct {p0}, Ldax;->a()V

    iget-object v0, p0, Ldax;->e:Lday;

    invoke-interface {v0, p1}, Lday;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ldax;->a()V

    iget-object v0, p0, Ldax;->e:Lday;

    invoke-interface {v0, p1}, Lday;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ldax;->a()V

    iget-object v0, p0, Ldax;->e:Lday;

    iget-object v1, p0, Ldax;->c:Lcox;

    iget-boolean v2, p0, Ldax;->d:Z

    invoke-interface {v0, p1, v1, v2}, Lday;->a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V

    return-void
.end method

.method public a(Lday;)V
    .locals 0

    iput-object p1, p0, Ldax;->e:Lday;

    return-void
.end method
