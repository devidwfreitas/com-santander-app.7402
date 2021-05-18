.class public Lktb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private b:Lktd;
    .annotation runtime Leks;
        a = "telephone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lktb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lktb;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Lktd;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lktb;->b:Lktd;

    .line 31
    return-void
.end method

.method public b()Lktd;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lktb;->b:Lktd;

    return-object v0
.end method
