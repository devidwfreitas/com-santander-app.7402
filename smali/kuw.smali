.class public Lkuw;
.super Lkus;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentCode"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentDescription"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statusDocument"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statusDocumentDescription"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dateStatus"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "refusalCode"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "refusalDescription"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lkus;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 98
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkuw;->c:Ljava/lang/String;

    invoke-static {v4}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 104
    :cond_0
    return v0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkuw;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkuw;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkuw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkuw;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkuw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lkuw;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkuw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkuw;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkuw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkuw;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkuw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkuw;->g:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lkuw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lkuw;->g:Ljava/lang/String;

    return-object v0
.end method
