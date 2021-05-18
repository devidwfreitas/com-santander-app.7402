.class public Lkst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksk;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "beneficiaries"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branchCode"
    .end annotation
.end field

.field private c:Lkqg;
    .annotation runtime Leks;
        a = "canvasser"
    .end annotation
.end field

.field private d:Lksn;
    .annotation runtime Leks;
        a = "channel"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "complianceLegislationIndicator"
    .end annotation
.end field

.field private f:Lkso;
    .annotation runtime Leks;
        a = "customer"
    .end annotation
.end field

.field private g:Lksr;
    .annotation runtime Leks;
        a = "debit"
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksp;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "DPSQuestions"
    .end annotation
.end field

.field private i:Lkss;
    .annotation runtime Leks;
        a = "formalization"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "operationOption"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "orderNumber"
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "payments"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "preProposalNumber"
    .end annotation
.end field

.field private n:Lkrq;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field

.field private o:Lksx;
    .annotation runtime Leks;
        a = "proposal"
    .end annotation
.end field

.field private p:Lkta;
    .annotation runtime Leks;
        a = "quotation"
    .end annotation
.end field

.field private q:Lksl;
    .annotation runtime Leks;
        a = "cancellation"
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
.method public a()Lksl;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkst;->q:Lksl;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lkst;->b:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lkst;->a:Ljava/util/List;

    .line 75
    return-void
.end method

.method public a(Lkqg;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lkst;->c:Lkqg;

    .line 91
    return-void
.end method

.method public a(Lkrq;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lkst;->n:Lkrq;

    .line 179
    return-void
.end method

.method public a(Lksl;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lkst;->q:Lksl;

    .line 59
    return-void
.end method

.method public a(Lksn;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lkst;->d:Lksn;

    .line 99
    return-void
.end method

.method public a(Lkso;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lkst;->f:Lkso;

    .line 115
    return-void
.end method

.method public a(Lksr;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lkst;->g:Lksr;

    .line 123
    return-void
.end method

.method public a(Lkss;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lkst;->i:Lkss;

    .line 139
    return-void
.end method

.method public a(Lksx;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lkst;->o:Lksx;

    .line 187
    return-void
.end method

.method public a(Lkta;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lkst;->p:Lkta;

    .line 67
    return-void
.end method

.method public b()Lkta;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkst;->p:Lkta;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lkst;->e:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lkst;->h:Ljava/util/List;

    .line 131
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lkst;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lkst;->j:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lkst;->l:Ljava/util/List;

    .line 163
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkst;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lkst;->k:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public e()Lkqg;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkst;->c:Lkqg;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lkst;->m:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public f()Lksn;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lkst;->d:Lksn;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lkst;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lkso;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lkst;->f:Lkso;

    return-object v0
.end method

.method public i()Lksr;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lkst;->g:Lksr;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lkst;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()Lkss;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lkst;->i:Lkss;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lkst;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lkst;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lkst;->l:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lkst;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lkrq;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lkst;->n:Lkrq;

    return-object v0
.end method

.method public q()Lksx;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lkst;->o:Lksx;

    return-object v0
.end method
