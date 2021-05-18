.class public Lve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lve;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "systemCode"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "productCode"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "riskDegree"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "minimumValueInitialApplication"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "profitabilityValueDescription"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "profitabilityValue"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "minimumValueInitialDescription"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "riskDegreeText"
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "highlighted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lve;->d:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lve;)I
    .locals 8
    .param p1    # Lve;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lve;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 148
    iget-object v0, p1, Lve;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 154
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 158
    :goto_2
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lve;->f:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p1, Lve;->f:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 158
    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lve;->k:Ljava/lang/Boolean;

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lve;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lve;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lve;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lve;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lve;->c:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    check-cast p1, Lve;

    invoke-virtual {p0, p1}, Lve;->a(Lve;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lve;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lve;->d:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lve;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lve;->e:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lve;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lve;->f:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lve;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lve;->g:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lve;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lve;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lve;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lve;->i:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lve;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lve;->j:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lve;->k:Ljava/lang/Boolean;

    return-object v0
.end method
