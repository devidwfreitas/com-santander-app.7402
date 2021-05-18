.class final Lnhb;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lngk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lngm;

.field private final b:Lngm;


# direct methods
.method public constructor <init>(Lngm;Lngm;)V
    .locals 1

    const-class v0, Lngk;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhb;->a:Lngm;

    iput-object p2, p0, Lnhb;->b:Lngm;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lngk;

    invoke-virtual {p0, p1}, Lnhb;->a(Lngk;)V

    return-void
.end method

.method public a(Lngk;)V
    .locals 2

    iget-object v0, p0, Lnhb;->a:Lngm;

    iget-object v1, p0, Lnhb;->b:Lngm;

    invoke-interface {p1, v0, v1}, Lngk;->a(Lngm;Lngm;)V

    return-void
.end method
