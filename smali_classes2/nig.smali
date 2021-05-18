.class public Lnig;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    const-class v0, Lnjn;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnig;->a:Landroid/webkit/WebView;

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

    check-cast p1, Lnjn;

    invoke-virtual {p0, p1}, Lnig;->a(Lnjn;)V

    return-void
.end method

.method public a(Lnjn;)V
    .locals 1

    iget-object v0, p0, Lnig;->a:Landroid/webkit/WebView;

    invoke-interface {p1, v0}, Lnjn;->a(Landroid/webkit/WebView;)V

    return-void
.end method
