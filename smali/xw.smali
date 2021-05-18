.class public Lxw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "text"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "format"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lxw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lxw;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lxw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lxw;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lxw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lxw;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lxw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lxw;->d:Ljava/lang/String;

    .line 52
    return-void
.end method
