.class public Lkrc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkrb;
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
.method public a()Lkrb;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkrc;->a:Lkrb;

    return-object v0
.end method

.method public a(Lkrb;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkrc;->a:Lkrb;

    .line 23
    return-void
.end method
