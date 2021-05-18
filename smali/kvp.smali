.class public Lkvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "year"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branch"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lossNumber"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sequence"
    .end annotation
.end field

.field private e:Ljava/util/Date;
    .annotation runtime Leks;
        a = "openDate"
    .end annotation
.end field

.field private f:Ljava/util/Date;
    .annotation runtime Leks;
        a = "occurrenceDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productDescription"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cause"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "causeDescription"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cover"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "coverDescription"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetInsuraceNumber"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetInsuraceCodeDescription"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastStatusCode"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastStatusDescription"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branchOffice"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "policy"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "certificate"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endorsement"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lkvp;->a:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lkvp;->a:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkvp;->e:Ljava/util/Date;

    .line 118
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lkvp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lkvp;->b:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lkvp;->f:Ljava/util/Date;

    .line 126
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lkvp;->c:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lkvp;->d:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lkvp;->d:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lkvp;->e:Ljava/util/Date;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lkvp;->g:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public f()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lkvp;->f:Ljava/util/Date;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lkvp;->h:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lkvp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lkvp;->i:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lkvp;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lkvp;->j:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lkvp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lkvp;->k:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lkvp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lkvp;->l:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lkvp;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lkvp;->m:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lkvp;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lkvp;->n:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lkvp;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lkvp;->o:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lkvp;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lkvp;->p:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lkvp;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lkvp;->q:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lkvp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lkvp;->r:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lkvp;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lkvp;->s:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvp;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lkvp;->t:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lkvp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lkvp;->t:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    const-string v0, "%s %s %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lkvp;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lkvp;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lkvp;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lkvp;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    const-string v0, "%s%s%s%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lkvp;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lkvp;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lkvp;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lkvp;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
