.class public final Lnhs;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lniv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnjq;


# direct methods
.method public constructor <init>(Lnjq;)V
    .locals 1

    const-class v0, Lniv;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhs;->a:Lnjq;

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

    check-cast p1, Lniv;

    invoke-virtual {p0, p1}, Lnhs;->a(Lniv;)V

    return-void
.end method

.method public a(Lniv;)V
    .locals 1

    iget-object v0, p0, Lnhs;->a:Lnjq;

    invoke-interface {p1, v0}, Lniv;->a(Lnjq;)V

    return-void
.end method
