.class public final Lnhy;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnil;


# direct methods
.method public constructor <init>(Lnil;)V
    .locals 1

    const-class v0, Lnjd;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhy;->a:Lnil;

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

    check-cast p1, Lnjd;

    invoke-virtual {p0, p1}, Lnhy;->a(Lnjd;)V

    return-void
.end method

.method public a(Lnjd;)V
    .locals 1

    iget-object v0, p0, Lnhy;->a:Lnil;

    invoke-interface {p1, v0}, Lnjd;->b(Lnil;)V

    return-void
.end method
