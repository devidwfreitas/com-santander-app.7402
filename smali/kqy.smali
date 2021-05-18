.class public Lkqy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Z


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
    .line 33
    iput-object p1, p0, Lkqy;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lkqy;->c:Z

    .line 26
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lkqy;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkqy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lkqy;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkqy;->b:Ljava/lang/String;

    return-object v0
.end method
