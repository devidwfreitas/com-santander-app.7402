.class public final Lddw;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lddv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddv",
            "<",
            "Lcpe;",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ldeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldeq",
            "<",
            "Lcpe;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lddv;Ldeq;)V
    .locals 0
    .param p1    # Lddv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ldeq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddv",
            "<",
            "Lcpe;",
            "*>;",
            "Ldeq",
            "<",
            "Lcpe;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddw;->a:Lddv;

    iput-object p2, p0, Lddw;->b:Ldeq;

    return-void
.end method
