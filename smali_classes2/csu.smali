.class public Lcsu;
.super Lctv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lctv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final e:Lcpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpj",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcsu;->e:Lcpj;

    invoke-interface {v0, p1}, Lcpj;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcsu;->e:Lcpj;

    invoke-interface {v0}, Lcpj;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcsu;->e:Lcpj;

    invoke-interface {v0}, Lcpj;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcpj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpj",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcsu;->e:Lcpj;

    return-object v0
.end method
