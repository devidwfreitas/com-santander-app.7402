.class public Lkqt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkqh;
    .annotation runtime Leks;
        a = "checkingAccount"
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
.method public a()Lkqh;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkqt;->a:Lkqh;

    return-object v0
.end method

.method public a(Lkqh;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkqt;->a:Lkqh;

    .line 23
    return-void
.end method
