.class public abstract Lddv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcpe;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lddn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddn",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lddp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lddp",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lddv;->a:Lddn;

    invoke-virtual {v0}, Lddn;->c()Lddp;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lddv;->a:Lddn;

    invoke-virtual {v0}, Lddn;->b()V

    return-void
.end method
