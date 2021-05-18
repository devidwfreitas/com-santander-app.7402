.class public Lgvw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;
    .annotation runtime Leks;
        a = "fromMove"
    .end annotation
.end field

.field public B:Ljava/lang/String;
    .annotation runtime Leks;
        a = "destinationMove"
    .end annotation
.end field

.field public C:Ljava/lang/String;
    .annotation runtime Leks;
        a = "reaCode"
    .end annotation
.end field

.field public D:Ljava/lang/String;
    .annotation runtime Leks;
        a = "previousBalance"
    .end annotation
.end field

.field public E:Ljava/lang/String;
    .annotation runtime Leks;
        a = "moveOrderIndicator"
    .end annotation
.end field

.field public a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statementType"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "responseIndicator"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "startMoveDate"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endMoveDate"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "callbackIndicator"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "calledbackItem"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "quantityCalledbackItens"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationTotalBalance"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationTotalBalance"
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGeneralBalance"
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGeneralBalance"
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGraceTotalBalance"
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGraceTotalBalance"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGraceGeneralBalance"
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGraceGeneralBalance"
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciApplicationGracelessTotalBalance"
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccApplicationGracelessTotalBalance"
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cciOutGraceGeneralBalance"
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ccOutGraceGeneralBalance"
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "yieldPerApplicationTotalGeneralValue"
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation runtime Leks;
        a = "yieldGeneralValue"
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation runtime Leks;
        a = "moveDate"
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation runtime Leks;
        a = "destinationMoveDate"
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation runtime Leks;
        a = "productCode"
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation runtime Leks;
        a = "savingsIndicator"
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation runtime Leks;
        a = "firstCallIndicator"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgvw;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->h:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lgvw;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->i:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lgvw;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->j:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lgvw;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->k:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lgvw;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->l:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lgvw;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->m:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lgvw;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->n:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lgvw;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->o:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lgvw;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->p:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lgvw;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->q:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lgvw;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->r:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lgvw;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->s:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lgvw;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->t:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lgvw;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->u:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lgvw;->D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgvw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgvw;->D:Ljava/lang/String;

    .line 148
    return-void
.end method
