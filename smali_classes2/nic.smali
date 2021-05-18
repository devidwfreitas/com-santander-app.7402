.class public Lnic;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnji;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnil;


# direct methods
.method public constructor <init>(Lnil;)V
    .locals 1

    const-class v0, Lnji;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnic;->a:Lnil;

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

    check-cast p1, Lnji;

    invoke-virtual {p0, p1}, Lnic;->a(Lnji;)V

    return-void
.end method

.method public a(Lnji;)V
    .locals 1

    iget-object v0, p0, Lnic;->a:Lnil;

    invoke-interface {p1, v0}, Lnji;->a(Lnil;)V

    return-void
.end method
