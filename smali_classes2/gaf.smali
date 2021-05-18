.class public Lgaf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lgaf;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lgaf;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lgaf;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lgaf;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lgaf;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lgaf;->c:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lgaf;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgaf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lgaf;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgaf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lgaf;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgaf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lgaf;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgaf;->a:Ljava/lang/String;

    return-object v0
.end method
