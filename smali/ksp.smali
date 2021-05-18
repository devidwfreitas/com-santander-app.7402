.class public Lksp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lksi;
    .annotation runtime Leks;
        a = "answer"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
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
.method public a()Lksi;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lksp;->a:Lksi;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lksp;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Lksi;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lksp;->a:Lksi;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lksp;->b:Ljava/lang/String;

    return-object v0
.end method
