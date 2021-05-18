.class public Lkvi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z
    .annotation runtime Leks;
        a = "empty"
    .end annotation
.end field

.field private b:J
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "username"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Leks;
        a = "enabled"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endDate"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "answer"
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvl;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "questions"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkvi;->a:Z

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lkvi;->b:J

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkvi;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lkvi;->g:Ljava/util/List;

    .line 50
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lkvi;->a:Z

    .line 42
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lkvi;->a:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lkvi;->g:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lkvi;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lkvi;->d:Z

    .line 74
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lkvi;->b:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lkvi;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkvi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lkvi;->d:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkvi;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lkvi;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lkvi;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lkvi;

    invoke-direct {v0}, Lkvi;-><init>()V

    .line 95
    iget-wide v2, p0, Lkvi;->b:J

    invoke-virtual {v0, v2, v3}, Lkvi;->a(J)V

    .line 96
    iget-object v1, p0, Lkvi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkvi;->a(Ljava/lang/String;)V

    .line 97
    iget-boolean v1, p0, Lkvi;->d:Z

    invoke-virtual {v0, v1}, Lkvi;->b(Z)V

    .line 98
    iget-object v1, p0, Lkvi;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkvi;->b(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lkvi;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkvi;->c(Ljava/lang/String;)V

    .line 100
    return-object v0
.end method
