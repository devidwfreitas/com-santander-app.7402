.class public Lnif;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-class v0, Lnjm;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnif;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lnif;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnjm;

    invoke-virtual {p0, p1}, Lnif;->a(Lnjm;)V

    return-void
.end method

.method public a(Lnjm;)V
    .locals 2

    iget-object v0, p0, Lnif;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lnif;->b:Z

    invoke-interface {p1, v0, v1}, Lnjm;->a(Ljava/lang/String;Z)V

    return-void
.end method
