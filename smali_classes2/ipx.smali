.class Lipx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lirs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lirs",
        "<",
        "Ljdf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lipu;


# direct methods
.method constructor <init>(Lipu;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lipx;->a:Lipu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lipx;->a:Lipu;

    invoke-virtual {v0}, Lipu;->c()V

    .line 155
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Ljdf;

    invoke-virtual {p0, p1}, Lipx;->a(Ljdf;)V

    return-void
.end method

.method public a(Ljdf;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lipx;->a:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0, p1}, Lipt;->a(Ljdf;)V

    .line 150
    return-void
.end method
