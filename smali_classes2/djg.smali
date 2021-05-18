.class Ldjg;
.super Ljava/lang/Object;

# interfaces
.implements Lddq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lddq",
        "<",
        "Ldtv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/location/Location;


# direct methods
.method constructor <init>(Ldjf;Landroid/location/Location;)V
    .locals 0

    iput-object p2, p0, Ldjg;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ldtv;)V
    .locals 1

    iget-object v0, p0, Ldjg;->a:Landroid/location/Location;

    invoke-interface {p1, v0}, Ldtv;->a(Landroid/location/Location;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldtv;

    invoke-virtual {p0, p1}, Ldjg;->a(Ldtv;)V

    return-void
.end method
