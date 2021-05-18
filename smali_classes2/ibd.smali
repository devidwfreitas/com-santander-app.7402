.class Libd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhzt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Liba;


# direct methods
.method constructor <init>(Liba;Lgkw;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Libd;->b:Liba;

    iput-object p2, p0, Libd;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhzt;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Libd;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lhzt;

    invoke-virtual {p0, p1}, Libd;->a(Lhzt;)V

    return-void
.end method
