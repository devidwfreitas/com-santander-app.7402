.class public Lktn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lktn;->a:Ljava/lang/Integer;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lktn;->a:Ljava/lang/Integer;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lktn;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lktn;->d:Z

    .line 36
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lktn;->d:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lktn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lktn;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lktn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lktn;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lktn;

    invoke-direct {v0}, Lktn;-><init>()V

    .line 56
    iget-object v1, p0, Lktn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktn;->a(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lktn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktn;->b(Ljava/lang/String;)V

    .line 58
    iget-boolean v1, p0, Lktn;->d:Z

    invoke-virtual {v0, v1}, Lktn;->a(Z)V

    .line 59
    iget-object v1, p0, Lktn;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lktn;->a(Ljava/lang/Integer;)V

    .line 60
    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lktn;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lktn;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
