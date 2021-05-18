.class public Lkte;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lktf;
    .annotation runtime Leks;
        a = "return"
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
.method public a()Lktf;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkte;->a:Lktf;

    return-object v0
.end method

.method public a(Lktf;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lkte;->a:Lktf;

    .line 21
    return-void
.end method
