.class public Ligj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I
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
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Ligj;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Ligj;->a:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ligj;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Ligj;->c:Z

    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Ligj;->c:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Ligj;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ligj;->b:Ljava/lang/String;

    return-object v0
.end method
