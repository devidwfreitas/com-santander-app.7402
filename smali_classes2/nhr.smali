.class public Lnhr;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lniu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lniu;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhr;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lniu;

    invoke-virtual {p0, p1}, Lnhr;->a(Lniu;)V

    return-void
.end method

.method public a(Lniu;)V
    .locals 1

    iget-object v0, p0, Lnhr;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lniu;->a(Landroid/app/Activity;)V

    return-void
.end method
