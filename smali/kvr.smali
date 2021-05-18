.class public Lkvr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accountNumber"
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation runtime Leks;
        a = "costLoss"
    .end annotation
.end field

.field private C:Ljava/lang/String;
    .annotation runtime Leks;
        a = "affectedAssets"
    .end annotation
.end field

.field private D:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastStatusCode"
    .end annotation
.end field

.field private E:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastStatusDescription"
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branch"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "policy"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "certificate"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endorsement"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productDescription"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cause"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "causeDescription"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetInsuraceNumber"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetInsuredDescription"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "notificationDate"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "notificationNumber"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "registryDate"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "occurrenceDate"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "occurrenceTime"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "phone"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "address"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "addressNumber"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "supplement"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Leks;
        a = "district"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Leks;
        a = "city"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Leks;
        a = "state"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Leks;
        a = "zipCode"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bank"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Leks;
        a = "agency"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lkvr;->A:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lkvr;->B:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lkvr;->B:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lkvr;->C:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lkvr;->C:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lkvr;->D:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lkvr;->E:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lkvr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lkvr;->a:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lkvr;->b:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lkvr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lkvr;->c:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lkvr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lkvr;->d:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lkvr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lkvr;->e:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lkvr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lkvr;->f:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lkvr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lkvr;->g:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lkvr;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lkvr;->h:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lkvr;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lkvr;->i:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lkvr;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lkvr;->j:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lkvr;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lkvr;->k:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lkvr;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lkvr;->l:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lkvr;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lkvr;->m:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lkvr;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lkvr;->n:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lkvr;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lkvr;->o:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lkvr;->p:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lkvr;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lkvr;->q:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lkvr;->r:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lkvr;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lkvr;->s:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lkvr;->t:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lkvr;->t:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lkvr;->u:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lkvr;->u:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lkvr;->v:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lkvr;->v:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lkvr;->w:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lkvr;->w:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lkvr;->x:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lkvr;->x:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lkvr;->y:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvr;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lkvr;->z:Ljava/lang/String;

    .line 315
    return-void
.end method
