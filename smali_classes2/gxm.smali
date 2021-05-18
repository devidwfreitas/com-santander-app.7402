.class Lgxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgxj;


# direct methods
.method constructor <init>(Lgxj;I)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lgxm;->b:Lgxj;

    iput p2, p0, Lgxm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 250
    check-cast p1, Lgxe;

    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgxe;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgxe;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    iget v0, p0, Lgxm;->a:I

    if-ltz v0, :cond_1

    .line 254
    iget-object v0, p0, Lgxm;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lgxm;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgta;->b(Z)V

    .line 258
    :cond_1
    return-void
.end method
