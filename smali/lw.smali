.class public Llw;
.super Lto;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "systemCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "totalValue"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "totalValueSingleApplications"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "totalValueRecurrenceApplications"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llm;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "financialApplications"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lto;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llw;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Llw;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Llw;->f:Ljava/util/List;

    .line 71
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Llw;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Llw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Llw;->c:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Llw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Llw;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Llw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Llw;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Llw;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Llw;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llw;->d:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Llw;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Llw;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llw;->e:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Llw;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Llw;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llw;->c:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Llw;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llm;

    .line 83
    invoke-virtual {v0}, Llm;->g()V

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Llw;->f:Ljava/util/List;

    return-object v0
.end method
