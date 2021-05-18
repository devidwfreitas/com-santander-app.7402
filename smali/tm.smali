.class public Ltm;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "titularName"
    .end annotation
.end field

.field private b:Lsw;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "portfolioBalance"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsy;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "family"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Labv;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltm;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lsw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltm;->b:Lsw;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltm;->b:Lsw;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Ltm;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ltm;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Ltm;->c:Ljava/util/List;

    .line 43
    return-void
.end method

.method public a(Lsw;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Ltm;->b:Lsw;

    .line 35
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Ltm;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Ltm;->b:Lsw;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ltm;->b:Lsw;

    invoke-virtual {v0}, Lsw;->g()V

    .line 67
    :cond_0
    iget-object v0, p0, Ltm;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltm;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltm;->a:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Ltm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    .line 69
    invoke-virtual {v0}, Lsy;->g()V

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
