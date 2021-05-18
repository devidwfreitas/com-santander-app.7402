.class public Lige;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "quantityProposal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lige;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lige;->a:I

    .line 25
    return-void
.end method
