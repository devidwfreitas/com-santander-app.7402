.class public Lkoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Leks;
        a = "hide"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lkoc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lkoc;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lkoc;->c:Z

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkoc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkoc;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lkoc;->c:Z

    return v0
.end method
