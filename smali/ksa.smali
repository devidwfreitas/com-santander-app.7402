.class public Lksa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "DDD"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "class"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lksa;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lksa;->f:Z

    .line 33
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lksa;->f:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lksa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lksa;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lksa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lksa;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lksa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lksa;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lksa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lksa;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lksa;->e:Ljava/lang/String;

    return-object v0
.end method
