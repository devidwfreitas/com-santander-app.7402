.class public Lktp;
.super Lktu;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "debitBranch"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteCep"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insuredKey"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteCity"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insurerCnpj"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "debitAccount"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productDescription"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteAddress"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteState"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "family"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "paymentMethod"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "beneficiaryIndicator"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteIndicator"
    .end annotation
.end field

.field private n:Ljava/util/Date;
    .annotation runtime Leks;
        a = "startDate"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productName"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "policyNumber"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "certificateNumber"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "susepProcess"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insurerName"
    .end annotation
.end field

.field private t:Ljava/util/Date;
    .annotation runtime Leks;
        a = "endDate"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskSiteType"
    .end annotation
.end field

.field private v:Lktv;
    .annotation runtime Leks;
        a = "insured"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cardNumber"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lktu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lktp;->w:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lktp;->w:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lktp;->n:Ljava/util/Date;

    .line 183
    return-void
.end method

.method public a(Lktv;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lktp;->v:Lktv;

    .line 247
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lktp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lktp;->a:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lktp;->t:Ljava/util/Date;

    .line 231
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lktp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lktp;->b:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lktp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lktp;->c:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lktp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lktp;->d:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lktp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lktp;->e:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lktp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lktp;->f:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lktp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lktp;->g:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lktp;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lktp;->h:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lktp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lktp;->i:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lktp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lktp;->j:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lktp;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lktp;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lktp;->k:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lktp;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lktp;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lktp;->l:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lktp;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lktp;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lktp;->m:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public o()Ljava/util/Date;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lktp;->n:Ljava/util/Date;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lktp;->o:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lktp;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lktp;->p:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lktp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lktp;->q:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lktp;->q:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lktp;->r:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lktp;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lktp;->s:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lktp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lktp;->u:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public u()Ljava/util/Date;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lktp;->t:Ljava/util/Date;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lktp;->u:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lktv;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lktp;->v:Lktv;

    return-object v0
.end method
