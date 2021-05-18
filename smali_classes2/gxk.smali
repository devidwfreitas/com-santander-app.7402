.class Lgxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgta;

.field final synthetic b:Lgxj;


# direct methods
.method constructor <init>(Lgxj;Lgta;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lgxk;->b:Lgxj;

    iput-object p2, p0, Lgxk;->a:Lgta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 176
    check-cast p1, Lgwy;

    .line 177
    invoke-virtual {p1}, Lgwy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lgxk;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lgxk;->a:Lgta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method
