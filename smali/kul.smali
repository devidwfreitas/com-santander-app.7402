.class public Lkul;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Leks;
        a = "enabled"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "answer"
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
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lkul;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lkul;->a:I

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lkul;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lkul;->b:Z

    .line 38
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lkul;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkul;->c:Ljava/lang/String;

    return-object v0
.end method
