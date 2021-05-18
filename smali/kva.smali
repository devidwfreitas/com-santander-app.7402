.class public Lkva;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkuq;
    .annotation runtime Leks;
        a = "insuranceStep"
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "currentStep"
    .end annotation
.end field

.field private c:Ljava/lang/Long;
    .annotation runtime Leks;
        a = "singleSelectedId"
    .end annotation
.end field

.field private d:Ljava/util/Date;
    .annotation runtime Leks;
        a = "selectedDate"
    .end annotation
.end field

.field private e:Ljava/lang/Double;
    .annotation runtime Leks;
        a = "selectedValue"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "audio"
    .end annotation
.end field

.field private g:Lkuz;
    .annotation runtime Leks;
        a = "action"
    .end annotation
.end field

.field private h:Lkvf;
    .annotation runtime Leks;
        a = "surverySelectedPeriod"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "selectedAddress"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "phone"
    .end annotation
.end field

.field private l:Ljava/lang/Boolean;
    .annotation runtime Leks;
        a = "finished"
    .end annotation
.end field

.field private m:Ljava/lang/Long;
    .annotation runtime Leks;
        a = "insuranceFamilyId"
    .end annotation
.end field

.field private n:Ljava/lang/Long;
    .annotation runtime Leks;
        a = "coverageId"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "filledValue"
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "equipmentDataList"
    .end annotation
.end field

.field private q:Ljava/util/Date;
    .annotation runtime Leks;
        a = "surveySelectedDate"
    .end annotation
.end field

.field private r:J
    .annotation runtime Leks;
        a = "step"
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuo;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "legacies"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lkva;->r:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lkva;->r:J

    .line 80
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lkva;->l:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lkva;->e:Ljava/lang/Double;

    .line 161
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lkva;->b:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lkva;->c:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lkva;->o:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkva;->q:Ljava/util/Date;

    .line 89
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lkva;->p:Ljava/util/List;

    .line 105
    return-void
.end method

.method public a(Lkuq;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lkva;->a:Lkuq;

    .line 129
    return-void
.end method

.method public a(Lkuz;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lkva;->g:Lkuz;

    .line 121
    return-void
.end method

.method public a(Lkvf;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lkva;->h:Lkvf;

    .line 177
    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lkva;->q:Ljava/util/Date;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkva;->m:Ljava/lang/Long;

    .line 113
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lkva;->n:Ljava/lang/Long;

    .line 213
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lkva;->f:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lkva;->d:Ljava/util/Date;

    .line 153
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lkva;->s:Ljava/util/List;

    .line 225
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lkva;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lkva;->i:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lkva;->p:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lkva;->j:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lkva;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lkva;->k:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public f()Lkuz;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lkva;->g:Lkuz;

    return-object v0
.end method

.method public g()Lkuq;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lkva;->a:Lkuq;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lkva;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkva;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lkva;->d:Ljava/util/Date;

    return-object v0
.end method

.method public k()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lkva;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lkva;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lkvf;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lkva;->h:Lkvf;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lkva;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lkva;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lkva;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lkva;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lkva;->n:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkuo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lkva;->s:Ljava/util/List;

    return-object v0
.end method
