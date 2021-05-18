.class Lbmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lek;",
        ">;",
        "Lek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lbml;


# direct methods
.method constructor <init>(Lbml;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbmm;->b:Lbml;

    iput-object p2, p0, Lbmm;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lek;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lek;",
            ">;>;)",
            "Lek;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lbmm;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    return-object v0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lbmm;->a(Lfd;)Lek;

    move-result-object v0

    return-object v0
.end method
