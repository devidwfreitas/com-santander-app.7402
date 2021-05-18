.class public Lkvb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "listData"
    .end annotation
.end field

.field private c:Ljava/lang/Double;
    .annotation runtime Leks;
        a = "minimumValue"
    .end annotation
.end field

.field private d:Ljava/lang/Double;
    .annotation runtime Leks;
        a = "maximumValue"
    .end annotation
.end field

.field private e:Ljava/util/Date;
    .annotation runtime Leks;
        a = "minDate"
    .end annotation
.end field

.field private f:Ljava/util/Date;
    .annotation runtime Leks;
        a = "maxDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "address"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "phone"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insuranceNumber"
    .end annotation
.end field

.field private k:Lkuq;
    .annotation runtime Leks;
        a = "dataType"
    .end annotation
.end field

.field private l:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "totalSteps"
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "currentStep"
    .end annotation
.end field

.field private n:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "remainingSteps"
    .end annotation
.end field

.field private o:Lkvv;
    .annotation runtime Leks;
        a = "values"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sendProtocol"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assistancePhone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lkvb;->q:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lkvb;->c:Ljava/lang/Double;

    .line 123
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lkvb;->n:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lkvb;->q:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lkvb;->e:Ljava/util/Date;

    .line 139
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lkvb;->b:Ljava/util/List;

    .line 115
    return-void
.end method

.method public a(Lkuq;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lkvb;->k:Lkuq;

    .line 187
    return-void
.end method

.method public a(Lkvv;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lkvb;->o:Lkvv;

    .line 99
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkvb;->p:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lkvb;->d:Ljava/lang/Double;

    .line 131
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lkvb;->l:Ljava/lang/Integer;

    .line 195
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lkvb;->p:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lkvb;->f:Ljava/util/Date;

    .line 147
    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkvb;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lkvb;->m:Ljava/lang/Integer;

    .line 203
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lkvb;->a:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public d()Lkvv;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lkvb;->o:Lkvv;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lkvb;->g:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lkvb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkvb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lkvb;->h:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lkvb;->b:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lkvb;->i:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public g()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lkvb;->c:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkvb;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lkvb;->j:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public h()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lkvb;->c:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkvb;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/util/Date;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lkvb;->e:Ljava/util/Date;

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lkvb;->f:Ljava/util/Date;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lkvb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lkvb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lkvb;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lkvb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lkuq;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lkvb;->k:Lkuq;

    return-object v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lkvb;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public q()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lkvb;->m:Ljava/lang/Integer;

    return-object v0
.end method
