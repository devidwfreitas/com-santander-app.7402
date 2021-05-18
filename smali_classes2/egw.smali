.class public Legw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lehr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lehr",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    iput-object v0, p0, Legw;->a:Lehr;

    return-void
.end method


# virtual methods
.method public a()Legv;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Legw;->a:Lehr;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Legw;->a:Lehr;

    invoke-virtual {v0, p1}, Lehr;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Legw;->a:Lehr;

    invoke-virtual {v0, p1}, Lehr;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Legw;->a:Lehr;

    invoke-virtual {v0, p1}, Lehr;->b(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Legw;->a:Lehr;

    invoke-virtual {v0, p1}, Lehr;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
