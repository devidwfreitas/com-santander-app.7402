.class public Linw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Linw;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Linw;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Linw;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Linw;->d:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Linw;->e:Ljava/lang/Boolean;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linw;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Linw;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Linw;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Linw;->d:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Linw;->e:Ljava/lang/Boolean;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Linw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Linw;->e:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Linw;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Linw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Linw;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Linw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Linw;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Linw;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Linw;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Linw;->a:Ljava/lang/String;

    return-object v0
.end method
