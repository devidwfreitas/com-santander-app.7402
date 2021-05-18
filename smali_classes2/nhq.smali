.class public Lnhq;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnit;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lnit;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhq;->a:Landroid/app/Activity;

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

    check-cast p1, Lnit;

    invoke-virtual {p0, p1}, Lnhq;->a(Lnit;)V

    return-void
.end method

.method public a(Lnit;)V
    .locals 1

    iget-object v0, p0, Lnhq;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lnit;->a(Landroid/app/Activity;)V

    return-void
.end method
