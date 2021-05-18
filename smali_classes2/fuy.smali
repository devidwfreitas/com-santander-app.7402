.class public Lfuy;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/ExtratoContract;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfuy;->y:Ljava/util/Vector;

    .line 55
    return-void
.end method

.method public static x()J
    .locals 2

    .prologue
    .line 385
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lfuy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lfuy;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfve;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    iput-object p1, p0, Lfuy;->y:Ljava/util/Vector;

    .line 417
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lfuy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lfuy;->c:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lfuy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lfuy;->d:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lfuy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lfuy;->e:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lfuy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lfuy;->f:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lfuy;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lfuy;->g:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lfuy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lfuy;->h:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public getLancamentoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-object v1, p0, Lfuy;->y:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lfuy;->y:Ljava/util/Vector;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lfuy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lfuy;->i:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public hasMorePages()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lfuy;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lfuy;->j:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lfuy;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lfuy;->k:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lfuy;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lfuy;->l:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lfuy;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lfuy;->m:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lfuy;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lfuy;->n:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lfuy;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lfuy;->o:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lfuy;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lfuy;->p:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lfuy;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lfuy;->q:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lfuy;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lfuy;->r:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lfuy;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lfuy;->s:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lfuy;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lfuy;->t:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lfuy;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lfuy;->u:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lfuy;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfuy;->v:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lfuy;->v:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lfuy;->w:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lfuy;->w:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lfuy;->x:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lfuy;->x:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public y()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfve;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lfuy;->y:Ljava/util/Vector;

    return-object v0
.end method
