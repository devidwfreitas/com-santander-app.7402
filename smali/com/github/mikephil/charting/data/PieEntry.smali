.class public Lcom/github/mikephil/charting/data/PieEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 16
    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 24
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 29
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->a:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieEntry;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/github/mikephil/charting/data/PieEntry;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/PieEntry;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieEntry;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

.method public f(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/Entry;->f(F)V

    .line 53
    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public synthetic i()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieEntry;->d()Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object v0

    return-object v0
.end method

.method public k()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v0

    return v0
.end method
