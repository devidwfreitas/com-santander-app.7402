.class public Lkus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "info"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Leks;
        a = "hide"
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lkus;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lkus;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lkus;->d:I

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lkus;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lkus;->c:Z

    .line 55
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkus;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lkus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lkus;->c:Z

    return v0
.end method
