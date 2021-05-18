.class public final Lnht;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnix;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const-class v0, Lnix;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lnht;->a:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnix;

    invoke-virtual {p0, p1}, Lnht;->a(Lnix;)V

    return-void
.end method

.method public a(Lnix;)V
    .locals 1

    iget-boolean v0, p0, Lnht;->a:Z

    invoke-interface {p1, v0}, Lnix;->a(Z)V

    return-void
.end method
