.class public final Lnie;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnjq;


# direct methods
.method public constructor <init>(Lnjq;)V
    .locals 1

    const-class v0, Lnjk;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnie;->a:Lnjq;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnjk;

    invoke-virtual {p0, p1}, Lnie;->a(Lnjk;)V

    return-void
.end method

.method public a(Lnjk;)V
    .locals 1

    iget-object v0, p0, Lnie;->a:Lnjq;

    invoke-interface {p1, v0}, Lnjk;->b(Lnjq;)V

    return-void
.end method
