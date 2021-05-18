.class final Lctw;
.super Ljava/lang/Object;

# interfaces
.implements Lctd;


# instance fields
.field final synthetic a:Lcpv;


# direct methods
.method constructor <init>(Lcpv;)V
    .locals 0

    iput-object p1, p0, Lctw;->a:Lcpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lctw;->a:Lcpv;

    invoke-interface {v0, p1}, Lcpv;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lctw;->a:Lcpv;

    invoke-interface {v0, p1}, Lcpv;->a(Landroid/os/Bundle;)V

    return-void
.end method
