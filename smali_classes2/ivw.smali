.class Livw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Livt;


# direct methods
.method constructor <init>(Livt;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Livw;->a:Livt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    check-cast p1, Lnax;

    .line 79
    iget-object v0, p0, Livw;->a:Livt;

    invoke-static {v0}, Livt;->a(Livt;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 80
    return-void
.end method
