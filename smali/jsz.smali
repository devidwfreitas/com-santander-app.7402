.class public Ljsz;
.super Lcom/santander/app/common/OSGModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "company"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "enableValueEditing"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "acceptsCreditCard"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "offerAutomaticDebit"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "transaction"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "transactionId"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "transactionDateTime"
    .end annotation
.end field

.field private i:D
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "creditCardTax"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "dueDate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/santander/app/common/OSGModel;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljsz;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, Ljsz;->i:D

    .line 119
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljsz;->a:Ljava/lang/Double;

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ljsz;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Ljsz;->c:Z

    .line 71
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljsz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ljsz;->f:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Ljsz;->d:Z

    .line 79
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Ljsz;->g:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Ljsz;->e:Z

    .line 87
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Ljsz;->c:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Ljsz;->h:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Ljsz;->d:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Ljsz;->j:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Ljsz;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljsz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljsz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ljsz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Ljsz;->i:D

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljsz;->j:Ljava/lang/String;

    return-object v0
.end method
