.class public Lkug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkub;
    .annotation runtime Leks;
        a = "option"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lkub;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lkug;->a:Lkub;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lkub;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkug;->a:Lkub;

    return-object v0
.end method

.method public a(Lkub;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkug;->a:Lkub;

    .line 23
    return-void
.end method
