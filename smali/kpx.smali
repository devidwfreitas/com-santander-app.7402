.class public Lkpx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "certificateId"
    .end annotation
.end field

.field private b:Lkqa;
    .annotation runtime Leks;
        a = "beneficiary"
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
    .line 20
    iget-object v0, p0, Lkpx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lkpx;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public a(Lkqa;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkpx;->b:Lkqa;

    .line 33
    return-void
.end method

.method public b()Lkqa;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkpx;->b:Lkqa;

    return-object v0
.end method
