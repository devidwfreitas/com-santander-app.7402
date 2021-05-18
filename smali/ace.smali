.class public Lace;
.super Labv;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labv;",
        "Ljava/lang/Comparable",
        "<",
        "Lace;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "schedulingIndicator"
    .end annotation
.end field

.field private B:Z

.field private C:Z

.field private a:Lto;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field

.field private b:Ltk;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "investimentoSelecionado"
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "familyColor"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "familyCode"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "familyName"
    .end annotation
.end field

.field private f:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "valorIndividual"
    .end annotation
.end field

.field private g:Ljava/util/Calendar;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "dataIndividual"
    .end annotation
.end field

.field private h:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "prazoIndividual"
    .end annotation
.end field

.field private i:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "valorMensal"
    .end annotation
.end field

.field private j:Ljava/util/Calendar;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "dataMensal"
    .end annotation
.end field

.field private k:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "prazoMensal"
    .end annotation
.end field

.field private l:Lou;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contaSelecionada"
    .end annotation
.end field

.field private m:I
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "index"
    .end annotation
.end field

.field private n:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "apiMessage"
    .end annotation
.end field

.field private o:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "showEdit"
    .end annotation
.end field

.field private p:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "valorTotal"
    .end annotation
.end field

.field private q:Ljava/lang/Boolean;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "successProcessed"
    .end annotation
.end field

.field private r:Llm;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "financialApplication"
    .end annotation
.end field

.field private s:Lsk;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "efetivacaoBancaria"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "grace"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "rentabilidade"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "taxaAdministracaoAnual"
    .end annotation
.end field

.field private w:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "programada"
    .end annotation
.end field

.field private x:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "totalSelected"
    .end annotation
.end field

.field private y:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "typeAplication"
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "terms"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Labv;-><init>()V

    .line 96
    iput-boolean v0, p0, Lace;->w:Z

    .line 99
    iput-boolean v0, p0, Lace;->x:Z

    .line 102
    iput-boolean v0, p0, Lace;->y:Z

    .line 109
    const-string v0, "N"

    iput-object v0, p0, Lace;->A:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Llw;Ljava/lang/String;Ljava/lang/Integer;Llm;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Labv;-><init>()V

    .line 96
    iput-boolean v2, p0, Lace;->w:Z

    .line 99
    iput-boolean v2, p0, Lace;->x:Z

    .line 102
    iput-boolean v2, p0, Lace;->y:Z

    .line 109
    const-string v0, "N"

    iput-object v0, p0, Lace;->A:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lace;->a:Lto;

    .line 121
    iget-object v0, p0, Lace;->a:Lto;

    invoke-virtual {p1}, Llw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lto;->h(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lace;->a:Lto;

    invoke-virtual {p1}, Llw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lto;->m(Ljava/lang/String;)V

    .line 123
    iput-object p3, p0, Lace;->c:Ljava/lang/Integer;

    .line 124
    iput-object p5, p0, Lace;->d:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lace;->e:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lace;->r:Llm;

    .line 128
    invoke-virtual {p4}, Llm;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Llm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lace;->n:Z

    .line 129
    iput-boolean v2, p0, Lace;->C:Z

    .line 131
    invoke-virtual {p4}, Llm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    .line 132
    invoke-virtual {v0}, Lacb;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lace;->C:Z

    .line 138
    :cond_1
    invoke-virtual {p4}, Llm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lace;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lace;->o:Z

    .line 139
    invoke-virtual {p4}, Llm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lace;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lace;->B:Z

    .line 140
    return-void

    :cond_2
    move v0, v2

    .line 128
    goto :goto_0
.end method

.method public constructor <init>(Lto;Ljava/lang/String;Ljava/lang/Integer;Ltk;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Labv;-><init>()V

    .line 96
    iput-boolean v1, p0, Lace;->w:Z

    .line 99
    iput-boolean v1, p0, Lace;->x:Z

    .line 102
    iput-boolean v1, p0, Lace;->y:Z

    .line 109
    const-string v0, "N"

    iput-object v0, p0, Lace;->A:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lace;->a:Lto;

    .line 144
    iput-object p3, p0, Lace;->c:Ljava/lang/Integer;

    .line 145
    iput-object p4, p0, Lace;->b:Ltk;

    .line 146
    iput-object p5, p0, Lace;->d:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lace;->e:Ljava/lang/String;

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lace;->g:Ljava/util/Calendar;

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lace;->h:Ljava/lang/Integer;

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lace;->j:Ljava/util/Calendar;

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lace;->k:Ljava/lang/Integer;

    .line 156
    iput-boolean v1, p0, Lace;->n:Z

    .line 157
    iput-boolean v1, p0, Lace;->C:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lace;->o:Z

    .line 159
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lace;->y:Z

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lace;->u:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lace;->v:Ljava/lang/String;

    return-object v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lace;->C:Z

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lace;->A:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lace;)I
    .locals 2
    .param p1    # Lace;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 358
    invoke-virtual {p0}, Lace;->v()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lace;->v()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lace;->m:I

    .line 217
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lace;->q:Ljava/lang/Boolean;

    .line 278
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lace;->f:Ljava/lang/Double;

    .line 230
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lace;->h:Ljava/lang/Integer;

    .line 246
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lace;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lace;->g:Ljava/util/Calendar;

    .line 238
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    iput-object p1, p0, Lace;->z:Ljava/util/List;

    return-void
.end method

.method public a(Llm;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lace;->r:Llm;

    .line 307
    return-void
.end method

.method public a(Lou;)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lou;->a(Ljava/lang/Boolean;)V

    .line 221
    iput-object p1, p0, Lace;->l:Lou;

    .line 222
    return-void
.end method

.method public a(Lsk;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lace;->s:Lsk;

    .line 315
    return-void
.end method

.method public a(Ltk;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lace;->b:Ltk;

    .line 286
    return-void
.end method

.method public a(Lto;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lace;->a:Lto;

    .line 282
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lace;->w:Z

    .line 177
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lace;->B:Z

    return v0
.end method

.method public b(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lace;->i:Ljava/lang/Double;

    .line 254
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lace;->k:Ljava/lang/Integer;

    .line 270
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lace;->e:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public b(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lace;->j:Ljava/util/Calendar;

    .line 262
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lace;->n:Z

    .line 185
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lace;->w:Z

    return v0
.end method

.method public c(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lace;->p:Ljava/lang/Double;

    .line 299
    return-void
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lace;->c:Ljava/lang/Integer;

    .line 290
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lace;->t:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lace;->o:Z

    .line 193
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lace;->n:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lace;

    invoke-virtual {p0, p1}, Lace;->a(Lace;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lace;->u:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 366
    iput-boolean p1, p0, Lace;->x:Z

    .line 367
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lace;->o:Z

    return v0
.end method

.method public e()Ltk;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lace;->b:Ltk;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lace;->v:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 374
    iput-boolean p1, p0, Lace;->B:Z

    .line 375
    return-void
.end method

.method public f()Lto;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lace;->a:Lto;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lace;->y:Z

    .line 383
    return-void
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lace;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 396
    if-eqz p1, :cond_0

    const-string v0, "C"

    :goto_0
    iput-object v0, p0, Lace;->A:Ljava/lang/String;

    .line 397
    return-void

    .line 396
    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public h()Lou;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lace;->l:Lou;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lace;->m:I

    return v0
.end method

.method public j()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lace;->f:Ljava/lang/Double;

    return-object v0
.end method

.method public k()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lace;->g:Ljava/util/Calendar;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lace;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lace;->i:Ljava/lang/Double;

    return-object v0
.end method

.method public n()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lace;->j:Ljava/util/Calendar;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lace;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lace;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lace;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()Llm;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lace;->r:Llm;

    return-object v0
.end method

.method public s()Lsk;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lace;->s:Lsk;

    return-object v0
.end method

.method public t()V
    .locals 4

    .prologue
    .line 318
    const-wide/16 v0, 0x0

    .line 320
    iget-object v2, p0, Lace;->f:Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lace;->f:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 324
    :cond_0
    iget-object v2, p0, Lace;->i:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lace;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 328
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lace;->p:Ljava/lang/Double;

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AplicacaoEntity{product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->a:Lto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", investimentoSelecionado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->b:Ltk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", familyColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", familyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valorIndividual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->f:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataIndividual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prazoIndividual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valorMensal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->i:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataMensal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prazoMensal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contaSelecionada="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->l:Lou;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lace;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lace;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showEditButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lace;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valorTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->p:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successProcessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->q:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", financialApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->r:Llm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", efeticacaoBancaria="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lace;->s:Lsk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programada="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lace;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lace;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lace;->p:Ljava/lang/Double;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lace;->t:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lace;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lace;->z:Ljava/util/List;

    .line 352
    :cond_0
    iget-object v0, p0, Lace;->z:Ljava/util/List;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lace;->x:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lace;->B:Z

    return v0
.end method
