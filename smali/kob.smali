.class public Lkob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lkob;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lkob;->a:I

    return v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lkob;->a:I

    .line 23
    return-void
.end method
