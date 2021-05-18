.class Lnbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Lnbr;


# direct methods
.method constructor <init>(Lnbr;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lnbs;->a:Lnbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnbs;->a:Lnbr;

    iget-object v0, v0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->a(Lnbp;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Live;->a(Ljava/lang/Boolean;)V

    .line 79
    iget-object v0, p0, Lnbs;->a:Lnbr;

    iget-object v0, v0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-virtual {v0}, Lnbp;->a()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lnbs;->a:Lnbr;

    iget-object v0, v0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lndw;->a(Ljava/lang/Integer;)V

    goto :goto_0
.end method
