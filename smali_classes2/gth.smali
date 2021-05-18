.class public Lgth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lgth;->a:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lgth;->b:Ljava/lang/Boolean;

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lgth;->c:Ljava/lang/Boolean;

    .line 16
    const/16 v0, 0xe

    iput v0, p0, Lgth;->d:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgth;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lgth;->b:Ljava/lang/Boolean;

    .line 22
    iput-object p3, p0, Lgth;->c:Ljava/lang/Boolean;

    .line 23
    iput p4, p0, Lgth;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lgth;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lgth;->d:I

    .line 40
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgth;->c:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgth;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgth;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgth;->b:Ljava/lang/Boolean;

    .line 64
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgth;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgth;->b:Ljava/lang/Boolean;

    return-object v0
.end method
