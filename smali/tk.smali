.class public Ltk;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contractNumber"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contractDate"
    .end annotation
.end field

.field private c:Lsw;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "balance"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "groups"
    .end annotation
.end field

.field private e:Lsv;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "account"
    .end annotation
.end field

.field private f:Ljava/lang/Double;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Labv;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltk;->d:Ljava/util/List;

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ltk;->g:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ltk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ltk;->g:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ltk;->f:Ljava/lang/Double;

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ltk;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Ltk;->d:Ljava/util/List;

    .line 81
    return-void
.end method

.method public a(Lsv;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Ltk;->e:Lsv;

    return-void
.end method

.method public a(Lsw;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ltk;->c:Lsw;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ltk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ltk;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Lsw;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltk;->c:Lsw;

    return-object v0
.end method

.method public d()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltk;->f:Ljava/lang/Double;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltk;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltk;->c:Lsw;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ltk;->c:Lsw;

    invoke-virtual {v0}, Lsw;->g()V

    .line 103
    :cond_0
    iget-object v0, p0, Ltk;->e:Lsv;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Ltk;->e:Lsv;

    invoke-virtual {v0}, Lsv;->g()V

    .line 107
    :cond_1
    iget-object v0, p0, Ltk;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltk;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltk;->a:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Ltk;->d:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public j()Lsv;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ltk;->e:Lsv;

    return-object v0
.end method
