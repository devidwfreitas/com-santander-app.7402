.class public Lnhz;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnje;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnil;


# direct methods
.method public constructor <init>(Lnil;)V
    .locals 1

    const-class v0, Lnje;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhz;->a:Lnil;

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

    check-cast p1, Lnje;

    invoke-virtual {p0, p1}, Lnhz;->a(Lnje;)V

    return-void
.end method

.method public a(Lnje;)V
    .locals 1

    iget-object v0, p0, Lnhz;->a:Lnil;

    invoke-interface {p1, v0}, Lnje;->a(Lnil;)V

    return-void
.end method
