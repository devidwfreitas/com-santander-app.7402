.class public Lacc;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "label"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacd;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "values"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Labv;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacc;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lacc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lacc;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lacd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lacc;->d:Ljava/util/List;

    .line 61
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lacc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lacc;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lacc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lacc;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lacd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lacc;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_0
    check-cast p1, Lacc;

    .line 78
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lacc;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lacc;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lacc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lacc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lacc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lacc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacc;->b:Ljava/lang/String;

    .line 71
    return-void
.end method
