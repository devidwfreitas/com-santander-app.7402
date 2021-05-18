.class public Ligk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "proposalId"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statusId"
    .end annotation
.end field

.field private c:I
    .annotation runtime Leks;
        a = "cancellationReasonCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Ligk;->a:I

    .line 25
    iput p2, p0, Ligk;->c:I

    .line 26
    const-string v0, "C"

    iput-object v0, p0, Ligk;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ligk;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Ligk;->a:I

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Ligk;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ligk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Ligk;->c:I

    .line 51
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Ligk;->c:I

    return v0
.end method
