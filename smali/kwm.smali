.class public Lkwm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "documentId"
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
    .line 18
    iget v0, p0, Lkwm;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lkwm;->a:I

    .line 23
    return-void
.end method
