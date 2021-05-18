.class public Lly;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
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
        a = "date"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "maxDueDays"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "grace"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "administrationFee"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "profitability"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "recurrenceType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lly;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lly;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lly;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lly;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lly;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lly;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lly;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lly;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lly;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lly;->g:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lly;->c:Ljava/lang/String;

    invoke-static {v0}, Lly;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lly;->c:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lly;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lly;->i(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lly;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "Enc"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lly;->e:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lly;->f:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lly;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lly;->f:Ljava/lang/String;

    return-object v0
.end method
