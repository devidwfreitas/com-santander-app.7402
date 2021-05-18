.class public Lgvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Class;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lgvu;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lgvb;->l:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lgvb;->m:Ljava/lang/String;

    .line 45
    sget-object v0, Lgvu;->COMPROVANTE_DEFAULT:Lgvu;

    iput-object v0, p0, Lgvb;->w:Lgvu;

    .line 49
    iput-boolean v1, p0, Lgvb;->z:Z

    .line 50
    iput-boolean v1, p0, Lgvb;->A:Z

    .line 51
    iput-boolean v1, p0, Lgvb;->B:Z

    .line 52
    iput-boolean v1, p0, Lgvb;->C:Z

    .line 53
    iput-boolean v1, p0, Lgvb;->D:Z

    .line 54
    iput-boolean v1, p0, Lgvb;->E:Z

    .line 55
    iput-boolean v1, p0, Lgvb;->F:Z

    .line 56
    iput-boolean v1, p0, Lgvb;->G:Z

    .line 57
    iput-boolean v1, p0, Lgvb;->H:Z

    .line 58
    iput-boolean v1, p0, Lgvb;->I:Z

    .line 59
    iput-boolean v1, p0, Lgvb;->J:Z

    .line 60
    iput-boolean v1, p0, Lgvb;->K:Z

    .line 61
    iput-boolean v1, p0, Lgvb;->L:Z

    .line 62
    iput-boolean v1, p0, Lgvb;->M:Z

    .line 63
    iput-boolean v1, p0, Lgvb;->N:Z

    .line 64
    iput-boolean v1, p0, Lgvb;->O:Z

    .line 65
    iput-boolean v1, p0, Lgvb;->P:Z

    .line 66
    iput-boolean v1, p0, Lgvb;->Q:Z

    .line 67
    iput-boolean v1, p0, Lgvb;->R:Z

    .line 68
    iput-boolean v1, p0, Lgvb;->S:Z

    .line 94
    iput-boolean v1, p0, Lgvb;->T:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lgvb;->z:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lgvb;->A:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lgvb;->B:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lgvb;->C:Z

    return v0
.end method

.method public E()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lgvb;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public F()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lgvb;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lgvb;->D:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lgvb;->E:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lgvb;->F:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lgvb;->G:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lgvb;->J:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lgvb;->K:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lgvb;->L:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lgvb;->M:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lgvb;->N:Z

    return v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lgvb;->O:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lgvb;->P:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lgvb;->Q:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lgvb;->R:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lgvb;->S:Z

    return v0
.end method

.method public a(Lgvu;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lgvb;->w:Lgvu;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lgvb;->r:Ljava/lang/Class;

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lgvb;->u:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lgvb;->v:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    iput-object p1, p0, Lgvb;->k:Ljava/util/HashMap;

    .line 254
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lgvb;->y:Ljava/util/Map;

    .line 279
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lgvb;->H:Z

    .line 76
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    aget-object v1, p1, v3

    aput-object v1, v0, v3

    iput-object v0, p0, Lgvb;->s:[Ljava/lang/String;

    .line 316
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lgvb;->H:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lgvb;->j:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lgvb;->a:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lgvb;->I:Z

    .line 84
    return-void
.end method

.method public varargs b([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    aget-object v1, p1, v3

    aput-object v1, v0, v3

    iput-object v0, p0, Lgvb;->t:[Ljava/lang/String;

    .line 321
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lgvb;->I:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lgvb;->b:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lgvb;->T:Z

    .line 92
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lgvb;->T:Z

    return v0
.end method

.method public d()Lgvu;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lgvb;->w:Lgvu;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lgvb;->c:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lgvb;->g:Z

    .line 182
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lgvb;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lgvb;->d:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lgvb;->i:Z

    .line 198
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lgvb;->u:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lgvb;->e:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lgvb;->l:Z

    .line 238
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgvb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lgvb;->f:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 286
    iput-boolean p1, p0, Lgvb;->z:Z

    .line 287
    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lgvb;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lgvb;->h:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lgvb;->A:Z

    .line 295
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgvb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lgvb;->n:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 302
    iput-boolean p1, p0, Lgvb;->B:Z

    .line 303
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lgvb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lgvb;->o:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 310
    iput-boolean p1, p0, Lgvb;->C:Z

    .line 311
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgvb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lgvb;->q:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 332
    iput-boolean p1, p0, Lgvb;->D:Z

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lgvb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lgvb;->p:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public l(Z)V
    .locals 0

    .prologue
    .line 335
    iput-boolean p1, p0, Lgvb;->E:Z

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lgvb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lgvb;->m:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public m(Z)V
    .locals 0

    .prologue
    .line 338
    iput-boolean p1, p0, Lgvb;->F:Z

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lgvb;->x:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public n(Z)V
    .locals 0

    .prologue
    .line 342
    iput-boolean p1, p0, Lgvb;->G:Z

    .line 343
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lgvb;->g:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lgvb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public o(Z)V
    .locals 0

    .prologue
    .line 346
    iput-boolean p1, p0, Lgvb;->J:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lgvb;->K:Z

    .line 350
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lgvb;->i:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lgvb;->n:Ljava/lang/String;

    return-object v0
.end method

.method public q(Z)V
    .locals 0

    .prologue
    .line 353
    iput-boolean p1, p0, Lgvb;->L:Z

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lgvb;->o:Ljava/lang/String;

    return-object v0
.end method

.method public r(Z)V
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lgvb;->M:Z

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgvb;->q:Ljava/lang/String;

    return-object v0
.end method

.method public s(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Lgvb;->N:Z

    .line 361
    return-void
.end method

.method public t()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lgvb;->r:Ljava/lang/Class;

    return-object v0
.end method

.method public t(Z)V
    .locals 0

    .prologue
    .line 364
    iput-boolean p1, p0, Lgvb;->O:Z

    return-void
.end method

.method public u(Z)V
    .locals 0

    .prologue
    .line 367
    iput-boolean p1, p0, Lgvb;->P:Z

    return-void
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lgvb;->l:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lgvb;->p:Ljava/lang/String;

    return-object v0
.end method

.method public v(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lgvb;->Q:Z

    return-void
.end method

.method public w()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lgvb;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public w(Z)V
    .locals 0

    .prologue
    .line 373
    iput-boolean p1, p0, Lgvb;->R:Z

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lgvb;->m:Ljava/lang/String;

    return-object v0
.end method

.method public x(Z)V
    .locals 0

    .prologue
    .line 376
    iput-boolean p1, p0, Lgvb;->S:Z

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lgvb;->x:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lgvb;->y:Ljava/util/Map;

    return-object v0
.end method
