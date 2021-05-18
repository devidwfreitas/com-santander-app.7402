.class Lhyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwt;


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lhyl;->b:Lhyb;

    iput-object p2, p0, Lhyl;->a:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lhyl;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 367
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 348
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lhyl;->b:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lhxo;->d(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lhyl;->a:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lhyl;->b:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lhxo;->c(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lhyl;->a:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    goto :goto_0
.end method

.method public a(Lhur;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lhyl;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    .line 360
    iget-object v0, p0, Lhyl;->b:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lhxo;->c(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lhyl;->b:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lhxo;->d(Ljava/lang/String;)V

    .line 362
    return-void
.end method
