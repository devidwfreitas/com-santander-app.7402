.class public Lgyi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lgyi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lgyi;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lgyi;->b:Z

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgyi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lgyi;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lgyi;->b:Z

    return v0
.end method
