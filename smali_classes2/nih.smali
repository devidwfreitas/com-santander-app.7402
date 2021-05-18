.class public final Lnih;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/webkit/WebView;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .locals 1

    const-class v0, Lnjo;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnih;->a:Landroid/webkit/WebView;

    iput-boolean p2, p0, Lnih;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnjo;

    invoke-virtual {p0, p1}, Lnih;->a(Lnjo;)V

    return-void
.end method

.method public a(Lnjo;)V
    .locals 2

    iget-object v0, p0, Lnih;->a:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lnih;->b:Z

    invoke-interface {p1, v0, v1}, Lnjo;->a(Landroid/webkit/WebView;Z)V

    return-void
.end method
