.class public Lnhw;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnja;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnkg;


# direct methods
.method public constructor <init>(Lnkg;)V
    .locals 1

    const-class v0, Lnja;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhw;->a:Lnkg;

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

    check-cast p1, Lnja;

    invoke-virtual {p0, p1}, Lnhw;->a(Lnja;)V

    return-void
.end method

.method public a(Lnja;)V
    .locals 1

    iget-object v0, p0, Lnhw;->a:Lnkg;

    invoke-interface {p1, v0}, Lnja;->a(Lnkg;)V

    return-void
.end method
